defmodule ChurchAdminWeb.PageController do
  use ChurchAdminWeb, :controller

  def home(conn, _params) do
    render(conn, :home)
  end
end
