defmodule ChurchAdmin.Authz.Checks.ApprovedWithPermission do
  @moduledoc """
  The actor is approved and holds permission `name` in
  `auth.users_permissions`. A pending or revoked approval voids every other
  permission the user still holds.

      authorize_if {ChurchAdmin.Authz.Checks.ApprovedWithPermission, name: "deleteData"}
  """

  use Ash.Policy.SimpleCheck

  alias ChurchAdmin.Authz.Actor

  @impl Ash.Policy.Check
  def describe(opts), do: "the actor is approved and holds the #{opts[:name]} permission"

  @impl Ash.Policy.SimpleCheck
  def match?(%Actor{approved?: true} = actor, _context, opts),
    do: Actor.holds?(actor, Keyword.fetch!(opts, :name))

  def match?(_actor, _context, _opts), do: false
end
