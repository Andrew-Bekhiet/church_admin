defmodule ChurchAdmin.Accounts.GrantAuthority do
  @moduledoc """
  What an actor may hand to another user: a permission it holds itself, and a
  scope (a `users_admin_on` row, keyed by `ChurchAdmin.Accounts.ScopeGrant`
  attribute names) on a container where it manages users, within its own
  study year and gender, with no flag it lacks. `manageAllUsers` holders and
  the system hand out anything.
  """

  alias ChurchAdmin.Authz.{Actor, Grant}

  @type scope :: %{optional(atom()) => term()}
  @type kind :: :service | :group | :area

  @containers [service: :admin_on_service, group: :admin_on_group, area: :admin_on_area]

  @flags %{
    service: [
      service_allow_edit: :edit?,
      service_allow_export: :export?,
      service_allow_record_attendance: :record_persons?,
      service_allow_record_servants_attendance: :record_servants?,
      service_write_related_families: :write_related_families?,
      service_admin_on_users: :manage_users?
    ],
    group: [
      group_allow_edit: :edit?,
      group_allow_export: :export?,
      group_allow_record_attendance: :record_persons?,
      group_allow_record_servants_attendance: :record_servants?,
      group_write_related_families: :write_related_families?,
      group_admin_on_users: :manage_users?
    ],
    area: [
      area_allow_edit: :edit?,
      area_allow_export: :export?,
      area_admin_on_users: :manage_users?
    ]
  }

  @spec permission_grantable?(Actor.t(), String.t()) :: boolean()
  def permission_grantable?(%Actor{system?: true}, _permission), do: true
  def permission_grantable?(%Actor{} = actor, permission), do: Actor.holds?(actor, permission)

  @spec container(scope()) :: {:ok, kind(), String.t()} | :error
  def container(scope) do
    case for {kind, key} <- @containers, id = Map.get(scope, key), do: {kind, id} do
      [{kind, id}] -> {:ok, kind, id}
      _none_or_several -> :error
    end
  end

  @spec scope_manageable?(Actor.t(), scope()) :: boolean()
  def scope_manageable?(%Actor{system?: true}, _scope), do: true

  def scope_manageable?(%Actor{} = actor, scope) do
    Actor.holds?(actor, "manageAllUsers") or
      case container(scope) do
        {:ok, kind, id} -> Enum.any?(grants(actor, kind), &covers?(&1, kind, id, scope))
        :error -> false
      end
  end

  defp grants(actor, :service), do: actor.service_grants
  defp grants(actor, :group), do: actor.group_grants
  defp grants(actor, :area), do: actor.area_grants

  defp covers?(%Grant{} = grant, kind, id, scope) do
    grant.scope_id == id and grant.manage_users? and within_restrictions?(grant, kind, scope) and
      Enum.all?(@flags[kind], fn {flag, grant_flag} ->
        Map.get(scope, flag) != true or Map.fetch!(grant, grant_flag)
      end)
  end

  defp within_restrictions?(grant, :service, scope) do
    restriction_covers?(grant.study_year, Map.get(scope, :service_study_year)) and
      restriction_covers?(grant.gender, Map.get(scope, :service_gender))
  end

  defp within_restrictions?(_grant, _kind, _scope), do: true

  defp restriction_covers?(nil, _requested), do: true
  defp restriction_covers?(own, requested), do: own == requested
end
