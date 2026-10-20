defmodule ChurchAdmin.Authz.Places.PlacesPolicyTest do
  use ChurchAdmin.AuthzCase, async: false

  alias ChurchAdmin.AuthzWorld
  alias ChurchAdmin.Places.{Area, AreaStreet, District, Store, Street}

  setup %{world: world}, do: {:ok, world: ChurchAdmin.PlacesWorld.extend!(world)}

  @unapproved [:unapproved, :unapproved_with_grants]
  @approved AuthzWorld.actor_kinds() -- @unapproved

  @all_areas [:a1, :a2]
  @all_streets [:st1, :st_a1, :st_a2, :st_cross]
  @all_stores [:store1, :store2]

  # Areas, streets and districts are readable by any approved user (Hasura
  # also let unapproved users read them); stores follow the view's store rows:
  # the global read row, or an area grant through the area's addresses.
  @store_readers %{
    read_all: @all_stores,
    read_write: @all_stores,
    manage_users: @all_stores,
    export_all: @all_stores,
    area_read: [:store1],
    area_edit: [:store1]
  }

  @area_editors %{read_write: @all_areas, manage_users: @all_areas, area_edit: [:a1]}

  # areas_streets(a1, st1) is seeded; st_a1 and st_cross lie in a1's cell and
  # st_cross also in a2's, which the baseline trigger records.
  @street_editors %{
    read_write: @all_streets,
    manage_users: @all_streets,
    area_edit: [:st1, :st_a1, :st_cross]
  }

  @store_editors %{read_write: @all_stores, manage_users: @all_stores, area_edit: [:store1]}

  for kind <- [:anonymous | @unapproved ++ @approved] do
    @kind kind
    approved? = kind in @approved

    @areas if approved?, do: MapSet.new(@all_areas), else: MapSet.new()
    @streets if approved?, do: MapSet.new(@all_streets), else: MapSet.new()
    @districts if approved?, do: MapSet.new([:d1, :d2]), else: MapSet.new()
    @stores @store_readers |> Map.get(kind, []) |> MapSet.new()
    @editable_areas @area_editors |> Map.get(kind, []) |> MapSet.new()
    @editable_streets @street_editors |> Map.get(kind, []) |> MapSet.new()
    @editable_stores @store_editors |> Map.get(kind, []) |> MapSet.new()

    test "#{kind} reads the places its scope allows", %{world: world} do
      assert visible(world, Area, @kind) == @areas
      assert visible(world, Street, @kind) == @streets
      assert visible(world, District, @kind) == @districts
      assert visible(world, Store, @kind) == @stores
    end

    test "#{kind} may edit the places its scope allows", %{world: world} do
      assert flagged(world, Area, @kind, :user_can_edit) == @editable_areas
      assert flagged(world, Street, @kind, :user_can_edit) == @editable_streets
      assert flagged(world, Store, @kind, :user_can_edit) == @editable_stores
    end
  end

  test "area-street links are readable by any approved user and by nobody else", %{
    world: world
  } do
    %{a1: a1, st1: st1} = world.records

    linked? = fn kind ->
      AreaStreet
      |> Ash.read!(actor: actor(world, kind), page: false)
      |> Enum.any?(&(&1.area_id == a1.id and &1.street_id == st1.id))
    end

    assert linked?.(:approved_plain)
    assert linked?.(:area_read)
    refute linked?.(:unapproved)
    refute linked?.(:anonymous)
  end
end
