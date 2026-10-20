defmodule ChurchAdmin.Authz.Activity.ActivityPolicyTest do
  use ChurchAdmin.AuthzCase, async: false

  alias ChurchAdmin.Activity.{
    ActivityDay,
    Call,
    Confession,
    Edit,
    Kodas,
    LatestCall,
    LatestConfession,
    LatestEdit,
    LatestFatherVisit,
    LatestKodas,
    LatestVisit,
    Visit
  }

  alias ChurchAdmin.ActivityWorld
  alias ChurchAdmin.Authz.Actor
  alias ChurchAdmin.AuthzWorld

  setup %{world: world}, do: {:ok, world: ActivityWorld.extend!(world)}

  # Rows that point at a person are read with the person's read scope; rows
  # that point at (table, record_id) with the view's history-record scope.
  @person_owned [Confession, Kodas, Call, LatestCall, LatestConfession, LatestKodas]
  @record_keyed [Visit, Edit, LatestEdit, LatestVisit]

  for kind <- [:anonymous | AuthzWorld.actor_kinds()] do
    @kind kind
    @reads_days? kind not in [:anonymous, :unapproved, :unapproved_with_grants]

    test "#{kind} reads the activity rows of the records the permission view grants it",
         %{world: world} do
      readable = readable(world, @kind)

      readable_persons =
        readable |> Enum.filter(&match?({:persons, _}, &1)) |> MapSet.new()

      father_visited = MapSet.intersection(readable, MapSet.new([{:families, :f_area}]))

      expectations =
        @person_owned
        |> Map.new(&{&1, readable_persons})
        |> Map.merge(Map.new(@record_keyed, &{&1, readable}))
        |> Map.put(LatestFatherVisit, father_visited)

      mismatches =
        for {resource, expected} <- expectations,
            actual = pointed_at(world, resource, @kind),
            actual != expected do
          {resource,
           missing: expected |> MapSet.difference(actual) |> Enum.sort(),
           extra: actual |> MapSet.difference(expected) |> Enum.sort()}
        end

      assert mismatches == []
    end

    test "#{kind} reads attendance days only when approved", %{world: world} do
      days =
        ActivityDay
        |> Ash.read!(actor: actor(world, @kind), page: false)
        |> MapSet.new(& &1.day)

      expected = if @reads_days?, do: ActivityWorld.days(), else: []

      assert days == MapSet.new(expected)
    end
  end

  test "the system actor reads every activity row", %{world: world} do
    system = Actor.system()

    for resource <- @person_owned ++ @record_keyed ++ [LatestFatherVisit, ActivityDay] do
      assert Ash.read!(resource, actor: system, page: false) != [],
             "#{inspect(resource)} is empty for the system actor"
    end

    assert length(Ash.read!(Call, actor: system, page: false)) ==
             length(ActivityWorld.person_names()) + 1

    assert world.recorded_by
  end

  test "a person's history stays readable after the person is soft-deleted", %{world: world} do
    assert {:persons, :deleted} in readable(world, :service_open)
    assert {:persons, :deleted} in pointed_at(world, Confession, :service_open)
    assert {:persons, :deleted} in pointed_at(world, Visit, :service_open)
  end

  test "an unapproved user's own user row is the only activity record it reads", %{world: world} do
    assert pointed_at(world, Edit, :unapproved) == MapSet.new([{:users, :unapproved}])
    assert pointed_at(world, Confession, :unapproved) == MapSet.new()
  end

  defp readable(world, kind) do
    case ActivityWorld.readable_targets(kind) do
      :everything -> world.targets |> Map.values() |> MapSet.new()
      targets -> targets
    end
  end

  defp pointed_at(world, resource, kind) do
    resource
    |> Ash.read!(actor: actor(world, kind), page: false)
    |> Enum.flat_map(fn record -> world |> target(record) |> List.wrap() end)
    |> MapSet.new()
  end

  defp target(world, %{person_id: person_id}),
    do: Map.get(world.targets, {"persons", person_id})

  defp target(world, %{table: table, record_id: record_id}),
    do: Map.get(world.targets, {table, record_id})
end
