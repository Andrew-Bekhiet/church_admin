defmodule ChurchAdmin.Auth.GoogleSigningKeysTest do
  use ExUnit.Case, async: true

  alias ChurchAdmin.Auth.GoogleSigningKeys
  alias ChurchAdmin.FirebaseTokens

  setup do
    test_pid = self()
    clock = start_supervised!({Agent, fn -> 0 end})

    server =
      start_supervised!(
        {GoogleSigningKeys,
         name: nil,
         req_options: [plug: {Req.Test, __MODULE__}, retry: false],
         now_ms: fn -> Agent.get(clock, & &1) end}
      )

    Req.Test.allow(__MODULE__, test_pid, server)

    %{server: server, clock: clock}
  end

  defp serve_keys(kids, max_age) do
    test_pid = self()

    jwks = %{
      "keys" =>
        Enum.map(
          kids,
          &(&1 |> FirebaseTokens.generate_signing_key() |> FirebaseTokens.public_jwk_map())
        )
    }

    Req.Test.stub(__MODULE__, fn conn ->
      send(test_pid, :keys_fetched)

      conn
      |> Plug.Conn.put_resp_header("cache-control", "public, max-age=#{max_age}, must-revalidate")
      |> Req.Test.json(jwks)
    end)
  end

  defp advance(clock, ms), do: Agent.update(clock, &(&1 + ms))

  test "fetches the keys once and serves them from cache while max-age holds", ctx do
    serve_keys(["key-1"], 3600)

    assert {:ok, %JOSE.JWK{}} = GoogleSigningKeys.fetch_key(ctx.server, "key-1")
    advance(ctx.clock, 3_599_000)
    assert {:ok, %JOSE.JWK{}} = GoogleSigningKeys.fetch_key(ctx.server, "key-1")

    assert_received :keys_fetched
    refute_received :keys_fetched
  end

  test "refetches once max-age has passed", ctx do
    serve_keys(["key-1"], 60)

    assert {:ok, _} = GoogleSigningKeys.fetch_key(ctx.server, "key-1")
    advance(ctx.clock, 61_000)
    assert {:ok, _} = GoogleSigningKeys.fetch_key(ctx.server, "key-1")

    assert_received :keys_fetched
    assert_received :keys_fetched
  end

  test "refetches on an unknown key id to pick up a rotation", ctx do
    serve_keys(["key-1"], 3600)
    assert {:ok, _} = GoogleSigningKeys.fetch_key(ctx.server, "key-1")
    assert_received :keys_fetched

    serve_keys(["key-1", "key-2"], 3600)
    advance(ctx.clock, 120_000)

    assert {:ok, _} = GoogleSigningKeys.fetch_key(ctx.server, "key-2")
    assert_received :keys_fetched
  end

  test "an unknown key id refetches at most once a minute", ctx do
    serve_keys(["key-1"], 3600)
    assert {:ok, _} = GoogleSigningKeys.fetch_key(ctx.server, "key-1")
    assert_received :keys_fetched

    assert GoogleSigningKeys.fetch_key(ctx.server, "forged") == {:error, :unknown_key}
    refute_received :keys_fetched
  end

  test "a failing key endpoint is reported, not cached", ctx do
    Req.Test.stub(__MODULE__, &Plug.Conn.send_resp(&1, 503, "unavailable"))
    assert {:error, :signing_keys_unavailable} = GoogleSigningKeys.fetch_key(ctx.server, "key-1")

    serve_keys(["key-1"], 3600)
    assert {:ok, _} = GoogleSigningKeys.fetch_key(ctx.server, "key-1")
  end
end
