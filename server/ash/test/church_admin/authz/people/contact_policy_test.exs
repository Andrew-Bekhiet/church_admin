defmodule ChurchAdmin.Authz.People.ContactPolicyTest do
  use ChurchAdmin.PeopleChildrenCase, async: false

  alias ChurchAdmin.People.{Contact, MainContact, ResolvedContact}

  # A contact is read with its person (view rows for service, group and area
  # grants count soft-deleted persons), or, when the contact belongs to a
  # family admin (claimed by an admin-type person, or unclaimed with an
  # admin type), with any live member of that family (§3.2).
  @every_contact [
    :c_m1,
    :c_self,
    :c_f2,
    :c_grp,
    :c_area_fam,
    :c_servant,
    :c_deleted,
    :c_adm_own,
    :c_adm_svc,
    :c_adm_deleted,
    :c_adm_grp,
    :c_adm_area,
    :c_adm_misc,
    :u_svc_admin,
    :u_svc_plain,
    :u_own_admin,
    :u_grp_admin,
    :u_area_admin,
    :u_misc_admin
  ]

  @svc_member_contacts [:c_m1, :c_f2, :c_deleted, :c_adm_svc, :c_adm_deleted, :u_svc_admin]
  @svc_reader_with_servant [:c_servant | @svc_member_contacts]

  @archived_owner_contacts [:c_deleted, :c_adm_deleted]

  # {actor kind, contacts in the person's or family's read scope}
  @scoped_contacts [
    {:anonymous, []},
    {:unapproved, []},
    {:unapproved_with_grants, []},
    {:approved_plain, [:c_self, :c_adm_own, :u_own_admin]},
    {:read_all, @every_contact},
    {:read_write, @every_contact},
    {:manage_users, @every_contact},
    {:export_all, @every_contact},
    {:service_open, @svc_member_contacts},
    {:service_open_edit, @svc_member_contacts},
    {:service_admin_users, @svc_member_contacts},
    {:service_year, [:c_m1, :c_adm_svc, :c_adm_deleted, :u_svc_admin]},
    {:service_year_edit, [:c_m1, :c_adm_svc, :c_adm_deleted, :u_svc_admin]},
    {:service_gender, [:c_f2]},
    {:service_write_related, @svc_member_contacts},
    {:service_record_servants, @svc_reader_with_servant},
    {:servant, @svc_reader_with_servant},
    {:group_read, [:c_grp, :c_adm_grp, :u_grp_admin]},
    {:group_edit, [:c_grp, :c_adm_grp, :u_grp_admin]},
    {:area_read, [:c_area_fam, :c_adm_area, :u_area_admin]},
    {:area_edit, [:c_area_fam, :c_adm_area, :u_area_admin]},
    {:service_and_group, [:c_grp, :c_adm_grp, :u_grp_admin | @svc_member_contacts]},
    {:group_and_area, [:c_grp, :c_adm_grp, :u_grp_admin, :c_area_fam, :c_adm_area, :u_area_admin]}
  ]

  # The view left-joins live persons only, so the contact of a soft-deleted
  # family admin has no effective family: members of the family cannot reach
  # it, only readers of the person itself (service_write_related reaches the
  # deleted person through its family) and global readers.
  @reads_deleted_admin_through_person [
    :service_write_related,
    :read_all,
    :read_write,
    :manage_users,
    :export_all
  ]

  @resolved_contacts Enum.map(@scoped_contacts, fn {kind, read} ->
                       if kind in @reads_deleted_admin_through_person,
                         do: {kind, read},
                         else: {kind, List.delete(read, :c_adm_deleted)}
                     end)

  # The contacts a person owns are read only while that person is live.
  @contacts Enum.map(@scoped_contacts, fn {kind, read} ->
              {kind, read -- @archived_owner_contacts}
            end)

  @main_phones [:c_m1, :c_self, :c_f2, :c_grp, :c_area_fam, :c_servant, :c_deleted]

  # Main contacts follow the person alone: no family-admin branch.
  @main_contacts [
    {:anonymous, []},
    {:unapproved, []},
    {:approved_plain, [:c_self]},
    {:read_all, @main_phones},
    {:export_all, @main_phones},
    {:service_open, [:c_m1, :c_f2, :c_deleted]},
    {:service_year, [:c_m1]},
    {:service_gender, [:c_f2]},
    {:service_write_related, [:c_m1, :c_f2, :c_deleted]},
    {:service_record_servants, [:c_m1, :c_f2, :c_deleted, :c_servant]},
    {:group_read, [:c_grp]},
    {:area_read, [:c_area_fam]},
    {:service_and_group, [:c_m1, :c_f2, :c_deleted, :c_grp]},
    {:group_and_area, [:c_grp, :c_area_fam]}
  ]

  for {kind, read} <- @contacts do
    @kind kind
    @read MapSet.new(read)

    test "#{kind} reads #{length(read)} contacts", %{world: world} do
      assert visible(world, Contact, @kind) == @read
    end
  end

  for {kind, read} <- @resolved_contacts do
    @kind kind
    @read MapSet.new(read)

    test "#{kind} reads #{length(read)} resolved contacts", %{world: world} do
      assert visible_ids(world, ResolvedContact, @kind) == @read
    end
  end

  for {kind, read} <- @main_contacts do
    @kind kind
    @read MapSet.new(read)

    test "#{kind} reads #{length(read)} main contacts", %{world: world} do
      assert visible_ids(world, MainContact, @kind) == @read
    end
  end

  test "no actor kind reads a contact owned by an archived person", %{world: world} do
    for kind <- ChurchAdmin.PeopleChildrenWorld.actor_kinds() do
      read = visible(world, Contact, kind)

      assert MapSet.disjoint?(read, MapSet.new(@archived_owner_contacts)), "#{kind} read one"
    end
  end

  test "the system actor reads every contact", %{world: world} do
    contacts = Ash.read!(Contact, actor: ChurchAdmin.Authz.Actor.system(), page: false)

    assert names(contacts, world) == MapSet.new(@every_contact)
  end

  test "an unclaimed contact of a non-admin type stays with global readers", %{world: world} do
    for kind <- [:service_open, :service_and_group, :group_and_area] do
      refute :u_svc_plain in visible(world, Contact, kind)
    end
  end
end
