defmodule ChurchAdmin.Places.Changes.SyncAreasStreets do
  @moduledoc """
  Re-derives the written area's (or street's) `areas_streets` links from the
  geography after the write: when the record is created, or its bounds (line)
  changed, links to what it no longer touches go and links to what it now
  touches arrive. `geography` names the attribute that drives it.

      change {SyncAreasStreets, geography: :bounds}, on: [:create, :update]
  """

  use Ash.Resource.Change

  alias ChurchAdmin.Places.{Area, AreasStreetsSync, Street}

  @options_schema [geography: [type: {:in, [:bounds, :line]}, required: true]]

  @impl Ash.Resource.Change
  def init(opts) do
    case Spark.Options.validate(opts, @options_schema) do
      {:ok, opts} -> {:ok, opts}
      {:error, error} -> {:error, Exception.message(error)}
    end
  end

  @impl Ash.Resource.Change
  def change(changeset, opts, _context) do
    geography = opts[:geography]

    if changeset.action.type == :create or Ash.Changeset.changing_attribute?(changeset, geography) do
      Ash.Changeset.after_action(changeset, fn changeset, record ->
        sync(changeset.resource, changeset.action.type, record.id)
        {:ok, record}
      end)
    else
      changeset
    end
  end

  defp sync(Area, :create, id), do: AreasStreetsSync.link_area(id)

  defp sync(Area, :update, id) do
    AreasStreetsSync.unlink_area(id)
    AreasStreetsSync.link_area(id)
  end

  defp sync(Street, :create, id), do: AreasStreetsSync.link_street(id)

  defp sync(Street, :update, id) do
    AreasStreetsSync.unlink_street(id)
    AreasStreetsSync.link_street(id)
  end
end
