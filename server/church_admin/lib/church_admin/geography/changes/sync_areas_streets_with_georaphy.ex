defmodule ChurchAdmin.Geography.Changes.SyncAreasStreetsWithGeoraphy do
  @moduledoc """
  Custom Ash change that syncs geographic relationships when spatial attributes change.

  Removes related objects using old bounds/line, then adds new objects with new bounds/line.

  ## Options
  - `:mode` - Either `:area_to_streets` or `:street_to_areas`

  ## Example Usage

      # For Area syncing streets
      change {Geography.Changes.SyncAreasStreetsWithGeoraphy, mode: :area_to_streets}

      # For Street syncing areas
      change {Geography.Changes.SyncAreasStreetsWithGeoraphy, mode: :street_to_areas}
  """
  use Ash.Resource.Change

  import AshGeo.Postgis
  import Ash.Expr

  require Ash.Query

  alias Ash.Query
  alias Ash.Changeset
  alias ChurchAdmin.Geography.Street
  alias ChurchAdmin.Geography.Area

  @allowed_modes [:area_to_streets, :street_to_areas]

  @impl true
  def init(opts) do
    mode = Keyword.get(opts, :mode)

    if mode not in @allowed_modes do
      {:error, "mode must be one of: #{Enum.join(@allowed_modes, ", ")}"}
    else
      {:ok, [mode: mode]}
    end
  end

  @impl true
  def change(changeset, opts, _context) do
    mode = Keyword.fetch!(opts, :mode)

    cond do
      mode == :area_to_streets and Changeset.changing_attribute?(changeset, :bounds) ->
        sync_area_streets(changeset)

      mode == :street_to_areas and Changeset.changing_attribute?(changeset, :line) ->
        sync_street_areas(changeset)

      true ->
        changeset
    end
  end

  defp sync_area_streets(changeset) do
    old_bounds = Changeset.get_data(changeset, :bounds)
    new_bounds = Changeset.get_attribute(changeset, :bounds)
    threshold = geo_search_threshold()

    changeset
    |> remove_streets_from_bounds(old_bounds, threshold)
    |> add_streets_from_bounds(new_bounds, threshold)
  end

  defp sync_street_areas(changeset) do
    old_line = Changeset.get_data(changeset, :line)
    new_line = Changeset.get_attribute(changeset, :line)
    threshold = geo_search_threshold()

    changeset
    |> remove_areas_from_line(old_line, threshold)
    |> add_areas_from_line(new_line, threshold)
  end

  defp remove_streets_from_bounds(changeset, nil, _threshold), do: changeset

  defp remove_streets_from_bounds(changeset, old_bounds, threshold) do
    old_streets =
      Query.filter(
        Street,
        expr(
          not is_nil(line) and
            ^st_dwithin_in_meters(^old_bounds, line, ^threshold)
        )
      )
      |> Ash.read!()

    # Using on_no_match: :ignore as due to manual linking
    # there could be inconsistencies with geographical matches
    Changeset.manage_relationship(changeset, :streets, old_streets,
      type: :remove,
      on_no_match: :ignore
    )
  end

  defp add_streets_from_bounds(changeset, nil, _threshold), do: changeset

  defp add_streets_from_bounds(changeset, new_bounds, threshold) do
    new_streets =
      Query.filter(
        Street,
        expr(
          not is_nil(line) and
            ^st_dwithin_in_meters(^new_bounds, line, ^threshold)
        )
      )
      |> Ash.read!()

    Changeset.manage_relationship(changeset, :streets, new_streets, type: :append)
  end

  defp remove_areas_from_line(changeset, nil, _threshold), do: changeset

  defp remove_areas_from_line(changeset, old_line, threshold) do
    old_areas =
      Query.filter(
        Area,
        expr(
          not is_nil(bounds) and
            ^st_dwithin_in_meters(bounds, ^old_line, ^threshold)
        )
      )
      |> Ash.read!()

    # Using on_no_match: :ignore as due to manual linking
    # there could be inconsistencies with geographical matches
    Changeset.manage_relationship(changeset, :areas, old_areas,
      type: :remove,
      on_no_match: :ignore
    )
  end

  defp add_areas_from_line(changeset, nil, _threshold), do: changeset

  defp add_areas_from_line(changeset, new_line, threshold) do
    new_areas =
      Query.filter(
        Area,
        expr(
          not is_nil(bounds) and
            ^st_dwithin_in_meters(bounds, ^new_line, ^threshold)
        )
      )
      |> Ash.read!()

    Changeset.manage_relationship(changeset, :areas, new_areas, type: :append)
  end

  defp geo_search_threshold() do
    case Application.get_env(:church_admin, :geo_search_threshold, 0) do
      v when is_integer(v) ->
        v

      _ ->
        0
    end
  end
end
