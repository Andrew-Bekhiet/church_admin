defmodule ChurchAdminWeb.Graphql.PlacesMutationsTest do
  use ChurchAdminWeb.ConnCase, async: false

  alias ChurchAdmin.Activity.Visit
  alias ChurchAdmin.Places.{Area, AreaStreet, Address, Store, Street}
  alias ChurchAdmin.{AuthzWorld, Factory, FirebaseTokens, PlacesWorld}

  require Ash.Query

  setup do
    ChurchAdmin.Repo.query!(
      "insert into auth.permissions (name) values ('deleteData') on conflict do nothing"
    )

    world = PlacesWorld.extend!(AuthzWorld.build!())

    unapproved_writer = Factory.user!()
    Factory.permissions!(unapproved_writer, ["readAllData", "writeAllData"])

    {:ok, world: world, unapproved_writer: unapproved_writer}
  end

  defp run(conn, document, variables, user) do
    conn
    |> authorize(user)
    |> post("/gql", %{"query" => document, "variables" => variables})
    |> json_response(200)
  end

  defp authorize(conn, nil), do: conn

  defp authorize(conn, user) do
    claims = FirebaseTokens.valid_claims(%{"x-hasura-user-id" => user.uid})
    put_req_header(conn, "authorization", "Bearer " <> FirebaseTokens.unsigned(claims))
  end

  defp user(world, kind), do: world.users[kind]

  defp code(response), do: get_in(response, ["errors", Access.at(0), "extensions", "code"])

  defp pair_set(%{id: street_id}) do
    AreaStreet
    |> Ash.Query.filter(street_id == ^street_id)
    |> Ash.read!(authorize?: false, page: false)
    |> MapSet.new(& &1.area_id)
  end

  defp visits(table, record_id) do
    Visit
    |> Ash.Query.filter(table == ^table and record_id == ^record_id)
    |> Ash.read!(authorize?: false, page: false)
  end

  defp count(resource), do: resource |> Ash.read!(authorize?: false, page: false) |> length()

  @create_area """
  mutation($input: CreateAreaInput!) {
    createArea(input: $input) { result { id name color userCanEdit } }
  }
  """

  @update_area """
  mutation($id: ID!, $input: UpdateAreaInput!) {
    updateArea(id: $id, input: $input) { result { id name color bounds } }
  }
  """

  describe "createArea" do
    test "creates the area for a writeAllData holder and records the first visit", %{
      conn: conn,
      world: world
    } do
      visited_at = "2026-03-04T10:00:00.000000Z"

      input = %{
        "name" => "new area",
        "color" => 7,
        "bounds" => PlacesWorld.cell_polygon(5),
        "lastVisit" => visited_at
      }

      response = run(conn, @create_area, %{"input" => input}, user(world, :read_write))

      assert %{"data" => %{"createArea" => %{"result" => %{"id" => id, "name" => "new area"}}}} =
               response

      assert %{color: 7} = Ash.get!(Area, id, authorize?: false)
      assert [%{time: time}] = visits("areas", id)
      assert DateTime.to_iso8601(time) == "2026-03-04T10:00:00.000000Z"
    end

    test "records the acting user on the first visit", %{conn: conn, world: world} do
      input = %{"name" => "a", "lastVisit" => "2026-03-04T10:00:00Z"}
      response = run(conn, @create_area, %{"input" => input}, user(world, :read_write))
      id = response["data"]["createArea"]["result"]["id"]

      assert [%{recorded_by: recorded_by}] = visits("areas", id)
      assert recorded_by == user(world, :read_write).uid
    end

    test "answers forbidden to everyone without writeAllData", %{conn: conn, world: world} do
      for kind <- [:area_edit, :approved_plain, :read_all, :unapproved] do
        response = run(conn, @create_area, %{"input" => %{"name" => "x"}}, user(world, kind))
        assert code(response) == "forbidden", "#{kind} created an area"
      end

      response = run(conn, @create_area, %{"input" => %{"name" => "x"}}, nil)
      assert code(response) == "forbidden"
    end

    test "does not ask for approval: an unapproved writeAllData holder creates", %{
      conn: conn,
      unapproved_writer: writer
    } do
      response = run(conn, @create_area, %{"input" => %{"name" => "x"}}, writer)

      assert %{"data" => %{"createArea" => %{"result" => %{"id" => _id}}}} = response
    end

    test "takes no photo or audit columns", %{conn: conn, world: world} do
      response =
        run(
          conn,
          @create_area,
          %{"input" => %{"name" => "x", "blurhash" => "abc", "deletedBy" => "x"}},
          user(world, :read_write)
        )

      assert %{"errors" => [_ | _]} = response
    end
  end

  describe "updateArea" do
    test "renames the area for an editor of that area and not for another area", %{
      conn: conn,
      world: world
    } do
      area_edit = user(world, :area_edit)

      ok =
        run(
          conn,
          @update_area,
          %{"id" => world.records.a1.id, "input" => %{"name" => "renamed"}},
          area_edit
        )

      assert ok["data"]["updateArea"]["result"]["name"] == "renamed"

      other =
        run(
          conn,
          @update_area,
          %{"id" => world.records.a2.id, "input" => %{"name" => "renamed"}},
          area_edit
        )

      assert code(other) == "forbidden"
      refute Ash.get!(Area, world.records.a2.id, authorize?: false).name == "renamed"
    end

    test "changes bounds and color for a writeAllData holder", %{conn: conn, world: world} do
      input = %{"bounds" => PlacesWorld.cell_polygon(7), "color" => 3}

      response =
        run(
          conn,
          @update_area,
          %{"id" => world.records.a1.id, "input" => input},
          user(world, :read_write)
        )

      assert %{"data" => %{"updateArea" => %{"result" => %{"color" => 3, "bounds" => bounds}}}} =
               response

      assert Map.take(bounds, ["type", "coordinates"]) == PlacesWorld.cell_polygon(7)
    end

    test "answers forbidden to a reader and to an unapproved editor", %{conn: conn, world: world} do
      for kind <- [:area_read, :read_all, :unapproved_with_grants] do
        response =
          run(
            conn,
            @update_area,
            %{"id" => world.records.a1.id, "input" => %{"name" => "x"}},
            user(world, kind)
          )

        assert code(response) == "forbidden", "#{kind} updated the area"
      end
    end

    test "records a visit only when lastVisit differs from the latest one", %{
      conn: conn,
      world: world
    } do
      id = world.records.a1.id
      editor = user(world, :area_edit)
      update = &run(conn, @update_area, %{"id" => id, "input" => %{"lastVisit" => &1}}, editor)

      update.("2026-03-04T10:00:00Z")
      update.("2026-03-04T10:00:00Z")
      assert length(visits("areas", id)) == 1

      update.("2026-03-05T10:00:00Z")
      assert length(visits("areas", id)) == 2
    end

    test "answers not found for an area that does not exist", %{conn: conn, world: world} do
      response =
        run(
          conn,
          @update_area,
          %{"id" => Ash.UUID.generate(), "input" => %{"name" => "x"}},
          user(world, :read_write)
        )

      assert code(response) == "not_found"
    end
  end

  @create_street """
  mutation($input: CreateStreetInput!) {
    createStreet(input: $input) { result { id name areas { id } } }
  }
  """

  @update_street """
  mutation($id: ID!, $input: UpdateStreetInput!) {
    updateStreet(id: $id, input: $input) { result { id name areas { id } } }
  }
  """

  describe "createStreet" do
    test "creates the street in the areas it names and the ones its line touches", %{
      conn: conn,
      world: world
    } do
      a1 = world.records.a1.id
      a2 = world.records.a2.id
      line = PlacesWorld.line([{31.205, 30.003}, {31.215, 30.003}])

      input = %{"name" => "new street", "line" => line, "areas" => [a2]}
      response = run(conn, @create_street, %{"input" => input}, user(world, :read_write))

      assert %{"data" => %{"createStreet" => %{"result" => %{"id" => id}}}} = response
      assert pair_set(%{id: id}) == MapSet.new([a1, a2])
    end

    test "rejects an area the actor cannot find and writes nothing", %{conn: conn, world: world} do
      before = count(Street)
      input = %{"name" => "s", "areas" => [Ash.UUID.generate()]}

      response = run(conn, @create_street, %{"input" => input}, user(world, :read_write))

      assert code(response) == "relation/not-found"
      assert count(Street) == before
    end

    test "answers forbidden to an area editor", %{conn: conn, world: world} do
      input = %{"name" => "s", "areas" => [world.records.a1.id]}

      response = run(conn, @create_street, %{"input" => input}, user(world, :area_edit))

      assert code(response) == "forbidden"
    end
  end

  describe "updateStreet" do
    test "renames a street of the editor's area and not one of another area", %{
      conn: conn,
      world: world
    } do
      editor = user(world, :area_edit)

      rename =
        &run(conn, @update_street, %{"id" => &1.id, "input" => %{"name" => "renamed"}}, editor)

      assert rename.(world.records.st1)["data"]["updateStreet"]["result"]["name"] == "renamed"
      assert code(rename.(world.records.st_a2)) == "forbidden"
    end

    test "null areas leave the links alone and a list sets the difference", %{
      conn: conn,
      world: world
    } do
      street = world.records.st1
      a1 = world.records.a1.id
      a2 = world.records.a2.id
      writer = user(world, :read_write)
      update = &run(conn, @update_street, %{"id" => street.id, "input" => &1}, writer)

      update.(%{"name" => "same links", "areas" => nil})
      assert pair_set(street) == MapSet.new([a1])

      update.(%{"areas" => [a1, a2]})
      assert pair_set(street) == MapSet.new([a1, a2])

      update.(%{"areas" => [a2]})
      assert pair_set(street) == MapSet.new([a2])

      update.(%{"areas" => []})
      assert pair_set(street) == MapSet.new([])
    end

    test "an editor of one area cannot link a street to another area", %{
      conn: conn,
      world: world
    } do
      street = world.records.st1
      input = %{"areas" => [world.records.a1.id, world.records.a2.id]}

      response =
        run(conn, @update_street, %{"id" => street.id, "input" => input}, user(world, :area_edit))

      assert code(response) == "forbidden"
      assert pair_set(street) == MapSet.new([world.records.a1.id])
    end

    test "records a street visit once per time", %{conn: conn, world: world} do
      id = world.records.st1.id

      update =
        &run(
          conn,
          @update_street,
          %{"id" => id, "input" => %{"lastVisit" => &1}},
          user(world, :area_edit)
        )

      update.("2026-04-01T08:00:00Z")
      update.("2026-04-01T08:00:00Z")

      assert [%{table: "streets"}] = visits("streets", id)
    end
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

  defp address_input(world, area, street, extra \\ %{}) do
    Map.merge(
      %{
        "areaId" => world.records[area].id,
        "streetId" => world.records[street].id,
        "countryIsoCode" => "EG"
      },
      extra
    )
  end

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

      changed = update.(with_address, %{"address" => %{"specialLandmark" => "near the church"}})
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
