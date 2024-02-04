defmodule ChurchAdminWeb.AreaController do
  use ChurchAdminWeb, :controller

  alias ChurchAdmin.Repo
  alias ChurchAdmin.Schemas
  alias Schemas.Area

  import Ecto.Query

  action_fallback ChurchAdminWeb.FallbackController

  def index(conn, params) do
    with {:ok, query} <- select_fields(params) do
      areas =
        query
        |> order_by([a], a.name)
        |> Repo.all()

      render(conn, :index, areas: areas)
    end
  end

  defp select_fields(%{"full" => "true"}) do
    {:ok, from(Area)}
  end

  defp select_fields(%{"subtitle" => field}) when field not in ["id", "name"] do
    field_atom =
      Area.__schema__(:fields)
      |> Enum.find(fn f -> field == Atom.to_string(f) end)

    case field_atom do
      nil ->
        {:error, %{status: :bad_request, message: "Invalid field: #{field}"}}

      _ ->
        query =
          from(Area)
          |> select(
            [a],
            %Area{
              ^field_atom => field(a, ^field_atom),
              id: a.id,
              name: a.name
            }
          )

        {:ok, query}
    end
  end

  defp select_fields(_) do
    query = from(Area) |> select([a], %Area{id: a.id, name: a.name})

    {:ok, query}
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
    with %Area{} = area <- Area |> Repo.get(id) do
      render(conn, :show, area: area)
    else
      nil ->
        {:error, %{status: :not_found, message: "Area not found"}}
    end
  end

  def update(conn, %{"id" => id, "area" => area_params}) do
    area = Area |> Repo.get(id)

    update_rslt =
      area
      |> Area.changeset(area_params)
      |> Repo.update()

    with {:ok, %Area{} = area} <- update_rslt do
      render(conn, :show, area: area)
    end
  end

  def delete(conn, %{"id" => id}) do
    with area <- Area |> Repo.get!(id),
         {:ok, %Area{}} <- Repo.delete(area) do
      send_resp(conn, :no_content, "")
    end
  end
end
