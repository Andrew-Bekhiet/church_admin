defmodule ChurchAdmin.Places.AreasStreetsSync do
  @moduledoc """
  Keeps `areas_streets` in step with the geography: a street belongs to every
  area whose bounds it touches (`ST_DWithin(bounds, line, 0)`). Each function
  is one set-based statement over the stored rows, so it sees the area or
  street the command has just written, and counts soft-deleted areas and
  streets like the triggers it replaced.

  A side that changed `unlink_*` first drops the links to streets (areas) that
  have a line (bounds) and no longer touch, then `link_*` adds the new ones;
  a link to a street without a line is geography-neutral and stays.
  """

  import Ecto.Query

  alias ChurchAdmin.Repo

  @spec unlink_area(Ecto.UUID.t()) :: :ok
  def unlink_area(area_id) do
    from(link in "areas_streets",
      join: area in "areas",
      on: area.id == link.area_id,
      join: street in "streets",
      on: street.id == link.street_id,
      where: link.area_id == type(^area_id, :binary_id),
      where: not is_nil(street.line),
      where: is_nil(area.bounds) or not fragment("ST_DWithin(?, ?, 0)", area.bounds, street.line)
    )
    |> Repo.delete_all()

    :ok
  end

  @spec link_area(Ecto.UUID.t()) :: :ok
  def link_area(area_id) do
    from(area in "areas",
      join: street in "streets",
      on: fragment("ST_DWithin(?, ?, 0)", area.bounds, street.line),
      where: area.id == type(^area_id, :binary_id),
      select: %{area_id: area.id, street_id: street.id}
    )
    |> insert_links()
  end

  @spec unlink_street(Ecto.UUID.t()) :: :ok
  def unlink_street(street_id) do
    from(link in "areas_streets",
      join: area in "areas",
      on: area.id == link.area_id,
      join: street in "streets",
      on: street.id == link.street_id,
      where: link.street_id == type(^street_id, :binary_id),
      where: not is_nil(area.bounds),
      where: is_nil(street.line) or not fragment("ST_DWithin(?, ?, 0)", area.bounds, street.line)
    )
    |> Repo.delete_all()

    :ok
  end

  @spec link_street(Ecto.UUID.t()) :: :ok
  def link_street(street_id) do
    from(street in "streets",
      join: area in "areas",
      on: fragment("ST_DWithin(?, ?, 0)", area.bounds, street.line),
      where: street.id == type(^street_id, :binary_id),
      select: %{area_id: area.id, street_id: street.id}
    )
    |> insert_links()
  end

  defp insert_links(query) do
    Repo.insert_all("areas_streets", query, on_conflict: :nothing)
    :ok
  end
end
