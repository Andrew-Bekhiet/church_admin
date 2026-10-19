defmodule ChurchAdminWeb.ChangesSocket do
  @moduledoc """
  The realtime socket at `/socket`. The `token` connect param is a Firebase
  ID token, verified like the `Authorization` header of `/gql`. The socket is
  admitted only for an onboarded account whose user is approved, with the
  actor `ChurchAdmin.Authz.ActorLoader` builds for the uid, and its id is
  `changes_socket:<uid>` so
  `ChurchAdmin.Accounts.DisconnectSocketsOnRevokedApproval` can drop a user's
  sockets. The token's expiry is kept in
  `assigns.token_expires_at` for `ChurchAdminWeb.ChangesChannel` to enforce.
  """

  use Phoenix.Socket

  alias ChurchAdmin.Auth.Principal
  alias ChurchAdmin.Auth.TokenVerifier
  alias ChurchAdmin.Authz.{Actor, ActorLoader}

  channel "changes", ChurchAdminWeb.ChangesChannel

  @id_prefix "changes_socket:"

  @spec id_for(String.t()) :: String.t()
  def id_for(uid), do: @id_prefix <> uid

  @impl true
  def connect(%{"token" => token}, socket, _connect_info) when is_binary(token) do
    with {:ok, %Principal{uid: uid} = principal} when is_binary(uid) <-
           TokenVerifier.verify(token),
         %Actor{approved?: true} = actor <- ActorLoader.load(uid) do
      {:ok,
       socket
       |> assign(:actor, %{actor | principal: principal})
       |> assign(:token_expires_at, principal.claims["exp"])}
    else
      _unverified_or_not_onboarded_or_not_approved -> :error
    end
  end

  def connect(_params, _socket, _connect_info), do: :error

  @impl true
  def id(%{assigns: %{actor: %Actor{uid: uid}}}), do: id_for(uid)
end
