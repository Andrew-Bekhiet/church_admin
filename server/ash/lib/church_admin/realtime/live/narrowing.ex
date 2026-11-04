defmodule ChurchAdmin.Realtime.Live.Narrowing do
  @moduledoc """
  Decides whether a change can be answered by reading only the rows it names
  instead of the whole window, and what those rows mean.

  `plan/1` narrows a keyed window when every touched row it reads names ids
  of the list's own type. Anything else needs the window: entities, unkeyed
  rows, a document without `$filter`, a list whose filter has no `id`, a
  group touched through a table that names no root id, a group depending on
  everything, too many candidates.

  Narrowing assumes a row's JSON and visibility follow from that row alone.
  `rows_stand_alone?/2` proves it from a window run: no statement may reach
  the list's table except as its main `FROM`, once. A view that reads the table
  (`dataCheck` reads a person's whole family), a scope that joins it to
  itself, or a nested selection of the row type each let one row's change
  reach another, which no candidate would name.

  `classify/4` applies the table below. The narrowed `count` reflects the
  narrowed filter, so it is never used. A patch cannot change membership, so
  the stored count stands. Only a window that holds the whole list can take
  a leave: it knows the new count, and has no next row to bring in. In a
  window that does not, an unheld candidate gone may have just left the
  count, which only the window can tell.

  | Candidate | Meaning |
  | --- | --- |
  | held, same keyset | patch the row |
  | held, changed keyset | window |
  | held, not returned or deleted | leave, or window unless all rows are held |
  | unheld, returned | window |
  | unheld, not returned | ignore, or window if counted unless all rows are held |
  """

  alias ChurchAdmin.Realtime.Live.Document
  alias ChurchAdmin.Realtime.Live.GroupDependencies
  alias ChurchAdmin.Realtime.Live.Result
  alias ChurchAdmin.Realtime.Live.StatementDependencies
  alias ChurchAdmin.Realtime.TypeMap
  alias ChurchAdminWeb.Graphql.Pipeline

  @max_candidates 100

  @type candidates :: %{ids: MapSet.t(String.t()), to_query: [String.t()]}

  @spec max_candidates() :: pos_integer()
  def max_candidates, do: @max_candidates

  @spec plan(map()) :: :window | {:narrow, candidates()}
  def plan(%{window_required?: true}), do: :window
  def plan(%{rows_stand_alone?: false}), do: :window
  def plan(%{window: nil}), do: :window
  def plan(%{result: nil}), do: :window
  def plan(%{dependencies: :everything}), do: :window

  def plan(%{document: %Document{} = document, result: %Result{} = result} = input) do
    row_type = Pipeline.list_row_type(document.root_field)

    if keyed?(result) and MapSet.member?(document.variables, "filter") and row_type != nil and
         Pipeline.list_filters_by_id?(document.root_field) and
         touched_only_through?(input, row_type),
       do: candidates(input.changes, row_type),
       else: :window
  end

  @spec rows_stand_alone?(Document.t(), [String.t()]) :: boolean()
  def rows_stand_alone?(%Document{} = document, statements) do
    row_type = Pipeline.list_row_type(document.root_field)

    with true <- row_type != nil,
         false <- Pipeline.selects_type_inside_rows?(document.parsed, document.root_field),
         {_schema, table} = relation <- TypeMap.relation_of_type(row_type) do
      statements
      |> Enum.uniq()
      |> Enum.all?(&reads_table_only_as_the_list?(&1, table, relation))
    else
      _not_provably_alone -> false
    end
  end

  defp reads_table_only_as_the_list?(statement, table, relation) do
    case StatementDependencies.for_sql(statement) do
      {:ok, %{^relation => _columns}} -> selects_from_table_once?(statement, table)
      {:ok, _reads_other_tables} -> true
      {:error, _reason} -> false
    end
  end

  defp selects_from_table_once?(statement, table) do
    quoted = ~s("#{table}")

    length(String.split(statement, quoted)) == 2 and
      statement |> String.split(" FROM ", parts: 2) |> List.last() |> main_table_is?(quoted)
  end

  defp main_table_is?(after_from, quoted) do
    String.starts_with?(after_from, quoted) or
      after_from =~ ~r/^"[^"]+"\.#{Regex.escape(quoted)}/
  end

  @spec filter(map() | nil, [String.t()]) :: map()
  def filter(client_filter, ids) when client_filter in [nil, %{}],
    do: %{"id" => %{"in" => ids}}

  def filter(client_filter, ids),
    do: %{"and" => [client_filter, %{"id" => %{"in" => ids}}]}

  @spec classify(Result.t(), map(), MapSet.t(String.t()), [map()]) ::
          :window | {:ok, Result.t()}
  def classify(%Result{} = stored, window, candidate_ids, returned_rows) do
    held = Map.new(stored.rows, fn {id, keyset, _row} -> {id, keyset} end)
    returned = Map.new(returned_rows, &{&1["id"], &1})
    {held_candidates, unheld_candidates} = Enum.split_with(candidate_ids, &is_map_key(held, &1))
    leaving = Enum.reject(held_candidates, &is_map_key(returned, &1))
    whole_list? = Result.holds_whole_list?(stored, window)

    cond do
      Enum.any?(returned_rows, &(Map.get(held, &1["id"]) != &1["keyset"])) -> :window
      leaving != [] and not whole_list? -> :window
      unheld_candidates != [] and Result.counted?(stored) and not whole_list? -> :window
      true -> {:ok, Result.replace_rows(stored, patched_rows(stored, returned, leaving), window)}
    end
  end

  defp patched_rows(stored, returned, leaving) do
    for {id, keyset, row} <- stored.rows, id not in leaving do
      {id, keyset, Map.get(returned, id, row)}
    end
  end

  defp keyed?(%Result{rows: nil}), do: false

  defp keyed?(%Result{rows: rows}),
    do: Enum.all?(rows, fn {_id, keyset, _row} -> is_binary(keyset) end)

  defp touched_only_through?(%{touched: touched, dependencies: dependencies}, row_type) do
    Enum.all?(touched, fn row ->
      row_type in Map.get(row, :id_types, []) or
        not GroupDependencies.touched?(dependencies, [row])
    end)
  end

  defp candidates(changes, row_type) do
    of_type = for %{type: ^row_type} = change <- changes, do: change
    ids = of_type |> Enum.map(& &1.id) |> Enum.uniq()

    if ids == [] or nil in ids or length(ids) > @max_candidates do
      :window
    else
      {:narrow, %{ids: MapSet.new(ids), to_query: ids_still_there(of_type)}}
    end
  end

  defp ids_still_there(changes) do
    changes
    |> Enum.reject(&(&1.op == "delete"))
    |> Enum.map(& &1.id)
    |> Enum.uniq()
  end
end
