defmodule ChurchAdminWeb.HealthController do
  use ChurchAdminWeb, :controller

  def show(conn, _params), do: text(conn, "OK")
end
