defmodule ChurchAdmin.Authz.Accounts.UserPolicyTest do
  use ChurchAdmin.AuthzCase, async: false

  alias ChurchAdmin.Accounts.{ScopeGrant, User, UserPermission}
  alias ChurchAdmin.AuthzWorld

  @everyone AuthzWorld.actor_kinds()

  # Every other user with a users_admin_on row on s1, approved or not.
  @s1_users [
    :unapproved_with_grants,
    :service_open,
    :service_open_edit,
    :service_year,
    :service_gender,
    :service_write_related,
    :service_year_edit,
    :service_admin_users,
    :service_record_servants,
    :servant
  ]

  # {actor kind, users read, users it may manage}: approved users read every
  # user (`any-user`), unapproved ones only themselves; managing needs
  # manageAllUsers or an *_admin_on_users grant on a scope the other user
  # also has a row on.
  @expectations [
    {:anonymous, [], []},
    {:unapproved, [:unapproved], []},
    {:unapproved_with_grants, [:unapproved_with_grants], []},
    {:approved_plain, @everyone, []},
    {:read_write, @everyone, []},
    {:manage_users, @everyone, @everyone},
    {:service_admin_users, @everyone, @s1_users -- [:service_admin_users]},
    {:service_open_edit, @everyone, []}
  ]

  for {kind, read, managed} <- @expectations do
    @kind kind
    @read MapSet.new(read)
    @managed MapSet.new(managed)

    test "#{kind} reads #{length(read)} users and manages #{length(managed)}", %{world: world} do
      users =
        User
        |> Ash.Query.load(:current_user_can_manage_this_user)
        |> Ash.read!(actor: actor(world, @kind), page: false)

      assert user_names(users, world) == @read

      assert users |> Enum.filter(& &1.current_user_can_manage_this_user) |> user_names(world) ==
               @managed
    end
  end

  for resource <- [UserPermission, ScopeGrant] do
    @resource resource

    test "#{inspect(resource)} rows follow their user's read scope", %{world: world} do
      own_rows = fn kind ->
        @resource
        |> Ash.read!(actor: actor(world, kind), page: false)
        |> Enum.map(& &1.uid)
        |> MapSet.new()
      end

      everyone_with_rows =
        @resource |> Ash.read!(authorize?: false, page: false) |> MapSet.new(& &1.uid)

      assert own_rows.(:anonymous) == MapSet.new()
      assert own_rows.(:approved_plain) == everyone_with_rows

      assert own_rows.(:unapproved_with_grants) ==
               if(@resource == ScopeGrant,
                 do: MapSet.new([world.users.unapproved_with_grants.uid]),
                 else: MapSet.new()
               )
    end
  end
end
