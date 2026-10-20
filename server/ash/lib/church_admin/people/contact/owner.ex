defmodule ChurchAdmin.People.Contact.Owner do
  @moduledoc """
  Who a contact belongs to: a person (`person_id`), or, while unclaimed, a
  family and person type (`family_id`, `person_type_id`). `contacts/1` is
  the query for every contact of the owner a changeset writes.
  """

  import Ash.Expr

  alias ChurchAdmin.People.Contact

  @spec contacts(Ash.Changeset.t()) :: Ash.Query.t()
  def contacts(changeset) do
    person_id = Ash.Changeset.get_attribute(changeset, :person_id)
    family_id = Ash.Changeset.get_attribute(changeset, :family_id)
    person_type_id = Ash.Changeset.get_attribute(changeset, :person_type_id)

    owner =
      if person_id,
        do: expr(person_id == ^person_id),
        else:
          expr(
            is_nil(person_id) and family_id == ^family_id and person_type_id == ^person_type_id
          )

    Ash.Query.do_filter(Contact, owner)
  end
end
