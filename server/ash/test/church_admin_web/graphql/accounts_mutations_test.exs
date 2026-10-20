defmodule ChurchAdminWeb.Graphql.AccountsMutationsTest do
  use ChurchAdminWeb.ConnCase, async: false

  import ChurchAdmin.AccountsCase,
    only: [user_with!: 0, user_with!: 1, stub_identity_toolkit: 0, permission_names: 1]

  alias ChurchAdmin.{Factory, FirebaseTokens}

  defp run(conn, document, variables, claims) do
    token = claims |> FirebaseTokens.valid_claims() |> FirebaseTokens.unsigned()

    conn
    |> put_req_header("authorization", "Bearer " <> token)
    |> post("/gql", %{"query" => document, "variables" => variables})
    |> json_response(200)
  end

  defp as_user(user), do: Factory.firebase_account!(user)

  defp first_code(%{"errors" => [error | _]}), do: error["extensions"]["code"]

  @create_user """
  mutation CreateUser($input: CreateUserInput!) {
    createUser(input: $input) { result { uid name email person { name isServant } } }
  }
  """

  test "createUser creates the user and answers with it", %{conn: conn} do
    manager = user_with!()
    service = Factory.service!()

    response =
      run(
        conn,
        @create_user,
        %{
          "input" => %{
            "name" => "Graph servant",
            "email" => "graph@example.com",
            "permissions" => ["approved"],
            "adminOn" => [%{"adminOnService" => service.id, "serviceAllowEdit" => true}],
            "newPerson" => %{"name" => "Graph servant", "gender" => true}
          }
        },
        as_user(manager)
      )

    assert %{"name" => "Graph servant", "person" => %{"isServant" => true}} =
             response["data"]["createUser"]["result"]
  end

  test "a rejected createUser reports the domain code at the root", %{conn: conn} do
    onboarder = user_with!(~w(approved onboardUsers))

    response =
      run(
        conn,
        @create_user,
        %{"input" => %{"name" => "x", "newPerson" => %{"name" => "x", "gender" => true}}},
        as_user(onboarder)
      )

    assert first_code(response) == "invitation/scope-required"
  end

  test "updateUserPermissions takes the desired permissions", %{conn: conn} do
    manager = user_with!()
    user = Factory.user!()

    response =
      run(
        conn,
        """
        mutation Update($id: ID!, $input: UpdateUserPermissionsInput) {
          updateUserPermissions(id: $id, input: $input) { result { uid } }
        }
        """,
        %{"id" => user.uid, "input" => %{"permissions" => ["approved", "readAllData"]}},
        as_user(manager)
      )

    refute response["errors"]
    assert permission_names(user) == ["approved", "readAllData"]
  end

  test "applyInvitationCode is open to an account without a user and hides why it fails",
       %{conn: conn} do
    stub_identity_toolkit()

    response =
      run(
        conn,
        "mutation { applyInvitationCode(input: {code: \"AAAA-BBBB-CCCC\"}) { uid } }",
        %{},
        %{"x-hasura-user-id" => nil, "sub" => "firebase-graphql-claim"}
      )

    assert first_code(response) == "invitation/not-claimable"
  end

  test "the seventh invitation attempt is rate_limited", %{conn: conn} do
    claims = %{"x-hasura-user-id" => nil, "sub" => "firebase-graphql-limit"}
    document = "mutation { applyInvitationCode(input: {code: \"AAAA-BBBB-CCCC\"}) { uid } }"

    for _ <- 1..6, do: run(conn, document, %{}, claims)

    assert first_code(run(conn, document, %{}, claims)) == "rate_limited"
  end

  test "an anonymous request may not delete an account", %{conn: conn} do
    response =
      conn
      |> post("/gql", %{"query" => "mutation { deleteMyAccount }"})
      |> json_response(200)

    assert first_code(response) == "forbidden"
  end
end
