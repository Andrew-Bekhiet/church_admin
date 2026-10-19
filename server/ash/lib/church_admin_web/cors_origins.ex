defmodule ChurchAdminWeb.CorsOrigins do
  @moduledoc """
  Decides which browser origins (the Flutter web client) may call the API:
  `config :church_admin, :cors_allowed_origins` is `:any` in dev and test and
  the `CORS_ALLOWED_ORIGINS` list in prod.
  """

  @spec allowed?(Plug.Conn.t(), String.t()) :: boolean()
  def allowed?(_conn, origin),
    do: origin_allowed?(origin, Application.fetch_env!(:church_admin, :cors_allowed_origins))

  @spec websocket_origin_allowed?(URI.t()) :: boolean()
  def websocket_origin_allowed?(%URI{} = origin) do
    origin
    |> URI.to_string()
    |> origin_allowed?(Application.fetch_env!(:church_admin, :cors_allowed_origins))
  end

  @spec origin_allowed?(String.t(), :any | [String.t()]) :: boolean()
  def origin_allowed?(_origin, :any), do: true
  def origin_allowed?(origin, allowed_origins), do: origin in allowed_origins
end
