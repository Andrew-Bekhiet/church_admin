defmodule ChurchAdmin.Realtime.Live.Refresh do
  @moduledoc """
  How an affected group gets its next result: from the rows the batch names
  when `ChurchAdmin.Realtime.Live.Narrowing` can tell what they mean, from
  the whole window otherwise, and always from the window when a narrowed run
  fails.

  Each window run records its statements, so a group's dependencies follow
  what its document actually reads for this viewer, and whether its rows
  stand alone. A narrowed run sees only part of that, so it adds to the
  dependencies and leaves the verdict. A failure either refuses the document
  (the schema, its limits or a policy will answer the same again) or only
  failed the run. Reads emit
  `[:church_admin, :realtime, :live, :run]` with `kind` `:window` or
  `:narrowed`.
  """

  alias ChurchAdmin.Realtime.Broadcaster
  alias ChurchAdmin.Realtime.Live.GroupDependencies
  alias ChurchAdmin.Realtime.Live.Narrowing
  alias ChurchAdmin.Realtime.Live.Result
  alias ChurchAdmin.Realtime.Live.StatementCapture
  alias ChurchAdmin.Realtime.Live.Window
  alias ChurchAdmin.Realtime.TypeMap

  @type input :: %{
          required(:document) => ChurchAdmin.Realtime.Live.Document.t(),
          required(:variables) => map(),
          required(:window) => ChurchAdmin.Realtime.Live.Registration.window() | nil,
          required(:actor) => ChurchAdmin.Authz.Actor.t(),
          required(:stored_hashes) => [String.t()] | nil,
          required(:window_required?) => boolean(),
          required(:result) => Result.t() | nil,
          required(:dependencies) => GroupDependencies.t() | nil,
          required(:rows_stand_alone?) => boolean() | nil,
          required(:touched) => [Broadcaster.touched_row()],
          required(:changes) => [TypeMap.change()]
        }

  @type outcome ::
          {:ok,
           %{
             result: Result.t() | :unchanged,
             dependencies: GroupDependencies.t(),
             rows_stand_alone?: boolean()
           }}
          | {:error, failure()}

  @type failure :: {:document_refused, term()} | {:run_failed, term()}

  @failed_on_our_side "something_went_wrong"

  @spec run(input()) :: outcome()
  def run(input) do
    {fetched, statements} = StatementCapture.capture(fn -> fetch(input) end)

    with {kind, {:ok, result}} <- fetched do
      {:ok,
       %{
         result: unless_stored(result, input.stored_hashes),
         dependencies: dependencies_after(kind, input, statements),
         rows_stand_alone?: rows_stand_alone_after(kind, input, statements)
       }}
    else
      {_kind, {:error, errors}} -> {:error, failure(errors)}
    end
  end

  defp failure(errors) when is_list(errors) do
    if Enum.all?(errors, &refuses_the_document?/1),
      do: {:document_refused, errors},
      else: {:run_failed, errors}
  end

  defp failure(:not_a_list), do: {:document_refused, :not_a_list}

  defp refuses_the_document?(%{extensions: %{code: code}}), do: code != @failed_on_our_side
  defp refuses_the_document?(_no_code), do: false

  defp fetch(input) do
    case Narrowing.plan(input) do
      {:narrow, candidates} -> fetch_narrowed_or_window(input, candidates)
      :window -> fetch_window(input)
    end
  end

  defp fetch_window(input) do
    announce_run(input, :window)
    {:window, Window.fetch(input)}
  end

  defp fetch_narrowed_or_window(input, candidates) do
    announce_run(input, :narrowed)

    with {:ok, rows} <- Window.fetch_rows(input, candidates.to_query),
         {:ok, result} <-
           Narrowing.patch_or_window(input.result, input.window, candidates.ids, rows) do
      {:narrowed, {:ok, result}}
    else
      _needs_the_window -> fetch_window(input)
    end
  end

  defp announce_run(input, kind) do
    :telemetry.execute(
      [:church_admin, :realtime, :live, :run],
      %{count: 1},
      %{operation_name: input.document.operation_name, kind: kind}
    )
  end

  defp dependencies_after(:window, _input, statements),
    do: GroupDependencies.of_statements(statements)

  defp dependencies_after(:narrowed, input, statements) do
    GroupDependencies.merge(input.dependencies, GroupDependencies.of_statements(statements))
  end

  defp rows_stand_alone_after(:window, %{window: nil}, _statements), do: false

  defp rows_stand_alone_after(:window, input, statements),
    do: Narrowing.rows_stand_alone?(input.document, statements)

  defp rows_stand_alone_after(:narrowed, input, _statements), do: input.rows_stand_alone?

  defp unless_stored(%Result{chunk_hashes: hashes}, hashes), do: :unchanged
  defp unless_stored(result, _stored_hashes), do: result
end
