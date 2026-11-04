defmodule ChurchAdmin.Realtime.Live.DependencyIndex do
  @moduledoc """
  Which groups read which relations, so that a batch needs to look only at
  groups that read one of its tables. Column-level matching stays with
  `ChurchAdmin.Realtime.Live.GroupDependencies`.
  """

  alias ChurchAdmin.Realtime.Broadcaster
  alias ChurchAdmin.Realtime.Live.GroupDependencies

  defstruct by_relation: %{}, reading_everything: MapSet.new()

  @type t :: %__MODULE__{}

  @spec new() :: t()
  def new, do: %__MODULE__{}

  @spec put(t(), term(), GroupDependencies.t() | nil, GroupDependencies.t()) :: t()
  def put(index, key, previous, dependencies) do
    index |> delete(key, previous) |> add(key, dependencies)
  end

  @spec delete(t(), term(), GroupDependencies.t() | nil) :: t()
  def delete(index, _key, nil), do: index

  def delete(index, key, :everything),
    do: %{index | reading_everything: MapSet.delete(index.reading_everything, key)}

  def delete(index, key, dependencies) do
    by_relation =
      Enum.reduce(Map.keys(dependencies), index.by_relation, fn relation, by_relation ->
        keys = by_relation |> Map.get(relation, MapSet.new()) |> MapSet.delete(key)

        if MapSet.size(keys) == 0,
          do: Map.delete(by_relation, relation),
          else: Map.put(by_relation, relation, keys)
      end)

    %{index | by_relation: by_relation}
  end

  @spec groups_touching(t(), [Broadcaster.touched_row()]) :: MapSet.t(term())
  def groups_touching(index, rows) do
    rows
    |> Enum.map(& &1.relation)
    |> Enum.uniq()
    |> Enum.reduce(index.reading_everything, fn relation, keys ->
      MapSet.union(keys, Map.get(index.by_relation, relation, MapSet.new()))
    end)
  end

  defp add(index, key, :everything),
    do: %{index | reading_everything: MapSet.put(index.reading_everything, key)}

  defp add(index, key, dependencies) do
    by_relation =
      Enum.reduce(Map.keys(dependencies), index.by_relation, fn relation, by_relation ->
        Map.update(by_relation, relation, MapSet.new([key]), &MapSet.put(&1, key))
      end)

    %{index | by_relation: by_relation}
  end
end
