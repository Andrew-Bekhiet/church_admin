defmodule ChurchAdminWeb.Graphql.PlacesQueriesTest do
  use ChurchAdminWeb.ConnCase, async: false

  alias ChurchAdmin.{AuthzWorld, FirebaseTokens, PlacesWorld}

  setup do
    {:ok, world: PlacesWorld.extend!(AuthzWorld.build!())}
  end

  defp run(conn, document, variables \\ %{}, kind \\ nil, world \\ nil) do
    conn =
      case kind do
        nil ->
          conn

        kind ->
          claims = FirebaseTokens.valid_claims(%{"x-hasura-user-id" => world.users[kind].uid})
          put_req_header(conn, "authorization", "Bearer " <> FirebaseTokens.unsigned(claims))
      end

    conn
    |> post("/gql", %{"query" => document, "variables" => variables})
    |> json_response(200)
  end

  defp ids(page), do: page |> Map.fetch!("results") |> MapSet.new(& &1["id"])
  defp id_set(world, names), do: MapSet.new(names, &Map.fetch!(world.records, &1).id)

  test "an anonymous request reads empty pages of every place", %{conn: conn} do
    document = """
    { areas { count } streets { count } stores { count } districts { count }
      areaStreets { count } addresses { count } }
    """

    response = run(conn, document)

    refute Map.has_key?(response, "errors")

    assert response["data"] ==
             Map.new(
               ~w(areas streets stores districts areaStreets addresses),
               &{&1, %{"count" => 0}}
             )
  end

  test "a scoped user reads its places with userCanEdit and their links", %{
    conn: conn,
    world: world
  } do
    document = """
    {
      areas(sort: [{field: NAME}]) {
        count
        results { id name userCanEdit bounds streets { id } areaStreets { streetId } }
      }
      streets { count results { id userCanEdit line areas { id } } }
      stores { count results { id userCanEdit address { id } } }
      districts { count results { id name } }
      areaStreets { count results { areaId streetId } }
    }
    """

    %{"data" => data} = run(conn, document, %{}, :area_edit, world)

    assert data["areas"]["count"] == 2
    editable = for area <- data["areas"]["results"], area["userCanEdit"], do: area["id"]
    assert editable == [world.records.a1.id]

    area = Enum.find(data["areas"]["results"], &(&1["id"] == world.records.a1.id))
    assert Map.take(area["bounds"], ["type", "coordinates"]) == PlacesWorld.cell_polygon(0)

    assert MapSet.new(area["streets"], & &1["id"]) ==
             id_set(world, [:st1, :st_a1, :st_cross])

    # links stay readable after their street is soft-deleted (areas_streets filter {})
    assert MapSet.new(area["areaStreets"], & &1["streetId"]) ==
             MapSet.put(id_set(world, [:st1, :st_a1, :st_cross]), world.records.st_gone.id)

    assert ids(data["streets"]) == id_set(world, [:st1, :st_a1, :st_a2, :st_cross])
    assert ids(data["stores"]) == id_set(world, [:store1])
    assert ids(data["districts"]) == id_set(world, [:d1, :d2])

    street = Enum.find(data["streets"]["results"], &(&1["id"] == world.records.st_cross.id))
    assert MapSet.new(street["areas"], & &1["id"]) == id_set(world, [:a1, :a2])
    assert street["line"]["type"] == "LineString"

    linked = MapSet.new(data["areaStreets"]["results"], &{&1["areaId"], &1["streetId"]})

    for {area, street} <- [
          {:a1, :st1},
          {:a1, :st_a1},
          {:a1, :st_cross},
          {:a2, :st_cross},
          {:a2, :st_a2}
        ] do
      assert {world.records[area].id, world.records[street].id} in linked
    end
  end

  test "get queries answer null for hidden and deleted records", %{conn: conn, world: world} do
    document = """
    query($area: ID!, $gone: ID!, $store: ID!, $storeGone: ID!, $street: ID!, $district: ID!) {
      area(id: $area) { id }
      gone: area(id: $gone) { id }
      store(id: $store) { id }
      storeGone: store(id: $storeGone) { id }
      street(id: $street) { id }
      district(id: $district) { id }
    }
    """

    %{a1: a1, a_gone: a_gone, store2: store2, store_gone: store_gone, st_a1: st_a1, d1: d1} =
      world.records

    variables = %{
      "area" => a1.id,
      "gone" => a_gone.id,
      "store" => store2.id,
      "storeGone" => store_gone.id,
      "street" => st_a1.id,
      "district" => d1.id
    }

    %{"data" => data} = run(conn, document, variables, :area_read, world)

    assert data == %{
             "area" => %{"id" => a1.id},
             "gone" => nil,
             "store" => nil,
             "storeGone" => nil,
             "street" => %{"id" => st_a1.id},
             "district" => %{"id" => d1.id}
           }
  end

  test "stores sort and read by the names on their address", %{conn: conn, world: world} do
    document = """
    {
      stores(sort: [{field: ADDRESS_AREA_NAME, order: DESC}]) {
        results { id addressAreaName addressStreetName addressDistrictName }
      }
    }
    """

    %{"data" => %{"stores" => %{"results" => results}}} =
      run(conn, document, %{}, :read_all, world)

    %{store1: store1, store2: store2, a1: a1, a2: a2} = world.records
    area_names = %{store1.id => a1.name, store2.id => a2.name}
    expected = results |> Enum.map(& &1["id"]) |> Enum.sort_by(&area_names[&1], :desc)

    assert Enum.map(results, & &1["id"]) == expected
    assert Map.new(results, &{&1["id"], &1["addressAreaName"]}) == area_names

    assert Enum.all?(
             results,
             &(&1["addressStreetName"] == nil and &1["addressDistrictName"] == nil)
           )
  end

  test "an area lists the users with a grant on it as admins", %{conn: conn, world: world} do
    document = "query($id: ID!) { area(id: $id) { admins { id } } }"
    area_id = world.records.a1.id

    %{"data" => %{"area" => %{"admins" => admins}}} =
      run(conn, document, %{"id" => area_id}, :read_all, world)

    assert MapSet.new(admins, & &1["id"]) ==
             MapSet.new([world.users.area_read.uid, world.users.area_edit.uid])

    %{"data" => %{"area" => %{"admins" => hidden}}} =
      run(conn, document, %{"id" => area_id}, :unapproved, world)

    assert hidden == []
  end

  describe "geographic filters in the shape the client sends" do
    defp polygon_filter(polygon),
      do: %{"withinPolygon" => %{"input" => %{"polygon" => polygon}, "eq" => true}}

    test "withinPolygon on addresses, stores, streets and areas", %{conn: conn, world: world} do
      document = """
      query($address: AddressFilterInput, $store: StoreFilterInput,
            $street: StreetFilterInput, $area: AreaFilterInput) {
        addresses(filter: $address) { results { id } }
        stores(filter: $store) { results { id } }
        streets(filter: $street) { results { id } }
        areas(filter: $area) { results { id } }
      }
      """

      filter = polygon_filter(PlacesWorld.cell_polygon(1))

      variables = %{"address" => filter, "store" => filter, "street" => filter, "area" => filter}
      %{"data" => data} = run(conn, document, variables, :read_all, world)

      assert ids(data["addresses"]) == id_set(world, [:addr_own, :addr_store2])
      assert ids(data["stores"]) == id_set(world, [:store2])
      assert ids(data["streets"]) == id_set(world, [:st_a2, :st_cross])
      assert ids(data["areas"]) == id_set(world, [:a1, :a2])
    end

    test "an address filter through its family or store relationship", %{
      conn: conn,
      world: world
    } do
      document = """
      query($filter: StoreFilterInput) { stores(filter: $filter) { results { id } } }
      """

      filter = %{"address" => polygon_filter(PlacesWorld.cell_polygon(0))}
      %{"data" => data} = run(conn, document, %{"filter" => filter}, :read_all, world)

      assert ids(data["stores"]) == id_set(world, [:store1])
    end

    test "a string holding JSON is still accepted for a Json argument", %{
      conn: conn,
      world: world
    } do
      polygon = Jason.encode!(PlacesWorld.cell_polygon(1))

      document = """
      { stores(filter: {address: {withinPolygon: {input: {polygon: #{inspect(polygon)}}, eq: true}}}) {
          results { id }
      } }
      """

      %{"data" => data} = run(conn, document, %{}, :read_all, world)

      assert ids(data["stores"]) == id_set(world, [:store2])
    end

    test "containsPoint on areas", %{conn: conn, world: world} do
      document = """
      query($filter: AreaFilterInput) { areas(filter: $filter) { results { id } } }
      """

      filter = %{
        "containsPoint" => %{
          "input" => %{"point" => PlacesWorld.point_in_cell(1, 0.004)},
          "eq" => true
        }
      }

      %{"data" => data} = run(conn, document, %{"filter" => filter}, :unapproved, world)

      assert ids(data["areas"]) == id_set(world, [:a2])
    end

    test "withinDistance on streets, directly and through an area", %{conn: conn, world: world} do
      document = """
      query($street: StreetFilterInput, $area: AreaFilterInput) {
        streets(filter: $street) { results { id } }
        areas(filter: $area) { results { id } }
      }
      """

      distance = %{
        "withinDistance" => %{
          "input" => %{"from" => PlacesWorld.point({31.21, 30.0055}), "meters" => 100.0},
          "eq" => true
        }
      }

      variables = %{"street" => distance, "area" => %{"areaStreets" => %{"street" => distance}}}
      %{"data" => data} = run(conn, document, variables, :read_all, world)

      assert ids(data["streets"]) == id_set(world, [:st_a1])
      assert ids(data["areas"]) == id_set(world, [:a1])
    end
  end

  test "list queries state their maximum page size", %{conn: conn} do
    document = """
    { __schema { queryType { fields { name args { name description } } } } }
    """

    %{"data" => %{"__schema" => %{"queryType" => %{"fields" => fields}}}} = run(conn, document)

    first_argument = fn root ->
      fields
      |> Enum.find(&(&1["name"] == root))
      |> Map.fetch!("args")
      |> Enum.find(&(&1["name"] == "first"))
    end

    for root <- ~w(areas streets stores districts) do
      assert first_argument.(root)["description"] =~ "Maximum 1000"
    end

    for root <- ~w(addresses areaStreets) do
      assert first_argument.(root)["description"] =~ "Maximum 100"
    end
  end
end
