defmodule ChurchAdminWeb.Graphql.PlacesStoreMutationsTest do
  use ChurchAdminWeb.ConnCase, async: false

  import ChurchAdminWeb.PlacesMutationHelpers

  alias ChurchAdmin.Factory
  alias ChurchAdmin.Places.{Address, Store}

  setup do
    build_world!()
  end

  @create_store """
  mutation($input: CreateStoreInput!) {
    createStore(input: $input) { result { id name adminFamilyId address { id areaId streetId houseCode } } }
  }
  """

  @update_store """
  mutation($id: ID!, $input: UpdateStoreInput!) {
    updateStore(id: $id, input: $input) { result { id name adminFamilyId address { id areaId houseCode specialLandmark } } }
  }
  """

  describe "createStore" do
    test "creates a store with an admin family and an address", %{conn: conn, world: world} do
      input = %{
        "name" => "shop",
        "adminFamilyId" => world.records.f_svc.id,
        "address" => address_input(world, :a1, :st1, %{"houseCode" => "12"})
      }

      response = run(conn, @create_store, %{"input" => input}, user(world, :read_write))

      assert %{"data" => %{"createStore" => %{"result" => result}}} = response
      assert result["adminFamilyId"] == world.records.f_svc.id
      assert %{"areaId" => area_id, "houseCode" => "12"} = result["address"]
      assert area_id == world.records.a1.id
    end

    test "lets an editor of the address's area create the store, and not in another area", %{
      conn: conn,
      world: world
    } do
      editor = user(world, :area_edit)
      before = {count(Store), count(Address)}

      ok =
        run(
          conn,
          @create_store,
          %{"input" => %{"name" => "a", "address" => address_input(world, :a1, :st1)}},
          editor
        )

      assert ok["data"]["createStore"]["result"]["id"]

      other =
        run(
          conn,
          @create_store,
          %{"input" => %{"name" => "b", "address" => address_input(world, :a2, :st_a2)}},
          editor
        )

      assert code(other) == "forbidden"
      assert {count(Store), count(Address)} == {elem(before, 0) + 1, elem(before, 1) + 1}
    end

    test "answers forbidden to a user whose scope does not reach the new store", %{
      conn: conn,
      world: world
    } do
      input = %{"name" => "s", "address" => address_input(world, :a1, :st1)}

      for kind <- [:approved_plain, :area_read, :unapproved] do
        assert code(run(conn, @create_store, %{"input" => input}, user(world, kind))) ==
                 "forbidden"
      end
    end

    test "rejects an admin family the actor cannot read", %{conn: conn, world: world} do
      input = %{
        "name" => "s",
        "adminFamilyId" => world.records.f_svc.id,
        "address" => address_input(world, :a1, :st1)
      }

      response = run(conn, @create_store, %{"input" => input}, user(world, :area_edit))

      assert code(response) == "relation/not-found"
    end

    test "rejects an area, street or district that does not exist", %{conn: conn, world: world} do
      editor = user(world, :read_write)

      for key <- ["areaId", "streetId", "districtId"] do
        address = Map.put(address_input(world, :a1, :st1), key, Ash.UUID.generate())

        response =
          run(conn, @create_store, %{"input" => %{"name" => "s", "address" => address}}, editor)

        assert code(response) == "relation/not-found", "unknown #{key} was accepted"
      end
    end
  end

  describe "updateStore" do
    test "updates the address the store has and creates it for a store without", %{
      conn: conn,
      world: world
    } do
      writer = user(world, :read_write)
      update = &run(conn, @update_store, %{"id" => &1.id, "input" => &2}, writer)
      with_address = world.records.store1
      without_address = Factory.store!(admin_family_id: world.records.f_svc.id)

      changed =
        update.(with_address, %{
          "address" => %{
            "streetId" => world.records.st1.id,
            "specialLandmark" => "near the church"
          }
        })

      address = changed["data"]["updateStore"]["result"]["address"]
      assert address["specialLandmark"] == "near the church"
      assert address["areaId"] == world.records.a1.id

      created =
        update.(without_address, %{
          "address" => address_input(world, :a1, :st1, %{"houseCode" => "7"})
        })

      assert created["data"]["updateStore"]["result"]["address"]["houseCode"] == "7"
    end

    test "leaves the address alone when it is null", %{conn: conn, world: world} do
      store = world.records.store1

      response =
        run(
          conn,
          @update_store,
          %{"id" => store.id, "input" => %{"name" => "renamed", "address" => nil}},
          user(world, :read_write)
        )

      assert response["data"]["updateStore"]["result"]["address"]["areaId"] == world.records.a1.id
    end

    test "lets an editor of the store's area rename it and cannot find a store of another area",
         %{
           conn: conn,
           world: world
         } do
      editor = user(world, :area_edit)

      ok =
        run(
          conn,
          @update_store,
          %{"id" => world.records.store1.id, "input" => %{"name" => "renamed"}},
          editor
        )

      assert ok["data"]["updateStore"]["result"]["name"] == "renamed"

      other =
        run(
          conn,
          @update_store,
          %{"id" => world.records.store2.id, "input" => %{"name" => "renamed"}},
          editor
        )

      assert code(other) == "not_found"
    end

    test "changes the admin family", %{conn: conn, world: world} do
      response =
        run(
          conn,
          @update_store,
          %{
            "id" => world.records.store1.id,
            "input" => %{"adminFamilyId" => world.records.f_own.id}
          },
          user(world, :read_write)
        )

      assert response["data"]["updateStore"]["result"]["adminFamilyId"] == world.records.f_own.id
    end
  end
end
