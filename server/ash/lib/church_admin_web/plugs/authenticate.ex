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
          {:error, reason} -> reject(conn, reason)
        end

      _malformed ->
        reject(conn, :malformed_authorization_header)
    end
  end

  defp reject(conn, reason) do
    body = %{
      errors: [
        %{
          message: "unauthenticated: #{reason}",
          extensions: %{code: "unauthenticated", short_message: "unauthenticated"}
        }
      ]
    }

    conn
    |> put_resp_content_type("application/json")
    |> send_resp(401, Jason.encode!(body))
    |> halt()
  end
end
