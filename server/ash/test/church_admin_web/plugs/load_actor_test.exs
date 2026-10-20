defmodule ChurchAdminWeb.Plugs.LoadActorTest do
  use ChurchAdmin.AccountsCase, async: false

  import Phoenix.ConnTest, only: [post: 3]
  import Plug.Conn
  import Plug.Test

  alias ChurchAdmin.Authz.Actor
  alias ChurchAdmin.FirebaseTokens
  alias ChurchAdminWeb.Plugs.{Authenticate, LoadActor}

  @endpoint ChurchAdminWeb.Endpoint

  defp authenticate_and_load(claims) do
    token = claims |> FirebaseTokens.valid_claims() |> FirebaseTokens.unsigned()

    conn(:post, "/gql")
    |> put_req_header("authorization", "Bearer " <> token)
    |> Authenticate.call(Authenticate.init([]))
    |> LoadActor.call(LoadActor.init([]))
  end

  defp post_gql(claims) do
    token = claims |> FirebaseTokens.valid_claims() |> FirebaseTokens.unsigned()

    Phoenix.ConnTest.build_conn()
    |> put_req_header("authorization", "Bearer " <> token)
    |> post("/gql", %{"query" => "{ __typename }"})
  end

  defp unauthenticated_code(conn) do
    %{"errors" => [%{"extensions" => %{"code" => code}}]} = Jason.decode!(conn.resp_body)
    code
  end

  test "loads the actor of the user whose account the token belongs to" do
    user = user_with!(~w(approved readAllData))

    conn = authenticate_and_load(Factory.firebase_account!(user))

    refute conn.halted
    assert %Actor{uid: uid, approved?: true, read_all?: true} = Ash.PlugHelpers.get_actor(conn)
    assert uid == user.uid
  end

  test "rejects a uid claim that belongs to another account with 401 unauthenticated" do
    user = user_with!(~w(approved readAllData))
    other_account = Factory.firebase_account!(Factory.user!())

    conn = authenticate_and_load(%{other_account | "x-hasura-user-id" => user.uid})

    assert conn.halted
    assert conn.status == 401
    assert unauthenticated_code(conn) == "unauthenticated"
  end

  test "rejects a uid claim that no user has with 401 unauthenticated" do
    account = Factory.firebase_account!(Factory.user!())

    conn = authenticate_and_load(%{account | "x-hasura-user-id" => Ash.UUID.generate()})

    assert conn.status == 401
    assert unauthenticated_code(conn) == "unauthenticated"
  end

  test "/gql answers a uid claim of another account with 401 and a matching one with 200" do
    user = user_with!(~w(approved))
    account = Factory.firebase_account!(user)
    other_account = Factory.firebase_account!(Factory.user!())

    assert post_gql(account).status == 200

    conn = post_gql(%{other_account | "x-hasura-user-id" => user.uid})
    assert conn.status == 401
    assert unauthenticated_code(conn) == "unauthenticated"
  end

  test "rejects a token whose subject is not the account linked to the uid" do
    account = Factory.firebase_account!(user_with!(~w(approved)))

    conn = authenticate_and_load(%{account | "sub" => "firebase-someone-else"})

    assert conn.status == 401
  end

  test "lets an account without a uid claim through, so it can claim a user" do
    claims = %{"sub" => "firebase-not-onboarded", "x-hasura-user-id" => nil}

    conn = authenticate_and_load(claims)

    refute conn.halted

    assert %Actor{uid: nil, principal: %{auth_id: "firebase-not-onboarded"}} =
             Ash.PlugHelpers.get_actor(conn)
  end

  test "an account that has just claimed a seeded user is loaded once its token carries the uid" do
    seeded = Factory.user!(%{email: "seeded@example.com"})
    Factory.permissions!(seeded, ~w(approved))
    auth_id = "firebase-just-claimed"
    previous = Application.get_env(:church_admin, :account_claiming_by_email?)
    Application.put_env(:church_admin, :account_claiming_by_email?, true)
    on_exit(fn -> Application.put_env(:church_admin, :account_claiming_by_email?, previous) end)

    stub_identity_toolkit(fn
      "accounts:lookup", _body ->
        {200,
         %{
           "users" => [
             %{"localId" => auth_id, "email" => "seeded@example.com", "emailVerified" => true}
           ]
         }}

      _method, _body ->
        {200, %{}}
    end)

    {:ok, _claimed} = Accounts.try_claim_account(actor: principal_actor(auth_id, "t@example.com"))

    conn = authenticate_and_load(%{"sub" => auth_id, "x-hasura-user-id" => seeded.uid})

    refute conn.halted
    assert %Actor{uid: uid, approved?: true} = Ash.PlugHelpers.get_actor(conn)
    assert uid == seeded.uid
  end
end
