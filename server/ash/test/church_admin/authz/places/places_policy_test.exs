defmodule ChurchAdmin.Authz.Places.PlacesPolicyTest do
  use ChurchAdmin.AuthzCase, async: false

  alias ChurchAdmin.AuthzWorld
  alias ChurchAdmin.Places.{Area, AreaStreet, District, Store, Street}

  setup %{world: world}, do: {:ok, world: ChurchAdmin.PlacesWorld.extend!(world)}

  @signed_in AuthzWorld.actor_kinds()

  @all_areas [:a1, :a2]
  @all_streets [:st1, :st_a1, :st_a2, :st_cross]
  @all_stores [:store1, :store2]

  # Areas, streets and districts are readable by any signed-in user (Hasura
  # filtered only soft-deleted rows); stores follow the view's store rows:
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

  for kind <- [:anonymous | @signed_in] do
    @kind kind
    signed_in? = kind != :anonymous

    @areas if signed_in?, do: MapSet.new(@all_areas), else: MapSet.new()
    @streets if signed_in?, do: MapSet.new(@all_streets), else: MapSet.new()
    @districts if signed_in?, do: MapSet.new([:d1, :d2]), else: MapSet.new()
    @stores MapSet.new(Map.get(@store_readers, kind, []))
    @editable_areas MapSet.new(Map.get(@area_editors, kind, []))
    @editable_streets MapSet.new(Map.get(@street_editors, kind, []))
    @editable_stores MapSet.new(Map.get(@store_editors, kind, []))

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

  test "area-street links are readable by any signed-in user and by nobody else", %{
    world: world
  } do
    %{a1: a1, st1: st1} = world.records

    linked? = fn kind ->
      AreaStreet
      |> Ash.read!(actor: actor(world, kind), page: false)
      |> Enum.any?(&(&1.area_id == a1.id and &1.street_id == st1.id))
    end

    assert linked?.(:unapproved)
    assert linked?.(:area_read)
    refute linked?.(:anonymous)
  end
end
