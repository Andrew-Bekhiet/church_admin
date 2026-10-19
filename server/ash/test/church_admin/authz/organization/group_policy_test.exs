defmodule ChurchAdmin.Authz.Organization.GroupPolicyTest do
  use ChurchAdmin.AuthzCase, async: false

  alias ChurchAdmin.Authz.Actor
  alias ChurchAdmin.Organization.Group

  setup %{world: world}, do: {:ok, world: ChurchAdmin.OrgWorld.extend(world)}

  @every_live [:g1, :g2, :g_s2, :g_area_deleted]

  # {actor kind, groups read, groups with userCanEdit}, from the view's group
  # branches (authz-and-reads §2.1): admin on the group, or a member reached
  # through an area's families or stores. Service grants reach no group. The
  # area branch counts soft-deleted members, so g_area_deleted (whose only
  # member is a deleted person of an area family) is readable (Q8).
  @expectations [
    {:anonymous, [], []},
    {:unapproved, [], []},
    {:unapproved_with_grants, [], []},
    {:approved_plain, [], []},
    {:read_all, @every_live, []},
    {:export_all, @every_live, []},
    {:read_write, @every_live, @every_live},
    {:manage_users, @every_live, @every_live},
    {:service_open_edit, [], []},
    {:service_admin_users, [], []},
    {:group_read, [:g1], []},
    {:group_edit, [:g1], [:g1]},
    {:area_read, [:g2, :g_area_deleted], []},
    {:area_edit, [:g2, :g_area_deleted], []}
  ]

  for {kind, read, editable} <- @expectations do
    @kind kind
    @read MapSet.new(read)
    @editable MapSet.new(editable)

    test "#{kind} reads #{inspect(read)} and may edit #{inspect(editable)}", %{world: world} do
      assert visible(world, Group, @kind) == @read
      assert flagged(world, Group, @kind, :user_can_edit) == @editable
    end
  end

  test "the system actor reads the soft-deleted group too", %{world: world} do
    groups = Ash.read!(Group, actor: Actor.system(), page: false)

    assert names(groups, world) ==
             MapSet.new([:g1, :g2, :g_s2, :g_area_deleted, :g_deleted])
  end

  test "a group's admins are the users holding a grant on it", %{world: world} do
    group =
      Group
      |> Ash.Query.filter(id == ^world.records.g1.id)
      |> Ash.Query.load(:admins)
      |> Ash.read_one!(actor: actor(world, :read_all))

    assert user_names(group.admins, world) == MapSet.new([:group_read, :group_edit])
  end
end
