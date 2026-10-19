defmodule ChurchAdminWeb.ChangesSocket do
  @moduledoc """
  The realtime socket at `/socket`. The `token` connect param is a Firebase
  ID token, verified like the `Authorization` header of `/gql`; a socket
  without a valid one is refused.
  """

  use Phoenix.Socket

  alias ChurchAdmin.Auth.TokenVerifier
  alias ChurchAdmin.Authz.Actor

  channel "changes", ChurchAdminWeb.ChangesChannel

  @impl true
  def connect(%{"token" => token}, socket, _connect_info) when is_binary(token) do
    case TokenVerifier.verify(token) do
      {:ok, principal} -> {:ok, assign(socket, :actor, Actor.for_principal(principal))}
      {:error, _reason} -> :error
    end
  end

  def connect(_params, _socket, _connect_info), do: :error

  @impl true
  def id(%{assigns: %{actor: %Actor{uid: uid}}}) when is_binary(uid), do: "changes_socket:" <> uid
  def id(_socket), do: nil
end
