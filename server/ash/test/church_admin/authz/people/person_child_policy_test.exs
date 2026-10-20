defmodule ChurchAdmin.Authz.People.PersonChildPolicyTest do
  use ChurchAdmin.PeopleChildrenCase, async: false

  alias ChurchAdmin.People.{FamilyRelation, PersonHobby, PersonTag}

  # Persons each actor kind reads, soft-deleted ones included where the
  # permission view counts them (service, group and area grants), from
  # authz-and-reads §2.1. Hobby and tag rows follow their person.
  @persons_in_scope %{
    anonymous: [],
    unapproved: [],
    unapproved_with_grants: [],
    approved_plain: [:self],
    service_open: [:m1, :f2, :deleted],
    service_open_edit: [:m1, :f2, :deleted],
    service_admin_users: [:m1, :f2, :deleted],
    service_year: [:m1],
    service_year_edit: [:m1],
    service_gender: [:f2],
    service_write_related: [:m1, :f2, :deleted, :relative, :adm_svc, :adm_deleted],
    service_record_servants: [:m1, :f2, :deleted, :servant],
    servant: [:servant, :m1, :f2, :deleted],
    group_read: [:grp],
    group_edit: [:grp],
    area_read: [:area_fam, :area_deleted, :adm_area, :area_store],
    area_edit: [:area_fam, :area_deleted, :adm_area, :area_store],
    service_and_group: [:m1, :f2, :deleted, :grp],
    group_and_area: [:grp, :area_fam, :area_deleted, :adm_area, :area_store],
    read_all: :all,
    read_write: :all,
    manage_users: :all,
    export_all: :all
  }

  # Both families need to be readable, deleted families included (the view
  # does not filter them): area grants read f_area and the deleted f_deleted
  # (addressed in a1); r1 joins the service and group families, r4 the group
  # and area families.
  @relations [
    {:anonymous, []},
    {:unapproved, []},
    {:approved_plain, []},
    {:service_open, []},
    {:service_write_related, []},
    {:group_read, []},
    {:area_read, [:r5]},
    {:area_edit, [:r5]},
    {:servant, []},
    {:service_and_group, [:r1]},
    {:group_and_area, [:r4, :r5]},
    {:read_all, [:r1, :r2, :r3, :r4, :r5]},
    {:export_all, [:r1, :r2, :r3, :r4, :r5]}
  ]

  for {kind, read} <- @relations do
    @kind kind
    @read MapSet.new(read)

    test "#{kind} reads #{length(read)} family relations", %{world: world} do
      assert visible(world, FamilyRelation, @kind) == @read
    end
  end

  for {resource, key_tag} <- [{PersonHobby, :ph}, {PersonTag, :pt}],
      {kind, persons} <- @persons_in_scope do
    @resource resource
    @key_tag key_tag
    @kind kind
    @persons persons

    test "#{inspect(resource)}: #{kind} reads the rows of its persons", %{world: world} do
      owners =
        case @persons do
          :all -> ChurchAdmin.PeopleChildrenWorld.hobby_owners()
          persons -> Enum.filter(ChurchAdmin.PeopleChildrenWorld.hobby_owners(), &(&1 in persons))
        end

      expected = MapSet.new(owners, &{@key_tag, &1})

      assert visible(world, @resource, @kind) == expected
    end
  end

  test "the system actor reads every link row", %{world: world} do
    system = ChurchAdmin.Authz.Actor.system()
    owners = ChurchAdmin.PeopleChildrenWorld.hobby_owners()

    assert names(Ash.read!(FamilyRelation, actor: system, page: false), world) ==
             MapSet.new([:r1, :r2, :r3, :r4, :r5])

    assert names(Ash.read!(PersonHobby, actor: system, page: false), world) ==
             MapSet.new(owners, &{:ph, &1})

    assert names(Ash.read!(PersonTag, actor: system, page: false), world) ==
             MapSet.new(owners, &{:pt, &1})
  end
end
