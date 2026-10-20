defmodule ChurchAdminWeb.Plugs.Unauthenticated do
  @moduledoc """
  Ends a request with 401 and a GraphQL-shaped error whose `extensions.code`
  is `unauthenticated`.
  """

  import Plug.Conn

  @spec reject(Plug.Conn.t(), atom()) :: Plug.Conn.t()
  def reject(conn, reason) do
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
