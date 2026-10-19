defmodule ChurchAdmin.People.Person.Changes.CreateImplicitFamily do
  @moduledoc """
  A new person given an address and no family gets a new family first,
  named `new_family_name` or else the person's name without its first word;
  the address then goes to that family. Without an address the person keeps
  no family. The family is remembered as created in this command
  (`ChurchAdmin.Authz.Checks.CreatedInCommand`).
  """

  use Ash.Resource.Change

  alias ChurchAdmin.Authz.Checks.CreatedInCommand
  alias ChurchAdmin.People.Family

  @impl true
  def change(changeset, _opts, context) do
    needs_family? =
      is_nil(Ash.Changeset.get_attribute(changeset, :family_id)) and
        not is_nil(Ash.Changeset.get_argument(changeset, :address))

    if needs_family?,
      do: Ash.Changeset.before_action(changeset, &create_family(&1, context.actor)),
      else: changeset
  end

  defp create_family(changeset, actor) do
    Family
    |> Ash.Changeset.for_create(:create_for_person, %{name: family_name(changeset)},
      actor: actor,
      authorize?: false
    )
    |> Ash.create(return_notifications?: true)
    |> case do
      {:ok, family, _notifications} ->
        changeset
        |> Ash.Changeset.force_change_attribute(:family_id, family.id)
        |> Ash.Changeset.set_context(
          CreatedInCommand.remember_created(changeset.context, :family, family.id)
        )

      {:error, error} ->
        Ash.Changeset.add_error(changeset, error)
    end
  end

  defp family_name(changeset) do
    Ash.Changeset.get_argument(changeset, :new_family_name) ||
      changeset
      |> Ash.Changeset.get_attribute(:name)
      |> String.split(" ")
      |> Enum.drop(1)
      |> Enum.join(" ")
  end
end
