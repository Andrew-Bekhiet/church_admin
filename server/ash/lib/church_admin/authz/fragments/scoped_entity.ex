defmodule ChurchAdmin.Authz.Fragments.ScopedEntity do
  @moduledoc """
  For the entities scoped by per-entity grants (Person, Family, Service,
  Class, Group, Area, Street, Store): the policy authorizer, updates limited
  to the actor's `:edit` scope before and after the change
  (`RecheckAfterUpdate`).

  Reads and destroys differ per entity, so the resource declares them, with
  its `bypass ChurchAdmin.Authz.Checks.System` first (fragment policies come
  after the resource's own), and its `user_can_edit` calculation, which needs
  the entity named because calculations do not see their resource:

      calculate :user_can_edit, :boolean, {UserCanEdit, entity: :person},
        allow_nil?: false, public?: true
  """

  use Spark.Dsl.Fragment, of: Ash.Resource, authorizers: [Ash.Policy.Authorizer]

  alias ChurchAdmin.Authz.Changes.RecheckAfterUpdate
  alias ChurchAdmin.Authz.Checks.InScope

  policies do
    policy action_type(:update) do
      authorize_if {InScope, access: :edit}
    end
  end

  changes do
    change RecheckAfterUpdate, on: [:update]
  end
end
