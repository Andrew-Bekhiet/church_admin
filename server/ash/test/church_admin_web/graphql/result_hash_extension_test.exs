defmodule ChurchAdminWeb.Graphql.ResultHashExtensionTest do
  use ChurchAdminWeb.ConnCase, async: false

  alias ChurchAdmin.Accounts.Preferences
  alias ChurchAdmin.Catalog.Church
  alias ChurchAdmin.Realtime.Live.ResultHash
  alias ChurchAdmin.{AuthzWorld, Factory, FirebaseTokens}

  @churches "{ churches(sort: [{field: NAME}]) { count results { id name keyset } } }"

  setup %{conn: conn} do
    world = AuthzWorld.build!()
    user = world.users.approved_plain
    claims = user |> Factory.firebase_account!() |> FirebaseTokens.valid_claims()
    conn = put_req_header(conn, "authorization", "Bearer " <> FirebaseTokens.unsigned(claims))
    {:ok, conn: conn, user: user}
  end

  defp run(conn, document, variables \\ %{}) do
    conn |> post("/gql", %{"query" => document, "variables" => variables}) |> json_response(200)
  end

  test "a query's response carries the hash of its data", %{conn: conn} do
    Ash.Seed.seed!(Church, %{name: "church"})

    response = run(conn, @churches)

    assert response["extensions"] == %{"resultHash" => ResultHash.of(response["data"])}
  end

  test "the same query over the same rows hashes the same", %{conn: conn} do
    Ash.Seed.seed!(Church, %{name: "church"})

    assert run(conn, @churches)["extensions"] == run(conn, @churches)["extensions"]
  end

  test "a changed row changes the hash", %{conn: conn} do
    church = Ash.Seed.seed!(Church, %{name: "church"})
    before_edit = run(conn, @churches)["extensions"]["resultHash"]

    Ash.Seed.update!(church, %{name: "renamed"})

    refute run(conn, @churches)["extensions"]["resultHash"] == before_edit
  end

  test "a mutation's response has no hash", %{conn: conn, user: user} do
    Ash.Seed.seed!(Preferences, %{uid: user.uid})

    document = """
    mutation { updateMyPreferences(input: {darkTheme: true}) { result { uid darkTheme } } }
    """

    response = run(conn, document)

    assert %{"updateMyPreferences" => %{"result" => %{"darkTheme" => true}}} = response["data"]
    refute Map.has_key?(response, "extensions")
  end

  test "a response without data has no hash", %{conn: conn} do
    response = run(conn, "{ noSuchField }")

    assert response["errors"] != []
    refute Map.has_key?(response, "data")
    refute Map.has_key?(response, "extensions")
  end

  test "a response with errors has no hash", %{conn: conn} do
    response = run(conn, "{ churches(after: \"x\") { results { id } } }")

    assert response["errors"] != []
    refute Map.has_key?(response, "extensions")
  end
end
