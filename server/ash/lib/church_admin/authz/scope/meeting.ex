defmodule ChurchAdmin.Authz.Scope.Meeting do
  @moduledoc """
  Meetings an actor administers (`:admin`: any row of the retired
  `auth.users_admin_on_meetings` view) or may record persons' or servants'
  attendance in, relative to `ChurchAdmin.Attendance.Meeting`. A study year
  or gender left NULL on either the grant or the meeting matches.
  """

  import Ash.Expr
  import ChurchAdmin.Authz.Scope.Combine

  alias ChurchAdmin.Authz.{Actor, Grant}

  @spec meeting(Actor.t() | nil, ChurchAdmin.Authz.Scope.meeting_access()) :: Ash.Expr.t()
  def meeting(nil, _kind), do: false
  def meeting(%Actor{system?: true}, _kind), do: true

  def meeting(%Actor{} = actor, kind) do
    if records_all?(actor, kind) do
      true
    else
      any_of([
        per_service_grant(
          Enum.filter(actor.service_grants, &grants?(&1, kind)),
          fn ids -> expr(service_id in ^ids) end,
          &meeting_of_restricted_grant/1
        ),
        unless_empty(
          actor.group_grants |> Enum.filter(&grants?(&1, kind)) |> Grant.scope_ids(),
          fn ids -> expr(group_id in ^ids) end
        )
      ])
    end
  end

  defp records_all?(actor, :admin),
    do: actor.record_all_attendance? or actor.record_all_servants_attendance?

  defp records_all?(actor, :record_persons), do: actor.record_all_attendance?
  defp records_all?(actor, :record_servants), do: actor.record_all_servants_attendance?

  defp grants?(%Grant{}, :admin), do: true
  defp grants?(%Grant{record_persons?: record?}, :record_persons), do: record?
  defp grants?(%Grant{record_servants?: record?}, :record_servants), do: record?

  defp meeting_of_restricted_grant(%Grant{} = grant) do
    all_of([
      expr(service_id == ^grant.scope_id),
      if(is_nil(grant.study_year),
        do: true,
        else: expr(is_nil(service_study_year) or service_study_year == ^grant.study_year)
      ),
      if(is_nil(grant.gender),
        do: true,
        else: expr(is_nil(service_gender) or service_gender == ^grant.gender)
      )
    ])
  end
end
