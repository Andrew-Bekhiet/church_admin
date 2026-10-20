defmodule ChurchAdmin.Authz.Checks.HoldsRosterGrant do
  @moduledoc """
  Filter check for `ChurchAdmin.Attendance.RosterEntry`: the row falls under
  a group grant of the actor, or under a service grant of its service whose
  study year and gender are unset or equal the rostered person's. Grants of
  any flags count; the actor holds none unless approved.
  """

  use Ash.Policy.FilterCheck

  import Ash.Expr
  import ChurchAdmin.Authz.Scope.Combine

  alias ChurchAdmin.Authz.{Actor, Grant}

  @impl Ash.Policy.Check
  def describe(_opts), do: "a grant of the actor covers the roster row"

  @impl Ash.Policy.FilterCheck
  def filter(%Actor{} = actor, _context, _opts) do
    any_of([
      unless_empty(Grant.scope_ids(actor.group_grants), fn ids -> expr(group_id in ^ids) end),
      per_service_grant(
        actor.service_grants,
        fn ids -> expr(service_id in ^ids) end,
        &person_of_restricted_grant/1
      )
    ])
  end

  def filter(nil, _context, _opts), do: false

  defp person_of_restricted_grant(%Grant{} = grant) do
    all_of([
      expr(service_id == ^grant.scope_id),
      if(is_nil(grant.study_year),
        do: true,
        else: expr(not is_nil(study_year_id) and study_year_id == ^grant.study_year)
      ),
      if(is_nil(grant.gender),
        do: true,
        else: expr(not is_nil(gender) and gender == ^grant.gender)
      )
    ])
  end
end
