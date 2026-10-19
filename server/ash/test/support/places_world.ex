defmodule ChurchAdmin.PlacesWorld do
  @moduledoc """
  `ChurchAdmin.AuthzWorld` plus geometry on the seed generator's fixed grid
  (origin 31.2, 30.0; cells 0.02 degrees wide), so geographic filters have
  known answers, and the `areas_streets` links the geography implies:

    * area `a1` is cell 0 (longitude 31.20-31.22), `a2` is cell 1 (31.22-31.24);
      `a_gone` is a soft-deleted area on cell 2
    * streets run east-west: `st_a1` inside cell 0 at latitude 30.005,
      `st_a2` inside cell 1 at the same latitude, `st_cross` from cell 0 into
      cell 1 at latitude 30.010; `st1` has no line, `st_gone` is soft-deleted
      inside cell 0
    * addresses: `addr_area` and `addr_store` stand in cell 0, `addr_own` and
      `addr_store2` (store `store2`, area `a2`) in cell 1, `addr_unlocated` has
      no geolocation; `store_gone` is soft-deleted
    * districts `d1` and `d2`
  """

  alias ChurchAdmin.{DataCase, Factory}
  alias ChurchAdmin.Places.{AreasStreetsSync, District, Street}

  @cell_size 0.02
  @origin_longitude 31.2
  @origin_latitude 30.0

  def cell_polygon(index) do
    west = @origin_longitude + index * @cell_size
    east = west + @cell_size
    south = @origin_latitude
    north = south + @cell_size

    polygon([{west, south}, {east, south}, {east, north}, {west, north}, {west, south}])
  end

  def polygon(ring),
    do: %{"type" => "Polygon", "coordinates" => [Enum.map(ring, &Tuple.to_list/1)]}

  def line(points),
    do: %{"type" => "LineString", "coordinates" => Enum.map(points, &Tuple.to_list/1)}

  def point({longitude, latitude}),
    do: %{"type" => "Point", "coordinates" => [longitude, latitude]}

  @doc "A point inside cell `index`, `offset` degrees east and north of its south-west corner."
  def point_in_cell(index, offset),
    do: point({@origin_longitude + index * @cell_size + offset, @origin_latitude + offset})

  def extend!(world) do
    DataCase.set_system_db_session()
    %{records: records} = world

    a1 = Ash.Seed.update!(records.a1, %{bounds: cell_polygon(0)})
    a2 = Ash.Seed.update!(records.a2, %{bounds: cell_polygon(1)})
    a_gone = Factory.area!(bounds: cell_polygon(2), deleted_at: Factory.deleted_at())

    streets = %{
      st_a1: street!(line([{31.203, 30.005}, {31.217, 30.005}])),
      st_a2: street!(line([{31.223, 30.005}, {31.237, 30.005}])),
      st_cross: street!(line([{31.212, 30.010}, {31.228, 30.010}])),
      st_gone:
        street!(line([{31.204, 30.012}, {31.216, 30.012}]), deleted_at: Factory.deleted_at())
    }

    store2 = Factory.store!()
    store_gone = Factory.store!(deleted_at: Factory.deleted_at())

    addresses = %{
      addr_area: Ash.Seed.update!(records.addr_area, %{geolocation: point_in_cell(0, 0.004)}),
      addr_store: Ash.Seed.update!(records.addr_store, %{geolocation: point_in_cell(0, 0.012)}),
      addr_own: Ash.Seed.update!(records.addr_own, %{geolocation: point_in_cell(1, 0.008)}),
      addr_store2:
        Factory.address!(
          store_id: store2.id,
          area_id: a2.id,
          geolocation: point_in_cell(1, 0.014)
        ),
      addr_unlocated: Factory.address!(family_id: records.f_misc.id, area_id: a2.id)
    }

    districts = %{d1: district!("district 1"), d2: district!("district 2")}

    for area <- [a1, a2, a_gone], do: AreasStreetsSync.link_area(area.id)

    new_records =
      %{a1: a1, a2: a2, a_gone: a_gone, store2: store2, store_gone: store_gone}
      |> Map.merge(streets)
      |> Map.merge(addresses)
      |> Map.merge(districts)

    %{world | records: Map.merge(records, new_records)}
  end

  defp street!(line, attrs \\ []) do
    DataCase.set_system_db_session()

    Ash.Seed.seed!(
      Street,
      Map.merge(
        %{name: "street #{System.unique_integer([:positive])}", line: line},
        Map.new(attrs)
      )
    )
  end

  defp district!(name) do
    DataCase.set_system_db_session()
    Ash.Seed.seed!(District, %{name: name})
  end
end
