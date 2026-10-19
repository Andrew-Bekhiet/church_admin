defmodule ChurchAdmin.Accounts.Changes.SeedPreferences do
  @moduledoc """
  Gives a created user its preferences row in the same transaction: the
  default list orderings (`ChurchAdmin.Accounts.DefaultPreferences`) and the
  great-feast theme on.
  """

  use Ash.Resource.Change

  alias ChurchAdmin.Accounts.{DefaultPreferences, Preferences}
  alias ChurchAdmin.Changes.AfterActionFailure

  @impl true
  def change(changeset, _opts, context) do
    Ash.Changeset.after_action(changeset, fn changeset, user ->
      Preferences
      |> Ash.Changeset.for_create(
        :seed_defaults,
        %{uid: user.uid, order_by_preferences: DefaultPreferences.order_by()},
        actor: context.actor,
        authorize?: false
      )
      |> Ash.create(return_notifications?: true)
      |> case do
        {:ok, _preferences, _notifications} -> {:ok, user}
        {:error, error} -> AfterActionFailure.roll_back(changeset.resource, error)
      end
    end)
  end
end
