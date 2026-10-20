defmodule ChurchAdminWeb.Graphql.PeopleQueriesTest do
  use ChurchAdminWeb.ConnCase, async: false

  alias ChurchAdmin.{AuthzWorld, Factory, FirebaseTokens}

  setup do
    {:ok, world: AuthzWorld.build!()}
  end

  defp run(conn, document, variables \\ %{}, kind \\ nil, world \\ nil) do
    conn =
      case kind do
        nil ->
          conn

        kind ->
          claims =
            world.users[kind] |> Factory.firebase_account!() |> FirebaseTokens.valid_claims()

          put_req_header(conn, "authorization", "Bearer " <> FirebaseTokens.unsigned(claims))
      end

    conn
    |> post("/gql", %{"query" => document, "variables" => variables})
    |> json_response(200)
  end

  @persons """
  query Persons($first: Int, $after: String) {
    persons(first: $first, after: $after, sort: [{field: NAME}]) {
      count
      endKeyset
      results { id name userCanEdit family { id } }
    }
  }
  """

  test "an anonymous request reads an empty page", %{conn: conn} do
    response = run(conn, "{ persons { count results { id } } users { count } }")

    refute Map.has_key?(response, "errors")
    assert response["data"]["persons"] == %{"count" => 0, "results" => []}
    assert response["data"]["users"] == %{"count" => 0}
  end

  test "a scoped user reads its persons with userCanEdit", %{conn: conn, world: world} do
    %{"data" => %{"persons" => page}} = run(conn, @persons, %{}, :service_write_related, world)

    ids = Enum.map(page["results"], & &1["id"])
    %{m1: m1, f2: f2, relative: relative} = world.records

    assert page["count"] == 3
    assert MapSet.new(ids) == MapSet.new([m1.id, f2.id, relative.id])

    editable = for person <- page["results"], person["userCanEdit"], do: person["id"]
    assert MapSet.new(editable) == MapSet.new([m1.id, relative.id])
  end

  test "keyset pages chain through endKeyset", %{conn: conn, world: world} do
    first = run(conn, @persons, %{"first" => 2}, :read_all, world)["data"]["persons"]

    rest =
      run(conn, @persons, %{"after" => first["endKeyset"]}, :read_all, world)["data"]["persons"]

    assert length(first["results"]) == 2
    assert first["count"] == rest["count"]
    all = Enum.map(first["results"] ++ rest["results"], & &1["id"])
    assert length(all) == first["count"]
    assert all == Enum.uniq(all)
  end

  test "a name filter uses ilike", %{conn: conn, world: world} do
    document = """
    query($q: String) { persons(filter: {name: {ilike: $q}}) { results { id } } }
    """

    name = world.records.m1.name
    pattern = "%" <> (name |> String.slice(0, 6) |> String.upcase()) <> "%"

    %{"data" => %{"persons" => %{"results" => results}}} =
      run(conn, document, %{"q" => pattern}, :read_all, world)

    assert world.records.m1.id in Enum.map(results, & &1["id"])
  end

  test "a person outside the scope reads as null by id", %{conn: conn, world: world} do
    document = "query($id: ID!) { person(id: $id) { id } }"

    assert %{"data" => %{"person" => nil}} =
             run(conn, document, %{"id" => world.records.unlinked.id}, :service_open, world)

    assert %{"data" => %{"person" => %{"id" => _}}} =
             run(conn, document, %{"id" => world.records.m1.id}, :service_open, world)
  end

  test "families, users and their links answer with the page shape", %{conn: conn, world: world} do
    document = """
    {
      families { count results { id userCanEdit persons { id } address { id } } }
      users { count results { id currentUserCanManageThisUser permissions { permission } scopeGrants { permissionId } } }
      serviceMemberships { count results { personId serviceId } }
      groupMemberships { count results { personId groupId } }
      addresses { count results { id familyId } }
      userPermissions { count results { permission } }
      scopeGrants { count results { permissionId } }
    }
    """

    %{"data" => data} = run(conn, document, %{}, :area_edit, world)

    assert [%{"id" => family_id, "userCanEdit" => true, "address" => %{"id" => _}}] =
             data["families"]["results"]

    assert family_id == world.records.f_area.id
    assert data["users"]["count"] == length(AuthzWorld.actor_kinds())
    assert data["serviceMemberships"]["count"] == 0
    assert data["addresses"]["count"] == 2
  end

  test "an unapproved user reads only its own user", %{conn: conn, world: world} do
    %{"data" => %{"users" => %{"results" => results}}} =
      run(conn, "{ users { results { id } } }", %{}, :unapproved, world)

    assert results == [%{"id" => world.users.unapproved.uid}]
  end
end
