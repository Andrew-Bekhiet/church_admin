defmodule ChurchAdmin.Authz.Checks.InScope do
  @moduledoc """
  Filter check: the record is in the actor's `ChurchAdmin.Authz.Scope` for
  `access` (`:read`, `:edit` or `:export`). `entity` defaults to the entity
  the checked resource stands for; it can name any `Scope` function, so
  meetings and history rows use it too.

      authorize_if {ChurchAdmin.Authz.Checks.InScope, access: :read}
      authorize_if {ChurchAdmin.Authz.Checks.InScope, entity: :meeting, access: :record_persons}
      authorize_if {ChurchAdmin.Authz.Checks.InScope, entity: :history_record, access: :read}
  """

  use Ash.Policy.FilterCheck

  alias ChurchAdmin.Authz.Scope

  @impl Ash.Policy.Check
  def describe(opts), do: "the record is in the actor's #{opts[:access]} scope"

  @impl Ash.Policy.FilterCheck
  def filter(actor, context, opts) do
    entity = opts[:entity] || Scope.entity_of(context.resource)
    Scope.for_entity(entity, actor, Keyword.fetch!(opts, :access))
  end
end
