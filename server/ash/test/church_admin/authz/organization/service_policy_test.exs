defmodule ChurchAdmin.Authz.Organization.ServicePolicyTest do
  use ChurchAdmin.AuthzCase, async: false

  alias ChurchAdmin.Authz.Actor
  alias ChurchAdmin.Organization.Service

  setup %{world: world}, do: {:ok, world: ChurchAdmin.OrgWorld.extend(world)}

  @both [:s1, :s2]

  # {actor kind, services read, services with userCanEdit}. A service is
  # readable by any signed-in user, approved or not (Hasura filters only on
  # deleted_at); userCanEdit follows the view's service branch, which ignores
  # a grant's study year and gender (authz-and-reads §2.1, §3.3).
  @expectations [
    {:anonymous, [], []},
    {:unapproved, @both, []},
    {:unapproved_with_grants, @both, []},
    {:approved_plain, @both, []},
    {:read_all, @both, []},
    {:export_all, @both, []},
    {:read_write, @both, @both},
    {:manage_users, @both, @both},
    {:service_open, @both, []},
    {:service_open_edit, @both, [:s1]},
    {:service_year, @both, []},
    {:service_year_edit, @both, [:s1]},
    {:service_admin_users, @both, [:s1]},
    {:group_edit, @both, []},
    {:area_edit, @both, []}
  ]

  for {kind, read, editable} <- @expectations do
    @kind kind
    @read MapSet.new(read)
    @editable MapSet.new(editable)

    test "#{kind} reads #{inspect(read)} and may edit #{inspect(editable)}", %{world: world} do
      assert visible(world, Service, @kind) == @read
      assert flagged(world, Service, @kind, :user_can_edit) == @editable
    end
  end

  test "the system actor reads the soft-deleted service too", %{world: world} do
    services = Ash.read!(Service, actor: Actor.system(), page: false)

    assert names(services, world) == MapSet.new([:s1, :s2, :s_deleted])
  end

  test "a service's admins are the users holding a grant on it, each once", %{world: world} do
    service =
      Service
      |> Ash.Query.filter(id == ^world.records.s1.id)
      |> Ash.Query.load(:admins)
      |> Ash.read_one!(actor: actor(world, :read_all))

    assert length(service.admins) == length(Enum.uniq_by(service.admins, & &1.uid))

    assert user_names(service.admins, world) ==
             MapSet.new([
               :unapproved_with_grants,
               :service_open,
               :service_open_edit,
               :service_year,
               :service_gender,
               :service_write_related,
               :service_admin_users,
               :service_record_servants,
               :service_year_edit,
               :servant,
               :class_admin
             ])
  end

  test "the admins an actor loads are the ones it reads as users", %{world: world} do
    service =
      Service
      |> Ash.Query.filter(id == ^world.records.s1.id)
      |> Ash.Query.load(:admins)
      |> Ash.read_one!(actor: actor(world, :unapproved_with_grants))

    assert user_names(service.admins, world) == MapSet.new([:unapproved_with_grants])
  end

  test "a service's classes and groups load only what the actor reads", %{world: world} do
    service =
      Service
      |> Ash.Query.filter(id == ^world.records.s1.id)
      |> Ash.Query.load([:classes, :groups])
      |> Ash.read_one!(actor: actor(world, :service_year))

    assert names(service.classes, world) == MapSet.new([:c_y1, :c_y12_f])
    assert service.groups == []
  end
end
