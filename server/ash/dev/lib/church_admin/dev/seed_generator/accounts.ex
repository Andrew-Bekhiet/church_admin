defmodule ChurchAdmin.Dev.SeedGenerator.Accounts do
  @moduledoc """
  Rows for the account tables: users, their global permissions, the scoped
  `users_admin_on` grants, invitations for the pending users, and devices.
  """

  alias ChurchAdmin.Dev.SeedGenerator.{Ids, Rng, UserMatrix}

  @type scope_targets :: %{
          service_ids: [String.t()],
          group_ids: [String.t()],
          area_ids: [String.t()]
        }

  @spec build([map()], map(), scope_targets()) :: map()
  def build(users, spec, targets) do
    grants = Enum.flat_map(users, &grants(&1, targets))
    actor = Enum.find(users, &(&1.key == "manage_users"))

    %{
      users_data: Enum.map(users, &user_row/1),
      permissions: permissions(users),
      admin_on: grants,
      invitations: invitations(users, actor),
      fcm_tokens: fcm_tokens(users, spec),
      themed_uids: themed_uids(users),
      actor_uid: actor.uid
    }
  end

  defp user_row(user),
    do: Map.take(user, [:uid, :name, :email, :auth_id])

  defp permissions(users) do
    for user <- users, permission <- user.kind.permissions do
      %{uid: user.uid, permission: permission}
    end
  end

  defp grants(user, targets) do
    kind_grants = if Map.get(user.kind, :filler?), do: filler_grants(), else: user.kind.grants

    kind_grants
    |> Enum.with_index()
    |> Enum.map(fn {grant, position} -> admin_on_row(user, grant, position, targets) end)
  end

  defp admin_on_row(user, grant, position, targets) do
    base = %{permission_id: Ids.uuid("admin_on", "#{user.key}:#{position}"), uid: user.uid}
    Map.merge(base, scope_columns(grant, user, targets))
  end

  defp scope_columns(%{scope: :service} = grant, user, targets) do
    %{
      admin_on_service: target(grant, user, targets.service_ids),
      service_gender: grant.gender,
      service_study_year: grant.study_year,
      service_allow_edit: grant.edit,
      service_admin_on_users: grant.admin_users,
      service_write_related_families: grant.write_related,
      service_allow_export: grant.export,
      service_allow_record_attendance: grant.record_persons,
      service_allow_record_servants_attendance: grant.record_servants
    }
  end

  defp scope_columns(%{scope: :group} = grant, user, targets) do
    %{
      admin_on_group: target(grant, user, targets.group_ids),
      group_allow_edit: grant.edit,
      group_admin_on_users: grant.admin_users,
      group_write_related_families: grant.write_related,
      group_allow_export: grant.export,
      group_allow_record_attendance: grant.record_persons,
      group_allow_record_servants_attendance: grant.record_servants
    }
  end

  defp scope_columns(%{scope: :area} = grant, user, targets) do
    %{
      admin_on_area: target(grant, user, targets.area_ids),
      area_allow_edit: grant.edit,
      area_admin_on_users: grant.admin_users,
      area_allow_export: grant.export
    }
  end

  defp target(%{target: index}, _user, ids), do: Enum.at(ids, rem(index, length(ids)))
  defp target(_grant, %{key: "member_" <> _}, ids), do: Rng.pick(ids)
  defp target(_grant, _user, ids), do: hd(ids)

  defp filler_grants do
    scope = Rng.weighted([{:service, 50}, {:group, 25}, {:area, 25}])
    edit? = Rng.chance?(0.5)
    options = [edit: edit?, export: Rng.chance?(0.2), admin_users: edit? and Rng.chance?(0.2)]

    options =
      if scope == :service and Rng.chance?(0.4) do
        [{:gender, Rng.chance?(0.5)}, {:study_year, Rng.int(1, 6)} | options]
      else
        options
      end

    [UserMatrix.grant(scope, options)]
  end

  defp invitations(users, actor) do
    users
    |> Enum.filter(& &1.pending?)
    |> Enum.with_index(1)
    |> Enum.map(fn {user, number} ->
      %{
        id: Ids.uuid("invitation", user.key),
        user_uid: user.uid,
        created_by: actor.uid,
        code: "SEED-PEND-" <> String.pad_leading(Integer.to_string(number), 4, "0")
      }
    end)
  end

  defp fcm_tokens(users, spec) do
    for user <- users, not user.pending?, number <- 1..spec.fcm_tokens_per_user do
      %{uid: user.uid, token: "seed-fcm-#{user.auth_id}-#{number}"}
    end
  end

  defp themed_uids(users) do
    %{
      dark: for(user <- users, rem(user.index, 3) == 0, do: user.uid),
      light: for(user <- users, rem(user.index, 3) == 1, do: user.uid)
    }
  end
end
