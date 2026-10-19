defmodule ChurchAdminWeb.EndpointTest do
  use ChurchAdminWeb.ConnCase, async: true

  alias ChurchAdmin.FirebaseTokens
  alias ChurchAdminWeb.CorsOrigins

  test "GET /healthz answers OK as plain text without a token", %{conn: conn} do
    conn = get(conn, "/healthz")

    assert conn.status == 200
    assert conn.resp_body == "OK"
    assert [content_type] = get_resp_header(conn, "content-type")
    assert content_type =~ "text/plain"
  end

  test "/gql serves anonymous requests", %{conn: conn} do
    conn = post(conn, "/gql", %{"query" => "{ __typename }"})

    assert json_response(conn, 200) == %{"data" => %{"__typename" => "RootQueryType"}}
  end

  test "/gql rejects an expired token with 401 unauthenticated", %{conn: conn} do
    token =
      %{"exp" => System.os_time(:second) - 1}
      |> FirebaseTokens.valid_claims()
      |> FirebaseTokens.unsigned()

    conn =
      conn
      |> put_req_header("authorization", "Bearer " <> token)
      |> post("/gql", %{"query" => "{ __typename }"})

    assert %{"errors" => [%{"extensions" => %{"code" => "unauthenticated"}}]} =
             json_response(conn, 401)
  end

  test "a CORS preflight from the web client is allowed in test", %{conn: conn} do
    conn =
      conn
      |> put_req_header("origin", "http://localhost:5000")
      |> put_req_header("access-control-request-method", "POST")
      |> put_req_header("access-control-request-headers", "authorization, content-type")
      |> options("/gql")

    assert conn.status == 200
    assert get_resp_header(conn, "access-control-allow-origin") == ["http://localhost:5000"]
    assert [allowed_headers] = get_resp_header(conn, "access-control-allow-headers")
    assert allowed_headers =~ "authorization"
  end

  test "configured CORS origins allow only the listed origins" do
    assert CorsOrigins.origin_allowed?("https://app.example.org", ["https://app.example.org"])
    refute CorsOrigins.origin_allowed?("https://evil.example", ["https://app.example.org"])
    assert CorsOrigins.origin_allowed?("https://anything.example", :any)
  end
end
