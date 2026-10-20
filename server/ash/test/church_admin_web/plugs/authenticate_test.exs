defmodule ChurchAdminWeb.Plugs.AuthenticateTest do
  use ExUnit.Case, async: true

  import Plug.Conn
  import Plug.Test

  alias ChurchAdmin.Authz.Actor
  alias ChurchAdmin.FirebaseTokens
  alias ChurchAdminWeb.Plugs.Authenticate

  defp authenticate(conn), do: Authenticate.call(conn, Authenticate.init([]))

  defp with_bearer(conn, token), do: put_req_header(conn, "authorization", "Bearer " <> token)

  defp unauthenticated_code(conn) do
    %{"errors" => [%{"extensions" => %{"code" => code}}]} = Jason.decode!(conn.resp_body)
    code
  end

  test "a request without a token proceeds with no actor" do
    conn = :post |> conn("/gql") |> authenticate()

    refute conn.halted
    assert Ash.PlugHelpers.get_actor(conn) == nil
  end

  test "a valid token sets the actor for its principal" do
    claims = FirebaseTokens.valid_claims()
    conn = :post |> conn("/gql") |> with_bearer(FirebaseTokens.unsigned(claims)) |> authenticate()

    refute conn.halted

    assert %Actor{uid: uid, system?: false, principal: principal} =
             Ash.PlugHelpers.get_actor(conn)

    assert uid == claims["x-hasura-user-id"]
    assert principal.auth_id == claims["sub"]
  end

  test "an expired token is rejected with 401 unauthenticated" do
    token =
      %{"exp" => System.os_time(:second) - 1}
      |> FirebaseTokens.valid_claims()
      |> FirebaseTokens.unsigned()

    conn = :post |> conn("/gql") |> with_bearer(token) |> authenticate()

    assert conn.halted
    assert conn.status == 401
    assert unauthenticated_code(conn) == "unauthenticated"
  end

  test "a malformed authorization header is rejected with 401 unauthenticated" do
    conn = :post |> conn("/gql") |> put_req_header("authorization", "Basic abc") |> authenticate()

    assert conn.status == 401
    assert unauthenticated_code(conn) == "unauthenticated"
  end
end
