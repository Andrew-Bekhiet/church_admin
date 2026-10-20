defmodule ChurchAdmin.People.Person.Changes.ApplyOwnContacts do
  @moduledoc """
  Makes the written person's own contacts the command's `contacts` list
  (`nil` leaves them alone) through `ChurchAdmin.People.Contacts.replace_own/3`.
  """

  use Ash.Resource.Change

  alias ChurchAdmin.Changes.AfterActionFailure
  alias ChurchAdmin.People.Contacts

  @impl Ash.Resource.Change
  def change(changeset, _opts, context) do
    case Ash.Changeset.get_argument(changeset, :contacts) do
      nil ->
        changeset

      contacts ->
        Ash.Changeset.after_action(changeset, fn changeset, person ->
          case Contacts.replace_own(person.id, contacts, context.actor) do
            :ok -> {:ok, person}
            {:error, error} -> AfterActionFailure.roll_back(changeset.resource, error)
          end
        end)
    end
  end
end
