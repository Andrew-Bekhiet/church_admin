defmodule ChurchAdminWeb.AreaJSON do
  alias ChurchAdmin.Schemas.Area

  @doc """
  Renders a list of areas.
  """
  def index(%{areas: areas}) do
    %{data: for(area <- areas, do: data(area))}
  end

  @doc """
  Renders a single area.
  """
  def show(%{area: area}) do
    %{data: data(area)}
  end

  defp data(%Area{} = area) do
    area
  end
end
