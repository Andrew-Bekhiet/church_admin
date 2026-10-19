defmodule ChurchAdmin.Authz.Checks.HasPermission do
  @moduledoc """
  The actor holds permission `name` in `auth.users_permissions`, approved or
  not (Hasura's `_exists users_permissions` gates).

      authorize_if {ChurchAdmin.Authz.Checks.HasPermission, name: "deleteData"}
  """

  use Ash.Policy.SimpleCheck

  alias ChurchAdmin.Authz.Actor

  @impl true
  def describe(opts), do: "the actor holds the #{opts[:name]} permission"

  @impl true
  def match?(actor, _context, opts), do: Actor.holds?(actor, Keyword.fetch!(opts, :name))
end
