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
         req_options: [plug: {Req.Test, __MODULE__}],
         refresh_deadline_ms: 300,
         now_ms: fn -> Agent.get(clock, & &1) end}
      )

    Req.Test.allow(__MODULE__, test_pid, server)

    %{server: server, clock: clock}
  end

  defp jwks(kids) do
    %{
      "keys" =>
        Enum.map(
          kids,
          &(&1 |> FirebaseTokens.generate_signing_key() |> FirebaseTokens.public_jwk_map())
        )
    }
  end

  defp serve_keys(kids, max_age) do
    test_pid = self()
    jwks = jwks(kids)

    Req.Test.stub(__MODULE__, fn conn ->
      send(test_pid, :keys_fetched)

      conn
      |> Plug.Conn.put_resp_header("cache-control", "public, max-age=#{max_age}, must-revalidate")
      |> Req.Test.json(jwks)
    end)
  end

  defp serve_keys_without_max_age(kids) do
    test_pid = self()
    jwks = jwks(kids)

    Req.Test.stub(__MODULE__, fn conn ->
      send(test_pid, :keys_fetched)
      Req.Test.json(conn, jwks)
    end)
  end

  defp serve_failure do
    test_pid = self()

    Req.Test.stub(__MODULE__, fn conn ->
      send(test_pid, :keys_fetched)
      Plug.Conn.send_resp(conn, 503, "unavailable")
    end)
  end

  defp advance(clock, ms), do: Agent.update(clock, &(&1 + ms))

  defp await_idle(server, attempts \\ 100) do
    cond do
      :sys.get_state(server).refresh == nil ->
        :ok

      attempts == 0 ->
        flunk("the key refresh never finished")

      true ->
        Process.sleep(10)
        await_idle(server, attempts - 1)
    end
  end

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
    assert_receive :keys_fetched
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

  describe "when Google is slow or failing" do
    setup ctx do
      serve_keys(["key-1"], 60)
      {:ok, _} = GoogleSigningKeys.fetch_key(ctx.server, "key-1")
      assert_received :keys_fetched
      advance(ctx.clock, 61_000)
      :ok
    end

    test "an expired cache still serves its keys while the refresh is under way", ctx do
      test_pid = self()
      jwks = jwks(["key-1", "key-2"])

      Req.Test.stub(__MODULE__, fn conn ->
        send(test_pid, {:refresh_started, self()})

        receive do
          :release -> Req.Test.json(conn, jwks)
        end
      end)

      assert {:ok, _} = GoogleSigningKeys.fetch_key(ctx.server, "key-1")
      assert_receive {:refresh_started, refresh}

      send(refresh, :release)
      assert {:ok, _} = GoogleSigningKeys.fetch_key(ctx.server, "key-2")
    end

    test "a failed refresh keeps serving the cached keys and is retried after a backoff", ctx do
      serve_failure()

      assert {:ok, _} = GoogleSigningKeys.fetch_key(ctx.server, "key-1")
      await_idle(ctx.server)
      assert_received :keys_fetched

      assert {:ok, _} = GoogleSigningKeys.fetch_key(ctx.server, "key-1")
      refute_received :keys_fetched

      serve_keys(["key-1", "key-2"], 3600)
      advance(ctx.clock, 5_000)

      assert {:ok, _} = GoogleSigningKeys.fetch_key(ctx.server, "key-1")
      await_idle(ctx.server)
      assert_received :keys_fetched
      assert {:ok, _} = GoogleSigningKeys.fetch_key(ctx.server, "key-2")
    end

    test "a failed refresh is attempted once, without retries", ctx do
      serve_failure()

      assert {:ok, _} = GoogleSigningKeys.fetch_key(ctx.server, "key-1")
      assert_receive :keys_fetched
      refute_receive :keys_fetched, 1_300
    end

    test "a hanging refresh gives up instead of crashing the caller", ctx do
      Req.Test.stub(__MODULE__, fn _conn -> Process.sleep(:infinity) end)

      assert {:error, :signing_keys_unavailable} =
               GoogleSigningKeys.fetch_key(ctx.server, "key-3")

      assert Process.alive?(ctx.server)

      serve_keys(["key-1", "key-3"], 3600)
      advance(ctx.clock, 5_000)
      assert {:ok, _} = GoogleSigningKeys.fetch_key(ctx.server, "key-3")
    end
  end

  test "a hanging first fetch answers unavailable within the deadline", ctx do
    Req.Test.stub(__MODULE__, fn _conn -> Process.sleep(:infinity) end)

    assert {:error, :signing_keys_unavailable} = GoogleSigningKeys.fetch_key(ctx.server, "key-1")
    assert Process.alive?(ctx.server)

    serve_keys(["key-1"], 3600)
    assert {:ok, _} = GoogleSigningKeys.fetch_key(ctx.server, "key-1")
  end

  describe "a response without max-age" do
    test "is cached for the default lifetime", ctx do
      serve_keys_without_max_age(["key-1"])

      assert {:ok, _} = GoogleSigningKeys.fetch_key(ctx.server, "key-1")
      advance(ctx.clock, 299_000)
      assert {:ok, _} = GoogleSigningKeys.fetch_key(ctx.server, "key-1")
      assert_received :keys_fetched
      refute_received :keys_fetched

      advance(ctx.clock, 2_000)
      assert {:ok, _} = GoogleSigningKeys.fetch_key(ctx.server, "key-1")
      await_idle(ctx.server)
      assert_received :keys_fetched
    end

    test "max-age=0 is still cached for the minimum lifetime", ctx do
      serve_keys(["key-1"], 0)

      assert {:ok, _} = GoogleSigningKeys.fetch_key(ctx.server, "key-1")
      advance(ctx.clock, 59_000)
      assert {:ok, _} = GoogleSigningKeys.fetch_key(ctx.server, "key-1")

      assert_received :keys_fetched
      refute_received :keys_fetched
    end
  end
end
