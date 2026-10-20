defmodule ChurchAdmin.People.Contact.Changes.KeepOneMainPerOwner do
  @moduledoc """
  A contact written as the main phone takes the flag from the owner's other
  contacts, before it is written. Runs after
  `ChurchAdmin.People.Contact.Changes.ClaimForSoleFamilyMember`, so the
  owner is the one the contact ends up with.
  """

  use Ash.Resource.Change

  alias ChurchAdmin.People.Contact.Owner

  require Ash.Query

  @impl Ash.Resource.Change
  def change(changeset, _opts, _context) do
    Ash.Changeset.before_action(changeset, fn changeset ->
      if Ash.Changeset.get_attribute(changeset, :is_main_phone) and
           (changeset.action_type == :create or
              Ash.Changeset.changing_attribute?(changeset, :is_main_phone)) do
        demote_others(changeset)
      else
        changeset
      end
    end)
  end

  defp demote_others(changeset) do
    others =
      case changeset.action_type do
        :create -> Owner.contacts(changeset)
        :update -> changeset |> Owner.contacts() |> Ash.Query.filter(id != ^changeset.data.id)
      end

    others
    |> Ash.Query.filter(is_main_phone)
    |> Ash.bulk_update(:update, %{is_main_phone: false},
      authorize?: false,
      strategy: [:stream],
      return_errors?: true,
      stop_on_error?: true
    )
    |> case do
      %Ash.BulkResult{status: :success} -> changeset
      %Ash.BulkResult{errors: errors} -> Ash.Changeset.add_error(changeset, errors)
    end
  end
end
