defmodule ChurchAdminWeb.AreaJSON do
  alias ChurchAdmin.Schemas.Area

  @doc """
  Renders a list of areas.
  """
  def index(%{areas: [%Area{} | _] = areas}) do
    %{data: for(area <- areas, do: data(area))}
  end

  def index(%{areas: [] = _}) do
    %{data: []}
  end

  @doc """
  Renders a single area.
  """
  def show(%{area: %Area{} = area}) do
    %{data: data(area)}
  end

  defp data(%Area{} = area) do
    %{
      id: area.id,
      name: area.name,
      bounds: area.bounds,
      color: area.color,
      photo_updated_at: area.photo_updated_at
    }
    |> Map.filter(fn {_, v} -> v != nil end)
  end
end
