defmodule ChurchAdminWeb.ChangesChannelTest do
  use ExUnit.Case, async: false

  import Phoenix.ChannelTest

  alias ChurchAdmin.Factory
  alias ChurchAdmin.FirebaseTokens
  alias ChurchAdmin.Realtime.Broadcaster
  alias ChurchAdmin.Realtime.RowChange
  alias ChurchAdminWeb.ChangesChannel
  alias ChurchAdminWeb.ChangesSocket

  @endpoint ChurchAdminWeb.Endpoint
  @start 1_000

  setup tags do
    ChurchAdmin.DataCase.setup_sandbox(tags)
    Broadcaster.reset(@start)
    Phoenix.PubSub.subscribe(ChurchAdmin.PubSub, Broadcaster.topic())
    {:ok, socket} = connect(ChangesSocket, %{"token" => approved_user_token()})
    {:ok, socket: socket}
  end

  defp approved_user_token(claims \\ %{}) do
    user = Factory.user!()
    Factory.permissions!(user, ~w(approved))

    %{"x-hasura-user-id" => user.uid}
    |> Map.merge(claims)
    |> FirebaseTokens.valid_claims()
    |> FirebaseTokens.unsigned()
  end

  defp broadcast_hobby_change(commit_lsn) do
    row = %{"id" => Ash.UUID.generate()}

    Broadcaster.commit(commit_lsn, [
      %RowChange{relation: {"public", "hobbies"}, op: :update, new: row}
    ])

    assert_receive {:realtime_changes, %{to: ^commit_lsn} = batch}, 2_000
    batch
  end

  defp join_since(socket, since),
    do: subscribe_and_join(socket, ChangesChannel, "changes", %{"since" => since})

  defp wire(batch) do
    %{
      from: Integer.to_string(batch.from),
      to: Integer.to_string(batch.to),
      changes: batch.changes
    }
  end

  test "a socket without a valid token is refused" do
    assert connect(ChangesSocket, %{}) == :error
    assert connect(ChangesSocket, %{"token" => "not-a-jwt"}) == :error

    expired = FirebaseTokens.valid_claims(%{"exp" => System.os_time(:second) - 1})
    assert connect(ChangesSocket, %{"token" => FirebaseTokens.unsigned(expired)}) == :error
  end

  test "joining at the head is complete and replays nothing", %{socket: socket} do
    assert {:ok, %{version: "1000", complete: true}, _socket} = join_since(socket, "1000")
    refute_push "changes", _payload
  end

  test "joining inside the buffer replays every later batch in order", %{socket: socket} do
    first = broadcast_hobby_change(1_010)
    second = broadcast_hobby_change(1_020)

    assert {:ok, %{version: "1000", complete: true}, _socket} = join_since(socket, "1000")
    assert_push "changes", payload
    assert payload == wire(first)
    assert_push "changes", payload
    assert payload == wire(second)
  end

  test "joining from a version the server cannot replay asks for a full refetch",
       %{socket: socket} do
    broadcast_hobby_change(1_010)

    for since <- [nil, "1", "garbage", "-5", "10.5", 1_000] do
      assert {:ok, %{version: "1010", complete: false}, _socket} = join_since(socket, since)
    end
  end

  test "each push starts at the version the previous one ended", %{socket: socket} do
    {:ok, %{version: joined}, _socket} = join_since(socket, "1000")
    broadcast_hobby_change(1_010)
    broadcast_hobby_change(1_030)

    assert_push "changes", %{from: ^joined, to: first_to}
    assert_push "changes", %{from: ^first_to, to: "1030"}
  end

  test "a batch already replayed is not pushed again", %{socket: socket} do
    first = broadcast_hobby_change(1_010)
    {:ok, _reply, channel} = join_since(socket, "1000")
    assert_push "changes", _replayed

    send(channel.channel_pid, {:realtime_changes, first})
    refute_push "changes", _payload
  end

  describe "when the replication stream restarts" do
    @new_head 5_000

    test "a joined channel is told at once, from the new head", %{socket: socket} do
      {:ok, _reply, _channel} = join_since(socket, "1000")

      :ok = Broadcaster.reset(@new_head)

      assert_push "changes", %{from: "5000", to: "5000", changes: []}
    end

    test "rejoining from the last version seen asks for a full refetch", %{socket: socket} do
      {:ok, _reply, _channel} = join_since(socket, "1000")
      broadcast_hobby_change(1_010)
      assert_push "changes", %{to: "1010"}

      :ok = Broadcaster.reset(@new_head)
      assert_push "changes", %{from: "5000", changes: []}

      assert {:ok, %{version: "5000", complete: false}, _socket} = join_since(socket, "1010")
    end

    test "joining at the new head is complete", %{socket: socket} do
      :ok = Broadcaster.reset(@new_head)

      assert {:ok, %{version: "5000", complete: true}, _socket} = join_since(socket, "5000")
    end
  end

  describe "the token's lifetime" do
    test "the transport is closed when the token expires" do
      Process.flag(:trap_exit, true)
      expires_at = System.os_time(:second) + 2

      {:ok, socket} =
        connect(ChangesSocket, %{"token" => approved_user_token(%{"exp" => expires_at})})

      {:ok, _reply, _channel} = join_since(socket, "1000")

      assert_receive %Phoenix.Socket.Broadcast{event: "disconnect"}, 3_500
    end

    test "a channel joined with an expired token is refused" do
      expires_at = System.os_time(:second) + 1

      {:ok, socket} =
        connect(ChangesSocket, %{"token" => approved_user_token(%{"exp" => expires_at})})

      Process.sleep(1_100)

      assert {:error, %{reason: "token_expired"}} = join_since(socket, "1000")
    end
  end
end
