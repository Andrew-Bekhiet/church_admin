defmodule ChurchAdmin.Authz.Fragments.PersonChild do
  @moduledoc """
  For rows owned by one person through a `person` relationship (hobbies,
  tags, kodas, confessions, calls, the latest-* views): readable with the
  person's `:read` scope, written with its `:edit` scope. The resource adds
  its own `bypass ChurchAdmin.Authz.Checks.System` first and any rule beyond
  these.
  """

  use Spark.Dsl.Fragment, of: Ash.Resource, authorizers: [Ash.Policy.Authorizer]

  alias ChurchAdmin.Authz.Checks.RelatedInScope

  policies do
    policy action_type(:read) do
      authorize_if {RelatedInScope, path: :person, entity: :person, access: :read}
    end

    policy action_type([:create, :update, :destroy]) do
      authorize_if {RelatedInScope, path: :person, entity: :person, access: :edit}
    end
  end
end
