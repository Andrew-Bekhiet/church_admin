defmodule ChurchAdmin.Realtime.Live.GroupDependenciesTest do
  use ExUnit.Case, async: true

  alias ChurchAdmin.Realtime.Live.GroupDependencies

  @persons {"public", "persons"}
  @areas {"public", "areas"}

  defp touched(relation, columns, op \\ :update),
    do: %{relation: relation, op: op, columns: columns}

  defp columns(names), do: MapSet.new(names)

  describe "touched?/2" do
    test "a table the group does not read does not touch it" do
      deps = %{@persons => columns(["name"])}

      refute GroupDependencies.touched?(deps, [touched(@areas, :all)])
    end

    test "only columns the group reads touch it" do
      deps = %{@persons => columns(["name"])}

      assert GroupDependencies.touched?(deps, [touched(@persons, columns(["name", "notes"]))])
      refute GroupDependencies.touched?(deps, [touched(@persons, columns(["notes"]))])
    end

    test "a change without a known column list touches a table the group reads" do
      deps = %{@persons => columns(["name"])}

      assert GroupDependencies.touched?(deps, [touched(@persons, :all)])
      assert GroupDependencies.touched?(deps, [touched(@persons, :all, :insert)])
    end

    test "a group reading the whole table is touched by any changed column" do
      deps = %{@persons => :all}

      assert GroupDependencies.touched?(deps, [touched(@persons, columns(["notes"]))])
    end

    test "an update that changed nothing touches nobody" do
      assert %{@persons => :all}
             |> GroupDependencies.touched?([touched(@persons, columns([]))]) == false

      refute GroupDependencies.touched?(:everything, [touched(@persons, columns([]))])
    end

    test "a group that depends on everything is touched by any change" do
      assert GroupDependencies.touched?(:everything, [touched(@areas, columns(["name"]))])
      refute GroupDependencies.touched?(:everything, [])
    end
  end

  describe "merge/2" do
    test "joins column sets" do
      assert GroupDependencies.merge(
               %{@persons => columns(["a"])},
               %{@persons => columns(["b"]), @areas => :all}
             ) == %{@persons => columns(["a", "b"]), @areas => :all}
    end

    test "a whole table and everything win" do
      assert GroupDependencies.merge(%{@persons => columns(["a"])}, %{@persons => :all}) ==
               %{@persons => :all}

      assert GroupDependencies.merge(%{@persons => :all}, :everything) == :everything
      assert GroupDependencies.merge(:everything, %{}) == :everything
    end
  end
end
