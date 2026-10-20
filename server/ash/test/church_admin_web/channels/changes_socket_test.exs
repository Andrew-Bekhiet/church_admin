defmodule ChurchAdminWeb.ChangesSocketTest do
  use ChurchAdmin.AccountsCase, async: false

  import Phoenix.ChannelTest

  alias ChurchAdmin.FirebaseTokens
  alias ChurchAdminWeb.ChangesSocket

  @endpoint ChurchAdminWeb.Endpoint

  defp token_for(user), do: token_with(Factory.firebase_account!(user))

  defp token_with(claims),
    do: claims |> FirebaseTokens.valid_claims() |> FirebaseTokens.unsigned()

  describe "connect" do
    test "admits an approved user and assigns the loaded actor" do
      user = user_with!(~w(approved readAllData))

      assert {:ok, socket} = connect(ChangesSocket, %{"token" => token_for(user)})
      assert socket.assigns.actor.approved?
      assert socket.assigns.actor.read_all?
      assert socket.assigns.actor.principal.uid == user.uid
    end

    test "refuses an account that is not onboarded" do
      claims = FirebaseTokens.valid_claims() |> Map.delete("x-hasura-user-id")

      assert connect(ChangesSocket, %{"token" => FirebaseTokens.unsigned(claims)}) == :error
    end

    test "refuses a user who is not approved" do
      user = user_with!(~w(readAllData))

      assert connect(ChangesSocket, %{"token" => token_for(user)}) == :error
    end

    test "refuses a uid claim that belongs to another account" do
      user = user_with!(~w(approved readAllData))
      other_account = Factory.firebase_account!(Factory.user!())
      claims = %{other_account | "x-hasura-user-id" => user.uid}

      assert connect(ChangesSocket, %{"token" => token_with(claims)}) == :error
    end

    test "refuses a uid claim that no user has" do
      account = ~w(approved) |> user_with!() |> Factory.firebase_account!()
      claims = %{account | "x-hasura-user-id" => Ash.UUID.generate()}

      assert connect(ChangesSocket, %{"token" => token_with(claims)}) == :error
    end

    test "refuses a token whose subject is no user's account" do
      user = user_with!(~w(approved))
      claims = %{Factory.firebase_account!(user) | "sub" => "firebase-nobody"}

      assert connect(ChangesSocket, %{"token" => token_with(claims)}) == :error
    end

    test "is keyed by the uid, so a user's sockets can be disconnected together" do
      user = user_with!(~w(approved))
      {:ok, socket} = connect(ChangesSocket, %{"token" => token_for(user)})

      assert ChangesSocket.id(socket) == "changes_socket:" <> user.uid
    end
  end

  describe "disconnecting a user's sockets" do
    setup do
      user = user_with!(~w(approved))
      manager = user_with!()
      ChurchAdminWeb.Endpoint.subscribe("changes_socket:" <> user.uid)

      {:ok, user: user, manager: actor_for(manager)}
    end

    test "unapproveUser disconnects them", ctx do
      {:ok, _user} = Accounts.unapprove_user(ctx.user, actor: ctx.manager)

      assert_receive %Phoenix.Socket.Broadcast{event: "disconnect"}
    end

    test "removing approved through updateUserPermissions disconnects them", ctx do
      {:ok, _user} =
        Accounts.update_user_permissions(ctx.user, %{permissions: ~w(readAllData)},
          actor: ctx.manager
        )

      assert_receive %Phoenix.Socket.Broadcast{event: "disconnect"}
    end

    test "deleting the account disconnects them" do
      user =
        user_with!(~w(approved), %{auth_id: "firebase-#{System.unique_integer([:positive])}"})

      ChurchAdminWeb.Endpoint.subscribe("changes_socket:" <> user.uid)
      stub_identity_toolkit()

      {:ok, true} =
        Accounts.delete_my_account(
          actor: principal_actor(user.auth_id, "me@example.com", user.uid)
        )

      assert_receive %Phoenix.Socket.Broadcast{
        event: "disconnect",
        topic: "changes_socket:" <> _uid
      }
    end

    test "a Firebase failure while deleting the account disconnects nobody" do
      user =
        user_with!(~w(approved), %{auth_id: "firebase-#{System.unique_integer([:positive])}"})

      ChurchAdminWeb.Endpoint.subscribe("changes_socket:" <> user.uid)
      stub_identity_toolkit(fn _method, _body -> google_failure() end)

      {:error, _error} =
        Accounts.delete_my_account(
          actor: principal_actor(user.auth_id, "me@example.com", user.uid)
        )

      refute_receive %Phoenix.Socket.Broadcast{event: "disconnect"}, 200
    end

    test "approving, or changing other permissions, does not", ctx do
      {:ok, _user} = Accounts.approve_user(ctx.user, actor: ctx.manager)

      {:ok, _user} =
        Accounts.update_user_permissions(ctx.user, %{permissions: ~w(approved readAllData)},
          actor: ctx.manager
        )

      refute_receive %Phoenix.Socket.Broadcast{event: "disconnect"}, 200
    end
  end
end
