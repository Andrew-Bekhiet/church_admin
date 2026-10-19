defmodule ChurchAdminWeb.Graphql.PlacesAreaMutationsTest do
  use ChurchAdminWeb.ConnCase, async: false

  import ChurchAdminWeb.PlacesMutationHelpers

  alias ChurchAdmin.Places.Area
  alias ChurchAdmin.PlacesWorld

  setup do
    build_world!()
  end

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
end
