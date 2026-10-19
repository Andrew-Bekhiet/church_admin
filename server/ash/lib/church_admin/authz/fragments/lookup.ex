defmodule ChurchAdmin.Authz.Fragments.Lookup do
  @moduledoc """
  For Catalog lookup lists: any authenticated actor reads them (Hasura's
  `filter {}` for role `user`, which an unauthenticated request never gets), a
  user holding `approved` (raw, as Hasura's `&approved_user`) writes them. The
  resource adds its own `bypass ChurchAdmin.Authz.Checks.System` first.
  """

  use Spark.Dsl.Fragment, of: Ash.Resource, authorizers: [Ash.Policy.Authorizer]

  alias ChurchAdmin.Authz.Checks.HasPermission

  policies do
    policy action_type(:read) do
      authorize_if actor_present()
    end

    policy action_type([:create, :update, :destroy]) do
      authorize_if {HasPermission, name: "approved"}
    end
  end
end
