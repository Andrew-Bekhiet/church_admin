defmodule ChurchAdminWeb.ChangesChannelTest do
  use ExUnit.Case, async: false

  import Phoenix.ChannelTest

  alias ChurchAdmin.Factory
  alias ChurchAdmin.FirebaseTokens
  alias ChurchAdminWeb.ChangesChannel
  alias ChurchAdminWeb.ChangesSocket

  @endpoint ChurchAdminWeb.Endpoint

  setup tags do
    ChurchAdmin.DataCase.setup_sandbox(tags)
    {:ok, socket} = connect(ChangesSocket, %{"token" => approved_user_token()})
    {:ok, socket: socket}
  end

  defp approved_user_token(claims \\ %{}) do
    user = Factory.user!()
    Factory.permissions!(user, ~w(approved))

    user
    |> Factory.firebase_account!()
    |> Map.merge(claims)
    |> FirebaseTokens.valid_claims()
    |> FirebaseTokens.unsigned()
  end

  defp join(socket), do: subscribe_and_join(socket, ChangesChannel, "changes", %{})

  test "a socket without a valid token is refused" do
    assert connect(ChangesSocket, %{}) == :error
    assert connect(ChangesSocket, %{"token" => "not-a-jwt"}) == :error

    expired = FirebaseTokens.valid_claims(%{"exp" => System.os_time(:second) - 1})
    assert connect(ChangesSocket, %{"token" => FirebaseTokens.unsigned(expired)}) == :error
  end

  test "joining replies with an empty map", %{socket: socket} do
    assert {:ok, reply, _socket} = join(socket)
    assert reply == %{}
  end

  describe "the token's lifetime" do
    test "the transport is closed when the token expires" do
      Process.flag(:trap_exit, true)
      expires_at = System.os_time(:second) + 2

      {:ok, socket} =
        connect(ChangesSocket, %{"token" => approved_user_token(%{"exp" => expires_at})})

      {:ok, _reply, _channel} = join(socket)

      assert_receive %Phoenix.Socket.Broadcast{event: "disconnect"}, 3_500
    end

    test "a channel joined with an expired token is refused" do
      expires_at = System.os_time(:second) + 1

      {:ok, socket} =
        connect(ChangesSocket, %{"token" => approved_user_token(%{"exp" => expires_at})})

      Process.sleep(1_100)

      assert {:error, %{reason: "token_expired"}} = join(socket)
    end
  end
end
