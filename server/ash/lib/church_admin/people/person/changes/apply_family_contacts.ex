defmodule ChurchAdmin.People.Person.Changes.ApplyFamilyContacts do
  @moduledoc """
  Makes the unclaimed contacts of the written person's family (after the
  write) the command's `family_contacts` list, through
  `ChurchAdmin.People.Contacts.replace_unclaimed/3`; `nil` leaves them alone.
  A contact for a type with a sole live member goes to that member.

  As Hasura allowed, the actor may write a family's unclaimed contacts when
  it may edit a live member of the family that is not a family admin, when
  the family was created in this command, or with the system actor. A person
  without a family has no family contacts to write (`validation/invalid`).
  """

  use Ash.Resource.Change

  alias ChurchAdmin.Authz.{Actor, Scope}
  alias ChurchAdmin.Authz.Checks.CreatedInCommand
  alias ChurchAdmin.Changes.AfterActionFailure
  alias ChurchAdmin.Errors.{Codes, DomainError}
  alias ChurchAdmin.People.{Contacts, Person}

  require Ash.Query

  @impl true
  def change(changeset, _opts, context) do
    case Ash.Changeset.get_argument(changeset, :family_contacts) do
      nil ->
        changeset

      contacts ->
        Ash.Changeset.after_action(changeset, fn changeset, person ->
          case replace(changeset, person, contacts, context.actor) do
            :ok -> {:ok, person}
            {:error, error} -> AfterActionFailure.roll_back(changeset.resource, error)
          end
        end)
    end
  end

  defp replace(_changeset, %{family_id: nil}, _contacts, _actor),
    do:
      {:error,
       DomainError.exception(code: Codes.validation_invalid(), fields: [:family_contacts])}

  defp replace(changeset, person, contacts, actor) do
    if may_write?(changeset, person.family_id, actor),
      do: Contacts.replace_unclaimed(person.family_id, contacts, actor),
      else: {:error, Ash.Error.Forbidden.exception([])}
  end

  defp may_write?(_changeset, _family_id, %Actor{system?: true}), do: true

  defp may_write?(changeset, family_id, actor) do
    family_id in CreatedInCommand.created_ids(changeset.context, :family) or
      editable_non_admin_member?(family_id, actor)
  end

  defp editable_non_admin_member?(family_id, actor) do
    Person
    |> Ash.Query.filter(
      family_id == ^family_id and is_nil(deleted_at) and
        not exists(person_type, is_family_admin)
    )
    |> Ash.Query.do_filter(Scope.person(actor, :edit))
    |> Ash.exists?(authorize?: false)
  end
end
