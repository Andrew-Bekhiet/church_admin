defmodule ChurchAdmin.Authz.Fragments.Lookup do
  @moduledoc """
  For Catalog lookup lists: anyone authenticated or not reads them, a user
  holding `approved` (raw, as Hasura's `&approved_user`) writes them. The
  resource adds its own `bypass ChurchAdmin.Authz.Checks.System` first.
  """

  use Spark.Dsl.Fragment, of: Ash.Resource, authorizers: [Ash.Policy.Authorizer]

  alias ChurchAdmin.Authz.Checks.HasPermission

  policies do
    policy action_type(:read) do
      authorize_if always()
    end

    policy action_type([:create, :update, :destroy]) do
      authorize_if {HasPermission, name: "approved"}
    end
  end
end
