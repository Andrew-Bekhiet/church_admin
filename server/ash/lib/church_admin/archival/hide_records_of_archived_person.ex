defmodule ChurchAdmin.Archival.HideRecordsOfArchivedPerson do
  @moduledoc """
  Hides rows that belong to a soft-deleted person (memberships, contacts the
  person owns) from every read. Rows without a person (family-owned contacts)
  are untouched. The resource needs a `person` relationship and registers the
  policy authorizer through this fragment; its own `bypass System` comes first
  (fragment policies come after the resource's own).
  """

  use Spark.Dsl.Fragment, of: Ash.Resource, authorizers: [Ash.Policy.Authorizer]

  import Ash.Expr

  policies do
    policy action_type(:read) do
      forbid_if expr(exists(person, not is_nil(deleted_at)))
      authorize_if always()
    end
  end
end
