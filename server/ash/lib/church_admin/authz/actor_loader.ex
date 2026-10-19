defmodule ChurchAdmin.Authz.ActorLoader do
  @moduledoc """
  Builds the request actor for a uid in one SQL round trip: the user's raw
  permissions, own person, own scope grants, the users those grants let it
  manage and the approved servants its record-servants grants let it read.
  Nothing is cached across requests, so a grant change applies on the next
  request.
  """

  alias ChurchAdmin.Authz.{Actor, Grant}
  alias ChurchAdmin.Repo

  @facts_sql """
  with grants as (
      select * from auth.users_admin_on where uid = $1
  ),
  approved as (
      select uid from auth.users_permissions where permission = 'approved'
  )
  select
      array(select permission from auth.users_permissions where uid = $1),
      (select id::text from persons where uid = $1),
      (select family_id::text from persons where uid = $1 and deleted_at is null),
      coalesce((select json_agg(row_to_json(grants)) from grants), '[]'::json),
      array(
          select distinct managed.uid::text
          from grants as admin
          inner join auth.users_admin_on as managed
              on coalesce(admin.area_admin_on_users, false)
              and admin.admin_on_area = managed.admin_on_area
              or coalesce(admin.group_admin_on_users, false)
              and admin.admin_on_group = managed.admin_on_group
              or coalesce(admin.service_admin_on_users, false)
              and admin.admin_on_service = managed.admin_on_service
          where managed.uid <> $1
      ),
      array(
          select distinct attended.uid::text
          from grants as recorder
          inner join auth.users_admin_on as attended
              on attended.uid <> $1
              and (
                  coalesce(recorder.service_allow_record_servants_attendance, false)
                  and recorder.admin_on_service = attended.admin_on_service
                  and (recorder.service_study_year is null
                      or attended.service_study_year is null
                      or recorder.service_study_year = attended.service_study_year)
                  and (recorder.service_gender is null
                      or attended.service_gender is null
                      or recorder.service_gender = attended.service_gender)
                  or coalesce(recorder.group_allow_record_servants_attendance, false)
                  and recorder.admin_on_group = attended.admin_on_group
              )
          inner join approved on approved.uid = attended.uid
      )
  """

  @spec load(String.t()) :: Actor.t()
  def load(uid) when is_binary(uid) do
    %{rows: [row]} = Repo.query!(@facts_sql, [Ecto.UUID.dump!(uid)])
    from_facts(uid, row)
  end

  defp from_facts(uid, [permissions, person_id, family_id, grants, managed, servants]) do
    permissions = MapSet.new(permissions)
    held? = &MapSet.member?(permissions, &1)
    approved? = held?.("approved")
    read_all? = approved? and held?.("readAllData")
    write_all? = read_all? and held?.("writeAllData")
    approved_only = fn facts -> if approved?, do: facts, else: [] end

    %Actor{
      uid: uid,
      person_id: person_id,
      family_id: if(approved?, do: family_id),
      approved?: approved?,
      permissions: permissions,
      read_all?: read_all?,
      write_all?: write_all?,
      export_all?: read_all? and held?.("exportAllData"),
      manage_all_users?: write_all? and held?.("manageAllUsers"),
      record_all_attendance?: read_all? and held?.("recordAllAttendance"),
      record_all_servants_attendance?: read_all? and held?.("recordAllServantsAttendance"),
      service_grants: approved_only.(service_grants(grants)),
      group_grants: approved_only.(group_grants(grants)),
      area_grants: approved_only.(area_grants(grants)),
      managed_user_uids: approved_only.(managed),
      visible_servant_uids: approved_only.(servants)
    }
  end

  defp service_grants(rows) do
    for %{"admin_on_service" => service_id} = row <- rows, service_id do
      %Grant{
        id: row["permission_id"],
        scope_id: service_id,
        study_year: row["service_study_year"],
        gender: row["service_gender"],
        edit?: row["service_allow_edit"] == true,
        export?: row["service_allow_export"] == true,
        manage_users?: row["service_admin_on_users"] == true,
        write_related_families?: row["service_write_related_families"] == true,
        record_persons?: row["service_allow_record_attendance"] == true,
        record_servants?: row["service_allow_record_servants_attendance"] == true
      }
    end
  end

  defp group_grants(rows) do
    for %{"admin_on_group" => group_id} = row <- rows, group_id do
      %Grant{
        id: row["permission_id"],
        scope_id: group_id,
        edit?: row["group_allow_edit"] == true,
        export?: row["group_allow_export"] == true,
        manage_users?: row["group_admin_on_users"] == true,
        write_related_families?: row["group_write_related_families"] == true,
        record_persons?: row["group_allow_record_attendance"] == true,
        record_servants?: row["group_allow_record_servants_attendance"] == true
      }
    end
  end

  defp area_grants(rows) do
    for %{"admin_on_area" => area_id} = row <- rows, area_id do
      %Grant{
        id: row["permission_id"],
        scope_id: area_id,
        edit?: row["area_allow_edit"] == true,
        export?: row["area_allow_export"] == true,
        manage_users?: row["area_admin_on_users"] == true
      }
    end
  end
end
