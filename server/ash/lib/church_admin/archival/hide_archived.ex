defmodule ChurchAdmin.Archival.HideArchived do
  @moduledoc """
  Hides soft-deleted rows (`deleted_at` set) from every read, as a read
  policy, the same place Hasura's select rules filtered them: top-level
  reads, relationship loads, user filters and aggregates over the resource
  drop them, while `exists` expressions inside other policies still see
  them, which the permission scopes rely on where the old view counted
  deleted rows. The system actor bypasses it, as Hasura's admin role did.
  The resource registers the policy authorizer itself (directly or through
  `ChurchAdmin.Authz.Fragments.ScopedEntity`).

  Replaced by AshArchival once the soft-delete triggers move to Ash. A
  read-action filter or preparation would also apply inside those `exists`
  subqueries (AshSql builds them through the destination's read action).
  """

  use Spark.Dsl.Fragment, of: Ash.Resource, extensions: [Ash.Policy.Authorizer]

  import Ash.Expr

  policies do
    policy action_type(:read) do
      forbid_if expr(not is_nil(deleted_at))
      authorize_if always()
    end
  end
end
