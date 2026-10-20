defmodule ChurchAdmin.People.Contact.Changes.ClaimForSoleFamilyMember do
  @moduledoc """
  A family contact for a person type that exactly one live member of the
  family has becomes that member's contact; it stays main only when the
  member has no main phone yet. A family contact of a type with no member or
  several stays with the family.
  """

  use Ash.Resource.Change

  alias ChurchAdmin.People.{Contact, Person}

  require Ash.Query

  @impl Ash.Resource.Change
  def change(changeset, _opts, _context) do
    Ash.Changeset.before_action(changeset, &maybe_claim/1)
  end

  defp maybe_claim(changeset) do
    family_id = Ash.Changeset.get_attribute(changeset, :family_id)
    person_type_id = Ash.Changeset.get_attribute(changeset, :person_type_id)

    case Ash.Changeset.get_attribute(changeset, :person_id) do
      nil -> claim_for(changeset, sole_member_id(family_id, person_type_id))
      _person_id -> changeset
    end
  end

  defp claim_for(changeset, nil), do: changeset

  defp claim_for(changeset, member_id) do
    main? =
      Ash.Changeset.get_attribute(changeset, :is_main_phone) and not has_main_phone?(member_id)

    Ash.Changeset.force_change_attributes(changeset, %{
      person_id: member_id,
      family_id: nil,
      person_type_id: nil,
      is_main_phone: main?
    })
  end

  defp sole_member_id(family_id, person_type_id) do
    Person
    |> Ash.Query.filter(
      family_id == ^family_id and person_type_id == ^person_type_id and is_nil(deleted_at)
    )
    |> Ash.Query.select([:id])
    |> Ash.Query.limit(2)
    |> Ash.read!(authorize?: false)
    |> case do
      [%{id: id}] -> id
      _none_or_several -> nil
    end
  end

  @doc false
  def has_main_phone?(person_id) do
    Contact
    |> Ash.Query.filter(person_id == ^person_id and is_main_phone)
    |> Ash.exists?(authorize?: false)
  end
end
