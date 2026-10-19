defmodule ChurchAdminWeb.Graphql.PlacesStreetMutationsTest do
  use ChurchAdminWeb.ConnCase, async: false

  import ChurchAdminWeb.PlacesMutationHelpers

  alias ChurchAdmin.Places.Street
  alias ChurchAdmin.PlacesWorld

  setup do
    build_world!()
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

    test "links an area named twice once", %{conn: conn, world: world} do
      a2 = world.records.a2.id
      input = %{"name" => "twice", "areas" => [a2, a2]}

      response = run(conn, @create_street, %{"input" => input}, user(world, :read_write))

      id = response["data"]["createStreet"]["result"]["id"]
      assert pair_set(%{id: id}) == MapSet.new([a2])
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
end
