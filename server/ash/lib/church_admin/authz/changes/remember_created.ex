defmodule ChurchAdmin.Authz.Changes.RememberCreated do
  @moduledoc """
  Remembers the record a create action writes as created in this command
  (`ChurchAdmin.Authz.Checks.CreatedInCommand`), so the rows the command
  writes for it afterwards (its address, its unclaimed contacts) are
  authorized as Hasura authorized rows hanging off a row inserted in the
  same transaction.

      change {RememberCreated, kind: :family}
  """

  use Ash.Resource.Change

  alias ChurchAdmin.Authz.Checks.CreatedInCommand

  @impl true
  def init(opts) do
    if opts[:kind] in [:person, :family],
      do: {:ok, opts},
      else: {:error, "`kind` is :person or :family"}
  end

  @impl true
  def change(changeset, opts, _context) do
    Ash.Changeset.before_action(changeset, fn changeset ->
      id = Ash.Changeset.get_attribute(changeset, :id)

      Ash.Changeset.set_context(
        changeset,
        CreatedInCommand.remember_created(changeset.context, opts[:kind], id)
      )
    end)
  end
end
