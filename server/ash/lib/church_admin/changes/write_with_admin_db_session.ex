defmodule ChurchAdmin.Changes.WriteWithAdminDbSession do
  @moduledoc """
  Transitional, until no database object reads `hasura.user`: the action
  writes with the system's database session (role admin), which the
  baseline's guard triggers let through, while its policies and validations
  still authorize the actor. For commands ported from functions that wrote
  through Hasura's admin secret, such as `createUser`.
  """

  use Ash.Resource.Change

  alias ChurchAdmin.Authz.Actor
  alias ChurchAdmin.Repo
  alias ChurchAdmin.Repo.HasuraSession

  @impl true
  def change(changeset, _opts, _context) do
    Ash.Changeset.before_action(changeset, fn changeset ->
      HasuraSession.set_for_transaction(Repo, Actor.system())
      changeset
    end)
  end
end
