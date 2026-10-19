defmodule ChurchAdmin.DataQuality.Validations.ActorIsNotAFamilyMember do
  @moduledoc """
  Passes unless a live person of the `family_id` attribute's family is the
  acting user's own, approved or not. A family member may override the family's
  data check without being able to read the family, so the override's
  `relation/not-found` check applies only to everyone else.
  """

  use Ash.Resource.Validation

  alias ChurchAdmin.Authz.Actor
  alias ChurchAdmin.People.Person

  require Ash.Query

  @impl true
  def validate(changeset, _opts, %{actor: %Actor{uid: uid}}) when is_binary(uid) do
    family_id = Ash.Changeset.get_attribute(changeset, :family_id)

    member? =
      Person
      |> Ash.Query.filter(family_id == ^family_id and uid == ^uid and is_nil(deleted_at))
      |> Ash.exists?(authorize?: false)

    if member?, do: {:error, "the actor is a member of the family"}, else: :ok
  end

  def validate(_changeset, _opts, _context), do: :ok
end
