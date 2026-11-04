defmodule ChurchAdmin.Realtime.Live.Result do
  @moduledoc """
  A group's stored result. `chunk_hashes` are the `ResultHash`es of the
  chunks as HTTP would answer them. An entity keeps its data whole in `data`;
  a list keeps its page without `results` in `data` and the rows in order in
  `rows`, as `{id, keyset, row}`.

  A list whose rows do not all have an id cannot be sent as a delta, so it
  is kept whole like an entity.
  """

  @enforce_keys [:chunk_hashes, :data]
  defstruct [:chunk_hashes, :data, :root, :rows]

  @type chunk :: %{hash: String.t(), data: map()}
  @type row :: {id :: String.t(), keyset :: String.t() | nil, row :: map()}
  @type t :: %__MODULE__{
          chunk_hashes: [String.t()],
          data: map(),
          root: String.t() | nil,
          rows: [row()] | nil
        }

  @spec from_entity(chunk()) :: {:ok, t()}
  def from_entity(%{hash: hash, data: data}),
    do: {:ok, %__MODULE__{chunk_hashes: [hash], data: data}}

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
  def data(%__MODULE__{rows: nil, data: data}), do: data

  def data(%__MODULE__{rows: rows, data: data, root: root}) do
    results = Enum.map(rows, fn {_id, _keyset, row} -> row end)
    put_in(data, [root, "results"], results)
  end

  @spec ids(t()) :: [String.t()]
  def ids(%__MODULE__{rows: nil}), do: []
  def ids(%__MODULE__{rows: rows}), do: Enum.map(rows, &elem(&1, 0))

  @spec list?(t()) :: boolean()
  def list?(%__MODULE__{rows: rows}), do: rows != nil

  defp list_root(data) do
    case for {root, %{"results" => results}} <- data, is_list(results), do: root do
      [root] when map_size(data) == 1 -> {:ok, root}
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
        data: put_in(last_data, [root, "results"], []),
        rows: Enum.map(results, &{&1["id"], &1["keyset"], &1})
      }
    else
      %__MODULE__{chunk_hashes: chunk_hashes, data: put_in(last_data, [root, "results"], results)}
    end
  end
end
