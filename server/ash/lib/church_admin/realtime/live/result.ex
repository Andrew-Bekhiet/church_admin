defmodule ChurchAdmin.Realtime.Live.Result do
  @moduledoc """
  A group's stored result. `chunk_hashes` are the `ResultHash`es of the
  chunks as HTTP would answer them. An entity keeps its data whole in
  `data_without_rows`; a list keeps its page without `results` there and the
  rows in order in `rows`, as `{id, keyset, row}`.

  A list whose rows do not all have an id cannot be sent as a delta, so it
  is kept whole like an entity.
  """

  alias ChurchAdmin.Realtime.Live.ResultHash

  @enforce_keys [:chunk_hashes, :data_without_rows]
  defstruct [:chunk_hashes, :data_without_rows, :root, :rows]

  @type chunk :: %{hash: String.t(), data: map()}
  @type row :: {id :: String.t(), keyset :: String.t() | nil, row :: map()}
  @type t :: %__MODULE__{
          chunk_hashes: [String.t()],
          data_without_rows: map(),
          root: String.t() | nil,
          rows: [row()] | nil
        }

  @spec from_entity(chunk()) :: {:ok, t()}
  def from_entity(%{hash: hash, data: data}),
    do: {:ok, %__MODULE__{chunk_hashes: [hash], data_without_rows: data}}

  @spec from_chunks([chunk(), ...]) :: {:ok, t()} | {:error, :not_a_list}
  def from_chunks(chunks) do
    with {:ok, root} <- chunks |> List.last() |> Map.fetch!(:data) |> list_root() do
      results = Enum.flat_map(chunks, &get_in(&1, [:data, root, "results"]))
      {:ok, build(chunks, root, results)}
    end
  end

  @spec page_of(chunk()) :: {:ok, map()} | {:error, :not_a_list}
  def page_of(%{data: data}) do
    with {:ok, root} <- list_root(data), do: {:ok, data[root]}
  end

  @spec data(t()) :: map()
  def data(%__MODULE__{rows: nil, data_without_rows: data}), do: data

  def data(%__MODULE__{rows: rows, data_without_rows: data, root: root}) do
    results = Enum.map(rows, fn {_id, _keyset, row} -> row end)
    put_in(data, [root, "results"], results)
  end

  @spec ids(t()) :: [String.t()]
  def ids(%__MODULE__{rows: nil}), do: []
  def ids(%__MODULE__{rows: rows}), do: Enum.map(rows, &elem(&1, 0))

  @spec keeps_rows?(t()) :: boolean()
  def keeps_rows?(%__MODULE__{rows: rows}), do: rows != nil

  @spec counted?(t()) :: boolean()
  def counted?(%__MODULE__{data_without_rows: data, root: root}),
    do: is_integer(data[root]["count"])

  @doc "Whether the rows are all there is: a short window, or as many as the count."
  @spec holds_whole_list?(t(), %{rows: pos_integer()}) :: boolean()
  def holds_whole_list?(%__MODULE__{rows: rows} = result, %{rows: window_rows}) do
    length(rows) < window_rows or result.data_without_rows[result.root]["count"] == length(rows)
  end

  @doc """
  The result with other rows of a known list, its count following the rows
  that left, and the chunks and hashes HTTP would answer for them.
  """
  @spec replace_rows(t(), [row()], %{rows: pos_integer(), chunk: pos_integer()}) :: t()
  def replace_rows(%__MODULE__{root: root} = result, rows, window) do
    left = length(result.rows) - length(rows)
    data = result.data_without_rows
    page = data[root] |> update_when_present("count", &(&1 - left))
    pages = rows |> chunks(window.rows, window.chunk) |> Enum.map(&page_of_rows(page, &1))

    %{
      result
      | rows: rows,
        data_without_rows: %{data | root => %{List.last(pages) | "results" => []}},
        chunk_hashes: Enum.map(pages, &ResultHash.of(%{data | root => &1}))
    }
  end

  defp update_when_present(page, key, update) do
    case page do
      %{^key => value} when is_integer(value) -> %{page | key => update.(value)}
      _absent_or_null -> page
    end
  end

  defp chunks(rows, remaining, chunk_size) do
    first = min(remaining, chunk_size)
    {taken, rest} = Enum.split(rows, first)

    if length(taken) == first and remaining > first,
      do: [taken | chunks(rest, remaining - first, chunk_size)],
      else: [taken]
  end

  defp page_of_rows(page, rows) do
    page
    |> Map.put("results", Enum.map(rows, &elem(&1, 2)))
    |> update_end_keyset(List.last(rows))
  end

  defp update_end_keyset(%{"endKeyset" => _end_keyset} = page, nil),
    do: %{page | "endKeyset" => nil}

  defp update_end_keyset(%{"endKeyset" => _end_keyset} = page, {_id, keyset, _row}),
    do: %{page | "endKeyset" => keyset}

  defp update_end_keyset(page, _last_row), do: page

  defp list_root(data) do
    selects_nothing_else? = data |> Map.delete("__typename") |> map_size() == 1

    case for {root, %{"results" => results}} <- data, is_list(results), do: root do
      [root] when selects_nothing_else? -> {:ok, root}
      _not_one_page -> {:error, :not_a_list}
    end
  end

  defp build(chunks, root, results) do
    chunk_hashes = Enum.map(chunks, & &1.hash)
    last_data = List.last(chunks).data

    if Enum.all?(results, &is_binary(&1["id"])) do
      %__MODULE__{
        chunk_hashes: chunk_hashes,
        root: root,
        data_without_rows: put_in(last_data, [root, "results"], []),
        rows: Enum.map(results, &{&1["id"], &1["keyset"], &1})
      }
    else
      %__MODULE__{
        chunk_hashes: chunk_hashes,
        data_without_rows: put_in(last_data, [root, "results"], results)
      }
    end
  end
end
