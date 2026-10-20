defmodule ChurchAdminWeb.Plugs.Authenticate do
  @moduledoc """
  Sets the Ash actor from the `Authorization: Bearer <Firebase ID token>`
  header. A request without the header proceeds anonymously (nil actor, so
  policies deny); an invalid or expired token ends the request with 401 and a
  GraphQL-shaped error whose `extensions.code` is `unauthenticated`.
  """

  @behaviour Plug

  import Plug.Conn

  alias ChurchAdmin.Auth.TokenVerifier
  alias ChurchAdmin.Authz.Actor
  alias ChurchAdminWeb.Plugs.Unauthenticated

  @impl true
  def init(opts), do: opts

  @impl true
  def call(conn, _opts) do
    case get_req_header(conn, "authorization") do
      [] ->
        Ash.PlugHelpers.set_actor(conn, nil)

      ["Bearer " <> token] ->
        case TokenVerifier.verify(token) do
          {:ok, principal} -> Ash.PlugHelpers.set_actor(conn, Actor.for_principal(principal))
          {:error, reason} -> Unauthenticated.reject(conn, reason)
        end

      _malformed ->
        Unauthenticated.reject(conn, :malformed_authorization_header)
    end
  end
end
