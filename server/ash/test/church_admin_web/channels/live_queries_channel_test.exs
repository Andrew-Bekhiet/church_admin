defmodule ChurchAdminWeb.LiveQueriesChannelTest do
  use ExUnit.Case, async: false

  import Phoenix.ChannelTest

  alias ChurchAdmin.Factory
  alias ChurchAdmin.FirebaseTokens
  alias ChurchAdminWeb.LiveQueriesChannel
  alias ChurchAdminWeb.LiveQueriesSocket

  @endpoint ChurchAdminWeb.Endpoint

  setup tags do
    ChurchAdmin.DataCase.setup_sandbox(tags)
    {:ok, socket} = connect(LiveQueriesSocket, %{"token" => approved_user_token()})
    {:ok, socket: socket}
  end

  defp approved_user_token(claims \\ %{}) do
    user = Factory.user!()
    Factory.permissions!(user, ~w(approved))
    token_for(user, claims)
  end

  defp token_for(user, claims \\ %{}) do
    user
    |> Factory.firebase_account!()
    |> Map.merge(claims)
    |> FirebaseTokens.valid_claims()
    |> FirebaseTokens.unsigned()
  end

  defp join(socket), do: subscribe_and_join(socket, LiveQueriesChannel, "live_queries", %{})

  defp join_that_may_lose_its_channel(socket) do
    join(socket)
  catch
    :exit, {{:shutdown, :viewer_lost_access}, _call} -> :ok
  end

  test "a socket without a valid token is refused" do
    assert connect(LiveQueriesSocket, %{}) == :error
    assert connect(LiveQueriesSocket, %{"token" => "not-a-jwt"}) == :error

    expired = FirebaseTokens.valid_claims(%{"exp" => System.os_time(:second) - 1})
    assert connect(LiveQueriesSocket, %{"token" => FirebaseTokens.unsigned(expired)}) == :error
  end

  test "joining replies with an empty map", %{socket: socket} do
    assert {:ok, reply, _socket} = join(socket)
    assert reply == %{}
  end

  describe "a rejoin on a socket connected earlier" do
    test "disconnects a viewer whose approval went while the channel was down" do
      Process.flag(:trap_exit, true)
      user = Factory.user!()
      Factory.permissions!(user, ~w(approved))
      {:ok, socket} = connect(LiveQueriesSocket, %{"token" => token_for(user)})

      ChurchAdmin.Repo.query!("delete from auth.users_permissions where uid = $1", [
        Ecto.UUID.dump!(user.uid)
      ])

      join_that_may_lose_its_channel(socket)

      assert_receive %Phoenix.Socket.Broadcast{event: "disconnect"}, 1_000
    end
  end

  describe "the token's lifetime" do
    test "the transport is closed when the token expires" do
      Process.flag(:trap_exit, true)
      expires_at = System.os_time(:second) + 2

      {:ok, socket} =
        connect(LiveQueriesSocket, %{"token" => approved_user_token(%{"exp" => expires_at})})

      {:ok, _reply, _channel} = join(socket)

      assert_receive %Phoenix.Socket.Broadcast{event: "disconnect"}, 3_500
    end

    test "a channel joined with an expired token is refused" do
      expires_at = System.os_time(:second) + 1

      {:ok, socket} =
        connect(LiveQueriesSocket, %{"token" => approved_user_token(%{"exp" => expires_at})})

      Process.sleep(1_100)

      assert {:error, %{reason: "token_expired"}} = join(socket)
    end
  end
end
