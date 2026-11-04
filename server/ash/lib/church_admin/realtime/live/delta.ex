defmodule ChurchAdmin.Realtime.Live.Delta do
  @moduledoc """
  What a stored result's change means on the wire. `between/2` compares two
  results once for the whole group; `payload/3` then builds one member's
  payload from that comparison and the ids the member has received.
  """

  alias ChurchAdmin.Realtime.Live.Result

  @opaque comparison ::
            :full
            | %{changed: MapSet.t(String.t()), page: map()}

  @spec full(Result.t()) :: map()
  def full(%Result{} = result), do: %{full: true, data: Result.data(result)}

  @spec between(Result.t(), Result.t()) :: comparison()
  def between(%Result{} = previous, %Result{} = next) do
    if Result.list?(previous) and Result.list?(next) and same_page_shell?(previous, next) do
      %{changed: changed_ids(previous, next), page: page_changes(previous, next)}
    else
      :full
    end
  end

  @spec payload(comparison(), Result.t(), MapSet.t(String.t())) :: map()
  def payload(:full, next, _sent), do: full(next)

  def payload(%{changed: changed, page: page}, next, sent) do
    rows =
      for {id, _keyset, row} <- next.rows,
          MapSet.member?(changed, id) or not MapSet.member?(sent, id),
          do: row

    Map.merge(%{full: false, rows: rows}, page)
  end

  defp same_page_shell?(previous, next), do: shell(previous) == shell(next)

  defp shell(%Result{data: data, root: root}),
    do: Map.update!(data, root, &Map.drop(&1, ~w(count endKeyset)))

  defp changed_ids(previous, next) do
    held = Map.new(previous.rows, fn {id, _keyset, row} -> {id, row} end)

    for {id, _keyset, row} <- next.rows, Map.get(held, id) != row, into: MapSet.new(), do: id
  end

  defp page_changes(previous, next) do
    previous_page = previous.data[previous.root]
    next_page = next.data[next.root]

    %{}
    |> put_when(:order, Result.ids(next), Result.ids(previous) != Result.ids(next))
    |> put_when(:count, next_page["count"], previous_page["count"] != next_page["count"])
    |> put_when(
      :endKeyset,
      next_page["endKeyset"],
      previous_page["endKeyset"] != next_page["endKeyset"]
    )
  end

  defp put_when(map, key, value, true), do: Map.put(map, key, value)
  defp put_when(map, _key, _value, false), do: map
end
