defmodule ChurchAdminWeb.Graphql.DataQualityQueriesTest do
  use ChurchAdminWeb.ConnCase, async: false

  alias ChurchAdmin.{AuthzWorld, Factory, FirebaseTokens}

  setup do
    {:ok, world: AuthzWorld.build!()}
  end

  defp run(conn, document, world, kind) do
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
    |> post("/gql", %{"query" => document})
    |> json_response(200)
  end

  @data_checks """
  { dataChecks { count results { familyId isComplete completenessPercent familyCheck addressCheck userOverride details } } }
  """

  test "an anonymous request reads no data checks", %{conn: conn, world: world} do
    response = run(conn, @data_checks, world, nil)

    refute Map.has_key?(response, "errors")
    assert response["data"]["dataChecks"] == %{"count" => 0, "results" => []}
  end

  test "a scoped user reads the data checks of its families with every selected field",
       %{conn: conn, world: world} do
    response = run(conn, @data_checks, world, :approved_plain)

    refute Map.has_key?(response, "errors")
    assert %{"count" => 1, "results" => [check]} = response["data"]["dataChecks"]
    assert check["familyId"] == world.records.f_own.id
    assert is_integer(check["completenessPercent"])
    assert is_list(check["details"])
  end

  test "data check overrides follow the same family scope", %{conn: conn, world: world} do
    ChurchAdmin.Repo.query!(
      "insert into data_check_overrides (family_id, is_complete) values ($1, true)",
      [Ecto.UUID.dump!(world.records.f_own.id)]
    )

    query = "{ dataCheckOverrides { results { familyId isComplete updatedBy } } }"
    own = run(conn, query, world, :approved_plain)
    other = run(conn, query, world, :area_read)

    assert [%{"familyId" => family_id, "isComplete" => true}] =
             own["data"]["dataCheckOverrides"]["results"]

    assert family_id == world.records.f_own.id
    assert other["data"]["dataCheckOverrides"]["results"] == []
  end
end
