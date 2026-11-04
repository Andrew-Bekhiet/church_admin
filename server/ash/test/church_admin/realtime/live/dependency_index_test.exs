defmodule ChurchAdmin.Realtime.Live.DependencyIndexTest do
  use ExUnit.Case, async: true

  alias ChurchAdmin.Realtime.Live.DependencyIndex

  @persons {"public", "persons"}
  @areas {"public", "areas"}
  @readers_of_persons %{@persons => :all}
  @readers_of_areas %{@areas => :all}

  defp rows(relation), do: [%{relation: relation, op: :update, columns: :all}]

  test "finds the groups that read a touched table" do
    index =
      DependencyIndex.new()
      |> DependencyIndex.put(:a, nil, @readers_of_persons)
      |> DependencyIndex.put(:b, nil, @readers_of_areas)

    assert DependencyIndex.groups_touching(index, rows(@persons)) == MapSet.new([:a])
  end

  test "groups that depend on everything are always found" do
    index = DependencyIndex.put(DependencyIndex.new(), :a, nil, :everything)

    assert DependencyIndex.groups_touching(index, rows(@areas)) == MapSet.new([:a])
  end

  test "new dependencies replace the group's old ones" do
    index =
      DependencyIndex.new()
      |> DependencyIndex.put(:a, nil, @readers_of_persons)
      |> DependencyIndex.put(:a, @readers_of_persons, @readers_of_areas)

    assert DependencyIndex.groups_touching(index, rows(@persons)) == MapSet.new()
    assert DependencyIndex.groups_touching(index, rows(@areas)) == MapSet.new([:a])
  end

  test "a dropped group is forgotten" do
    index =
      DependencyIndex.new()
      |> DependencyIndex.put(:a, nil, @readers_of_persons)
      |> DependencyIndex.put(:b, nil, :everything)
      |> DependencyIndex.delete(:a, @readers_of_persons)
      |> DependencyIndex.delete(:b, :everything)

    assert index == DependencyIndex.new()
  end
end
