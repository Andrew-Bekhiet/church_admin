defmodule ChurchAdmin.Activity.Changes.ApplyVisitSubject do
  @moduledoc """
  Stores the visited subject's plural name as the visit's `table`, and
  refuses a father visit to anything but a family.
  """

  use Ash.Resource.Change

  alias ChurchAdmin.Errors.{Codes, DomainError}

  @impl Ash.Resource.Change
  def change(changeset, _opts, _context) do
    subject = Ash.Changeset.get_argument(changeset, :subject)
    changeset = Ash.Changeset.change_attribute(changeset, :table, Atom.to_string(subject))

    if father_visit?(changeset) and subject != :families do
      Ash.Changeset.add_error(
        changeset,
        DomainError.exception(code: Codes.validation_invalid(), fields: [:is_father_visit])
      )
    else
      changeset
    end
  end

  defp father_visit?(changeset), do: Ash.Changeset.get_attribute(changeset, :is_father_visit)
end
