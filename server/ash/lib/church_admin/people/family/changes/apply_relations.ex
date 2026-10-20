defmodule ChurchAdmin.People.Family.Changes.ApplyRelations do
  @moduledoc """
  Makes the written family's parent and child families the id lists the
  command was given (`nil` leaves a list alone, `[]` empties it): links to
  families no longer named are removed first, then links to newly named
  ones are added. Each link is written as the actor through
  `ChurchAdmin.People.FamilyRelation`, whose policies require editing both
  families, as Hasura's rules on `families_families` did.
  """

  use Ash.Resource.Change

  alias ChurchAdmin.Changes.AfterActionFailure
  alias ChurchAdmin.People.FamilyRelation

  @sides [
    parents: {:child_family_id, :parent_family_id},
    children: {:parent_family_id, :child_family_id}
  ]

  @impl true
  def change(changeset, _opts, context) do
    Ash.Changeset.after_action(changeset, fn changeset, family ->
      case apply_sides(changeset, family.id, context.actor) do
        :ok -> {:ok, family}
        {:error, error} -> AfterActionFailure.roll_back(changeset.resource, error)
      end
    end)
  end

  defp apply_sides(changeset, family_id, actor) do
    Enum.reduce_while(@sides, :ok, fn {argument, columns}, :ok ->
      case Ash.Changeset.get_argument(changeset, argument) do
        nil ->
          {:cont, :ok}

        wanted ->
          case replace(columns, family_id, Enum.uniq(wanted), actor) do
            :ok -> {:cont, :ok}
            error -> {:halt, error}
          end
      end
    end)
  end

  defp replace({own, other}, family_id, wanted, actor) do
    links =
      FamilyRelation
      |> Ash.Query.do_filter([{own, family_id}])
      |> Ash.read!(authorize?: false, page: false)

    linked = links |> Enum.map(&Map.fetch!(&1, other)) |> Enum.uniq()
    unlinked = for link <- links, Map.fetch!(link, other) not in wanted, do: link
    added = for id <- wanted -- linked, do: %{own => family_id, other => id}

    with :ok <- each(unlinked, &Ash.destroy(&1, actor: actor, return_notifications?: true)) do
      each(added, &create_link(&1, actor))
    end
  end

  defp create_link(attrs, actor) do
    FamilyRelation
    |> Ash.Changeset.for_create(:create, attrs, actor: actor)
    |> Ash.create(return_notifications?: true)
  end

  defp each(items, write) do
    Enum.reduce_while(items, :ok, fn item, :ok ->
      case write.(item) do
        {:error, error} -> {:halt, {:error, error}}
        _written -> {:cont, :ok}
      end
    end)
  end
end
