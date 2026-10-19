defmodule ChurchAdminWeb.Graphql.CatalogQueriesTest do
  use ChurchAdminWeb.ConnCase, async: false

  alias ChurchAdmin.Catalog.{Church, PersonType}
  alias ChurchAdmin.{AuthzWorld, FirebaseTokens}

  setup do
    {:ok, world: AuthzWorld.build!()}
  end

  defp run(conn, document, world \\ nil) do
    conn =
      case world do
        nil ->
          conn

        world ->
          claims =
            FirebaseTokens.valid_claims(%{"x-hasura-user-id" => world.users.unapproved.uid})

          put_req_header(conn, "authorization", "Bearer " <> FirebaseTokens.unsigned(claims))
      end

    conn
    |> post("/gql", %{"query" => document})
    |> json_response(200)
  end

  test "study years are identified by their order and sorted by it", %{conn: conn, world: world} do
    document = "{ studyYears(sort: [{field: ORDER}]) { count results { id order name } } }"
    %{"data" => %{"studyYears" => page}} = run(conn, document, world)

    assert page["count"] == 2
    assert [%{"id" => "1", "order" => 1}, %{"id" => "2", "order" => 2}] = page["results"]
  end

  test "a lookup is filtered by isHidden and sorted by name", %{conn: conn, world: world} do
    ChurchAdmin.DataCase.set_system_db_session()
    Ash.Seed.seed!(Church, %{name: "b shown", is_hidden: false})
    Ash.Seed.seed!(Church, %{name: "a shown", is_hidden: false})
    Ash.Seed.seed!(Church, %{name: "hidden", is_hidden: true})

    document = """
    { churches(filter: {isHidden: {eq: false}}, sort: [{field: NAME}]) { results { name } } }
    """

    %{"data" => %{"churches" => %{"results" => results}}} = run(conn, document, world)
    assert results == [%{"name" => "a shown"}, %{"name" => "b shown"}]
  end

  test "person types sort by family admin first, then order", %{conn: conn, world: world} do
    ChurchAdmin.DataCase.set_system_db_session()
    Ash.Seed.seed!(PersonType, %{name: "plain"})
    Ash.Seed.seed!(PersonType, %{name: "admin", is_family_admin: true})

    document = """
    { personTypes(sort: [{field: IS_FAMILY_ADMIN, order: DESC}, {field: ORDER}]) {
        results { name isFamilyAdmin order isHidden } } }
    """

    %{"data" => %{"personTypes" => %{"results" => [first, second]}}} = run(conn, document, world)
    assert {first["name"], second["name"]} == {"admin", "plain"}
  end

  test "a whole lookup list loads in one page of up to 1000", %{conn: conn, world: world} do
    ChurchAdmin.DataCase.set_system_db_session()
    for n <- 1..30, do: Ash.Seed.seed!(Church, %{name: "church #{n}"})

    %{"data" => %{"churches" => page}} =
      run(conn, "{ churches(first: 1000) { count results { id } } }", world)

    assert page["count"] == 30
    assert length(page["results"]) == 30
  end

  test "an anonymous request reads empty pages", %{conn: conn} do
    response = run(conn, "{ studyYears { count results { id } } hobbies { count } }")

    refute Map.has_key?(response, "errors")
    assert response["data"]["studyYears"] == %{"count" => 0, "results" => []}
    assert response["data"]["hobbies"] == %{"count" => 0}
  end
end
