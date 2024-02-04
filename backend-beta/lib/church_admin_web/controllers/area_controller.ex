defmodule ChurchAdminWeb.AreaController do
  use ChurchAdminWeb, :controller

  alias ChurchAdmin.Repo
  alias ChurchAdmin.Schemas
  alias Schemas.Area

  action_fallback ChurchAdminWeb.FallbackController

  def index(conn, _params) do
    areas = Repo.all(Area)

    render(conn, :index, areas: areas)
  end

  def create(conn, %{"area" => area_params}) do
    insert_rslt =
      %Area{}
      |> Area.changeset(area_params)
      |> Repo.insert()

    with {:ok, %Area{} = area} <- insert_rslt do
      conn
      |> put_status(:created)
      |> put_resp_header("location", ~p"/api/areas/#{area}")
      |> render(:show, area: area)
    end
  end

  def show(conn, %{"id" => id}) do
    area = Area |> Repo.get!(id)

    render(conn, :show, area: area)
  end

  def update(conn, %{"id" => id, "area" => area_params}) do
    area = Area |> Repo.get!(id)

    update_rslt =
      area
      |> Area.changeset(area_params)
      |> Repo.update()

    with {:ok, %Area{} = area} <- update_rslt do
      render(conn, :show, area: area)
    end
  end

  def delete(conn, %{"id" => id}) do
    area = Area |> Repo.get!(id)

    with {:ok, %Area{}} <- Repo.delete(area) do
      send_resp(conn, :no_content, "")
    end
  end
end
