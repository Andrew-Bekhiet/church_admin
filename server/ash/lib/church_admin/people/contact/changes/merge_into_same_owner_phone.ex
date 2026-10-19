defmodule ChurchAdmin.People.Contact.Changes.MergeIntoSameOwnerPhone do
  @moduledoc """
  A new contact whose owner already has its phone is merged into that row
  instead of inserted: the row keeps its label unless the new one gives one,
  and is main if either is. The create answers the merged row. Runs last of
  the contact's create changes, once the owner is settled.
  """

  use Ash.Resource.Change

  alias ChurchAdmin.People.Contact.Owner

  require Ash.Query

  @impl true
  def change(changeset, _opts, _context) do
    Ash.Changeset.before_action(changeset, &maybe_merge/1)
  end

  defp maybe_merge(changeset) do
    phone = Ash.Changeset.get_attribute(changeset, :phone)

    changeset
    |> Owner.contacts()
    |> Ash.Query.filter(phone == ^phone)
    |> Ash.read_one!(authorize?: false)
    |> case do
      nil -> changeset
      existing -> merge_into(changeset, existing)
    end
  end

  defp merge_into(changeset, existing) do
    label = Ash.Changeset.get_attribute(changeset, :label) || existing.label
    main? = existing.is_main_phone or Ash.Changeset.get_attribute(changeset, :is_main_phone)

    existing
    |> Ash.Changeset.for_update(:update, %{label: label, is_main_phone: main?}, authorize?: false)
    |> Ash.update(return_notifications?: true)
    |> case do
      {:ok, merged, _notifications} -> Ash.Changeset.set_result(changeset, {:ok, merged})
      {:error, error} -> Ash.Changeset.add_error(changeset, error)
    end
  end
end
