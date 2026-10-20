defmodule ChurchAdmin.Authz.Checks.MeetingWriteGate do
  @moduledoc """
  Filter check for writing a meeting (Hasura's `meeting_write_permission`):
  the actor is approved and either holds `recordAllAttendance` for a meeting
  whose audience includes persons, holds `recordAllServantsAttendance` for one
  whose audience includes servants, has a grant of any flags on the meeting's
  group, or has a grant on the meeting's service whose study year and gender,
  when set, equal the meeting's.

  Stricter than the read scope `ChurchAdmin.Authz.Scope.Meeting`: a grant
  limited to a study year does not cover a meeting without one.
  """

  use Ash.Policy.FilterCheck

  import Ash.Expr
  import ChurchAdmin.Authz.Scope.Combine

  alias ChurchAdmin.Authz.{Actor, Grant}

  @impl Ash.Policy.Check
  def describe(_opts), do: "the actor may write the meeting"

  @impl Ash.Policy.FilterCheck
  def filter(%Actor{approved?: true} = actor, _context, _opts) do
    any_of([
      when_held(
        actor,
        "recordAllAttendance",
        expr(audience in [:only_persons, :persons_and_servants])
      ),
      when_held(
        actor,
        "recordAllServantsAttendance",
        expr(audience in [:only_servants, :persons_and_servants])
      ),
      unless_empty(Grant.scope_ids(actor.group_grants), fn ids -> expr(group_id in ^ids) end),
      per_service_grant(
        actor.service_grants,
        fn ids -> expr(service_id in ^ids) end,
        &meeting_of_restricted_grant/1
      )
    ])
  end

  def filter(_actor, _context, _opts), do: false

  defp when_held(actor, permission, audience_condition),
    do: if(Actor.holds?(actor, permission), do: audience_condition, else: false)

  defp meeting_of_restricted_grant(%Grant{} = grant) do
    all_of([
      expr(service_id == ^grant.scope_id),
      if(is_nil(grant.study_year), do: true, else: expr(service_study_year == ^grant.study_year)),
      if(is_nil(grant.gender), do: true, else: expr(service_gender == ^grant.gender))
    ])
  end
end
