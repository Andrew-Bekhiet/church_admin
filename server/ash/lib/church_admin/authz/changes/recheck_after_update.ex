defmodule ChurchAdmin.Authz.Changes.RecheckAfterUpdate do
  @moduledoc """
  Re-applies a filter check to the updated row inside the update's
  transaction and fails with `Forbidden` when the row no longer matches.
  Hasura evaluated an update's `check` against the post-update row; Ash's
  update policies only see the row as it was.

  `check` is a `{filter_check_module, opts}` pair and defaults to
  `{ChurchAdmin.Authz.Checks.InScope, access: :edit}`. An internal action that
  writes on behalf of another command (the meeting's archive clearing its
  owner's default meeting) opts out with `set_context(%{skip_scope_recheck?:
  true})`; the command's own policy has authorized it. The change is not
  atomic: Ash runs a fully atomic update's after-action hooks outside a
  transaction it could roll back, so an update using it sets
  `require_atomic? false`.
  """

  use Ash.Resource.Change

  import Ash.Expr

  alias ChurchAdmin.Authz.Checks.InScope
  alias ChurchAdmin.Changes.AfterActionFailure

  @impl true
  def change(changeset, opts, context) do
    Ash.Changeset.after_action(changeset, fn changeset, record ->
      if skip_recheck?(changeset) or still_matches?(changeset, record, opts, context.actor) do
        {:ok, record}
      else
        AfterActionFailure.roll_back(changeset.resource, Ash.Error.Forbidden.exception([]))
      end
    end)
  end

  defp skip_recheck?(changeset), do: Map.get(changeset.context, :skip_scope_recheck?, false)

  @impl true
  def atomic(_changeset, _opts, _context),
    do: {:not_atomic, "the row is rechecked after the update, inside its transaction"}

  defp still_matches?(changeset, record, opts, actor) do
    {check, check_opts} = Keyword.get(opts, :check, {InScope, access: :edit})
    resource = changeset.resource

    filter =
      check.filter(
        actor,
        %{resource: resource, action: changeset.action, domain: changeset.domain},
        Keyword.put(check_opts, :resource, resource)
      )

    resource
    |> Ash.Query.do_filter(Map.take(record, Ash.Resource.Info.primary_key(resource)))
    |> Ash.Query.do_filter(expr(^filter))
    |> Ash.exists?(authorize?: false, actor: actor)
  end
end
