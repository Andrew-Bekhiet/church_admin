defmodule ChurchAdmin.Authz.Fragments.Lookup do
  @moduledoc """
  For Catalog lookup lists: any approved actor reads them (Hasura's
  `filter {}` also let unapproved users read them), and writes them (as
  Hasura's `&approved_user`). The resource adds its own
  `bypass ChurchAdmin.Authz.Checks.System` first.
  """

  use Spark.Dsl.Fragment, of: Ash.Resource, authorizers: [Ash.Policy.Authorizer]

  alias ChurchAdmin.Authz.Checks.{Approved, ApprovedWithPermission}

  policies do
    policy action_type(:read) do
      authorize_if Approved
    end

    policy action_type([:create, :update, :destroy]) do
      authorize_if {ApprovedWithPermission, name: "approved"}
    end
  end
end
