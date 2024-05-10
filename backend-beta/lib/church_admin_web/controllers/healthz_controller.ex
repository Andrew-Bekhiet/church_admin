defmodule ChurchAdminWeb.HealthzController do
  use ChurchAdminWeb, :controller

  action_fallback ChurchAdminWeb.FallbackController

  def index(conn, _params) do
    render(conn, :index)
  end
end
