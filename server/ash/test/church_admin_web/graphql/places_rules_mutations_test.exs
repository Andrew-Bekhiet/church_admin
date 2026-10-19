defmodule ChurchAdminWeb.Graphql.PlacesRulesMutationsTest do
  use ChurchAdminWeb.ConnCase, async: false

  import ChurchAdminWeb.PlacesMutationHelpers

  alias ChurchAdmin.Errors.Codes
  alias ChurchAdmin.Places.{Address, Store, Street}
  alias ChurchAdmin.PlacesWorld

  setup do
    build_world!()
  end

  @create_street "mutation($input: CreateStreetInput!) { createStreet(input: $input) { result { id } } }"
  @update_street "mutation($id: ID!, $input: UpdateStreetInput!) { updateStreet(id: $id, input: $input) { result { id } } }"
  @update_area "mutation($id: ID!, $input: UpdateAreaInput!) { updateArea(id: $id, input: $input) { result { id } } }"
  @create_store "mutation($input: CreateStoreInput!) { createStore(input: $input) { result { id address { id houseCode houseNumber } } } }"
  @update_store "mutation($id: ID!, $input: UpdateStoreInput!) { updateStore(id: $id, input: $input) { result { id } } }"

  describe "a street's areas follow its line" do
    test "a new street is linked to the areas its line touches", %{conn: conn, world: world} do
      line = PlacesWorld.line([{31.212, 30.003}, {31.228, 30.003}])

      response =
        run(
          conn,
          @create_street,
          %{"input" => %{"name" => "across", "line" => line}},
          user(world, :read_write)
        )

      id = response["data"]["createStreet"]["result"]["id"]
      assert pair_set(%{id: id}) == MapSet.new([world.records.a1.id, world.records.a2.id])
    end

    test "a street that touches no area and names none is refused and not stored", %{
      conn: conn,
      world: world
    } do
      before = count(Street)
      line = PlacesWorld.line([{40.0, 40.0}, {40.1, 40.0}])

      response =
        run(
          conn,
          @create_street,
          %{"input" => %{"name" => "nowhere", "line" => line}},
          user(world, :read_write)
        )

      assert code(response) == Codes.street_area_required()
      assert count(Street) == before
    end

    test "moving the line re-links the street, and a move away from every area is refused", %{
      conn: conn,
      world: world
    } do
      street = world.records.st_a1
      writer = user(world, :read_write)
      move = &run(conn, @update_street, %{"id" => street.id, "input" => %{"line" => &1}}, writer)

      response = move.(PlacesWorld.line([{31.223, 30.005}, {31.237, 30.005}]))
      assert response["data"]["updateStreet"]["result"]["id"] == street.id
      assert pair_set(street) == MapSet.new([world.records.a2.id])

      refused = move.(PlacesWorld.line([{40.0, 40.0}, {40.1, 40.0}]))
      assert code(refused) == Codes.street_area_required()
      assert pair_set(street) == MapSet.new([world.records.a2.id])
    end
  end

  describe "an area's streets follow its bounds" do
    test "moving the bounds away unlinks the streets with a line and keeps the ones without",
         %{conn: conn, world: world} do
      area = world.records.a1

      assert streets_of_area(area) ==
               MapSet.new([
                 world.records.st1.id,
                 world.records.st_a1.id,
                 world.records.st_cross.id,
                 world.records.st_gone.id
               ])

      response =
        run(
          conn,
          @update_area,
          %{"id" => area.id, "input" => %{"bounds" => PlacesWorld.cell_polygon(6)}},
          user(world, :read_write)
        )

      assert response["data"]["updateArea"]["result"]["id"] == area.id
      assert streets_of_area(area) == MapSet.new([world.records.st1.id])
    end
  end

  describe "a store's address" do
    test "must lie on a street of its area", %{conn: conn, world: world} do
      before = count(Store)
      address = address_input(world, :a2, :st1)

      response =
        run(
          conn,
          @create_store,
          %{"input" => %{"name" => "s", "address" => address}},
          user(world, :read_write)
        )

      assert code(response) == Codes.address_street_outside_area()
      assert count(Store) == before
    end

    test "keeps its legacy house number out of the way of the house code", %{
      conn: conn,
      world: world
    } do
      address = address_input(world, :a1, :st1, %{"houseCode" => "12"})

      response =
        run(
          conn,
          @create_store,
          %{"input" => %{"name" => "s", "address" => address}},
          user(world, :read_write)
        )

      assert %{"houseCode" => "12", "houseNumber" => nil} =
               response["data"]["createStore"]["result"]["address"]

      assert [%{house_code: "12", house_number: nil}] =
               Address
               |> Ash.read!(authorize?: false, page: false)
               |> Enum.filter(&(&1.house_code == "12"))
    end

    test "is not an input when it is the legacy house number", %{conn: conn, world: world} do
      address = address_input(world, :a1, :st1, %{"houseNumber" => 4})

      response =
        run(
          conn,
          @create_store,
          %{"input" => %{"name" => "s", "address" => address}},
          user(world, :read_write)
        )

      assert %{"errors" => [_ | _]} = response
    end
  end

  describe "a store's anchor" do
    test "a store with neither an admin family nor an address is refused and not stored", %{
      conn: conn,
      world: world
    } do
      before = count(Store)

      response =
        run(conn, @create_store, %{"input" => %{"name" => "s"}}, user(world, :read_write))

      assert code(response) == Codes.store_admin_family_or_address_required()
      assert count(Store) == before
    end

    test "the admin family cannot be removed from a store without an address", %{
      conn: conn,
      world: world
    } do
      store = ChurchAdmin.Factory.store!(admin_family_id: world.records.f_svc.id)

      response =
        run(
          conn,
          @update_store,
          %{"id" => store.id, "input" => %{"adminFamilyId" => nil}},
          user(world, :read_write)
        )

      assert code(response) == Codes.store_admin_family_or_address_required()

      assert Ash.get!(Store, store.id, authorize?: false).admin_family_id ==
               world.records.f_svc.id
    end
  end
end
