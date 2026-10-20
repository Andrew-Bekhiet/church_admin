defmodule ChurchAdmin.Places.Changes.ApplyStreetAreas do
  @moduledoc """
  Applies the street's `areas` argument: the areas the street shows in the
  edit form. Only the difference from the areas stored before the command is
  written, after the geography sync, so an area the line has just left is not
  put back by a form that never listed it, and an area the form drops is
  removed from the links the geography made. `nil` leaves the links alone.

  Links are written as the actor, so the actor must be able to edit both the
  area and the street.

      change ApplyStreetAreas
  """

  use Ash.Resource.Change

  alias ChurchAdmin.Changes.AfterActionFailure
  alias ChurchAdmin.Places.AreaStreet

  require Ash.Query

  @impl Ash.Resource.Change
  def change(changeset, _opts, context) do
    case Ash.Changeset.get_argument(changeset, :areas) do
      nil ->
        changeset

      desired ->
        changeset
        |> Ash.Changeset.before_action(&remember_stored_areas/1)
        |> Ash.Changeset.after_action(fn changeset, street ->
          case apply_difference(changeset, street, desired, context.actor) do
            :ok -> {:ok, street}
            {:error, error} -> AfterActionFailure.roll_back(changeset.resource, error)
          end
        end)
    end
  end

  defp remember_stored_areas(changeset) do
    stored =
      if changeset.action.type == :create,
        do: [],
        else: area_ids(changeset.data.id)

    Ash.Changeset.set_context(changeset, %{stored_area_ids: stored})
  end

  defp apply_difference(changeset, street, desired, actor) do
    stored = changeset.context.stored_area_ids
    current = area_ids(street.id)
    to_add = Enum.uniq((desired -- stored) -- current)
    to_remove = (stored -- desired) |> Enum.filter(&(&1 in current))

    with :ok <- add(to_add, street.id, actor) do
      remove(to_remove, street.id, actor)
    end
  end

  defp add(area_ids, street_id, actor) do
    Enum.reduce_while(area_ids, :ok, fn area_id, :ok ->
      AreaStreet
      |> Ash.Changeset.for_create(:create, %{area_id: area_id, street_id: street_id},
        actor: actor
      )
      |> Ash.create()
      |> halt_on_error()
    end)
  end

  defp remove(area_ids, street_id, actor) do
    AreaStreet
    |> Ash.Query.filter(street_id == ^street_id and area_id in ^area_ids)
    |> Ash.read!(authorize?: false, page: false)
    |> Enum.reduce_while(:ok, fn link, :ok ->
      link |> Ash.destroy(actor: actor) |> halt_on_error()
    end)
  end

  defp halt_on_error(:ok), do: {:cont, :ok}
  defp halt_on_error({:ok, _link}), do: {:cont, :ok}
  defp halt_on_error({:error, error}), do: {:halt, {:error, error}}

  defp area_ids(street_id) do
    AreaStreet
    |> Ash.Query.filter(street_id == ^street_id)
    |> Ash.read!(authorize?: false, page: false)
    |> Enum.map(& &1.area_id)
  end
end
