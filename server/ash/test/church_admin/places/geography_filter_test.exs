defmodule ChurchAdmin.Places.GeographyFilterTest do
  use ChurchAdmin.AuthzCase, async: false

  alias ChurchAdmin.Places.{Address, Area, Store, Street}
  alias ChurchAdmin.PlacesWorld

  setup %{world: world}, do: {:ok, world: PlacesWorld.extend!(world)}

  @cell_0 PlacesWorld.cell_polygon(0)
  @cell_1 PlacesWorld.cell_polygon(1)
  @both_cells PlacesWorld.polygon([
                {31.2, 30.0},
                {31.24, 30.0},
                {31.24, 30.02},
                {31.2, 30.02},
                {31.2, 30.0}
              ])
  @corner_of_cell_0 PlacesWorld.polygon([
                      {31.201, 30.001},
                      {31.202, 30.001},
                      {31.202, 30.002},
                      {31.201, 30.002},
                      {31.201, 30.001}
                    ])
  @elsewhere PlacesWorld.polygon([
               {32.0, 30.0},
               {32.1, 30.0},
               {32.1, 30.1},
               {32.0, 30.1},
               {32.0, 30.0}
             ])

  # st_a1 runs along latitude 30.005 from 31.203 to 31.217, so this point is
  # about 55 m from it; st_cross is about 540 m away and st_a2 about 1250 m.
  @near_street PlacesWorld.point({31.21, 30.0055})

  defp names_where(world, query, kind \\ :read_all) do
    query |> Ash.read!(actor: actor(world, kind), page: false) |> names(world)
  end

  # {polygon, addresses, stores, streets, areas}; cells 0 and 1 share an
  # edge, so a polygon covering one intersects the other area's bounds.
  @within_polygon [
    {:cell_0, @cell_0, [:addr_area, :addr_store], [:store1], [:st_a1, :st_cross], [:a1, :a2]},
    {:cell_1, @cell_1, [:addr_own, :addr_store2], [:store2], [:st_a2, :st_cross], [:a1, :a2]},
    {:both_cells, @both_cells, [:addr_area, :addr_store, :addr_own, :addr_store2],
     [:store1, :store2], [:st_a1, :st_a2, :st_cross], [:a1, :a2]},
    {:corner_of_cell_0, @corner_of_cell_0, [], [], [], [:a1]},
    {:elsewhere, @elsewhere, [], [], [], []}
  ]

  for {label, polygon, addresses, stores, streets, areas} <- @within_polygon do
    @polygon polygon
    @addresses MapSet.new(addresses)
    @stores MapSet.new(stores)
    @streets MapSet.new(streets)
    @areas MapSet.new(areas)

    test "withinPolygon #{label} selects the places that intersect it", %{world: world} do
      polygon = @polygon

      assert names_where(world, Ash.Query.filter(Address, within_polygon(polygon: ^polygon))) ==
               @addresses

      assert names_where(world, Ash.Query.filter(Store, within_polygon(polygon: ^polygon))) ==
               @stores

      assert names_where(world, Ash.Query.filter(Street, within_polygon(polygon: ^polygon))) ==
               @streets

      assert names_where(world, Ash.Query.filter(Area, within_polygon(polygon: ^polygon))) ==
               @areas
    end
  end

  test "withinPolygon is false, not null, for an address without a geolocation", %{world: world} do
    polygon = @cell_0

    assert names_where(
             world,
             Ash.Query.filter(Address, within_polygon(polygon: ^polygon) == false)
           ) ==
             MapSet.new([:addr_own, :addr_store2, :addr_unlocated])
  end

  test "withinPolygon only sees what the actor may read", %{world: world} do
    polygon = @both_cells

    assert names_where(
             world,
             Ash.Query.filter(Address, within_polygon(polygon: ^polygon)),
             :area_read
           ) == MapSet.new([:addr_area, :addr_store])

    assert names_where(
             world,
             Ash.Query.filter(Store, within_polygon(polygon: ^polygon)),
             :area_read
           ) ==
             MapSet.new([:store1])
  end

  @contains_point [
    {:inside_cell_0, PlacesWorld.point_in_cell(0, 0.004), [:a1]},
    {:inside_cell_1, PlacesWorld.point_in_cell(1, 0.004), [:a2]},
    {:on_the_shared_edge, PlacesWorld.point({31.22, 30.01}), [:a1, :a2]},
    {:outside_every_area, PlacesWorld.point({32.0, 30.0}), []}
  ]

  for {label, point, areas} <- @contains_point do
    @point point
    @containing MapSet.new(areas)

    test "containsPoint #{label}", %{world: world} do
      point = @point

      assert names_where(world, Ash.Query.filter(Area, contains_point(point: ^point))) ==
               @containing
    end
  end

  @within_distance [
    {100, [:st_a1]},
    {1_000, [:st_a1, :st_cross]},
    {3_000, [:st_a1, :st_a2, :st_cross]},
    {10, []}
  ]

  for {meters, streets} <- @within_distance do
    @meters meters
    @near MapSet.new(streets)

    test "withinDistance #{meters} m from a point beside st_a1", %{world: world} do
      from = @near_street
      meters = @meters

      assert names_where(
               world,
               Ash.Query.filter(Street, within_distance(from: ^from, meters: ^meters))
             ) == @near
    end
  end
end
