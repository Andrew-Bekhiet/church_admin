defmodule ChurchAdmin.AuthzWorld do
  @moduledoc """
  One small dataset that exercises every branch of the permission view for
  persons, families and users, with one user per actor kind of the authz
  design (§7.1). `build!/0` returns `%{records: %{name => record}, users:
  %{kind => %User{}}}`; tests name records and actor kinds and write their
  expectations from the view's rules, not from `ChurchAdmin.Authz.Scope`.

  Layout:

    * service `s1` (no study-year range) with group `g1`; areas `a1`, `a2`
      with street `st1` in `a1`; store `store1` addressed in `a1`
    * `self` — `approved_plain`'s own person in family `f_own` (addressed in `a2`)
    * `m1` (male, year 1, family `f_svc`) and `f2` (female, year 2, no family)
      in `s1`; `relative` shares `f_svc` but is in no service
    * `grp` in `g1`, family `f_grp`; `area_fam` in family `f_area` (addressed
      in `a1`); `area_store` belongs to `store1`
    * `deleted` (soft-deleted) in `s1`, family `f_misc`; `unlinked` in `f_misc`
    * `servant` — the person of user `servant`, approved with a read grant on `s1`
    * group `g2` holds `area_store`; `area_fam` is male in year 1 and the
      soft-deleted `area_deleted` (female, year 2) also lives in `f_area`
    * classes `c_y1` (year 1, any gender) and `c_y12_f` (years 1–2, female)
      of `s1`; meetings `m_s1` (`s1`), `m_s1_y2` (`s1`, year 2), `m_g1` (`g1`)
    * edit-history rows `e_m1`, `e_deleted`, `e_f_area`, `e_c_y1` and `e_grant` (a
      `users_admin_on` row, a table the view never names)
  """

  alias ChurchAdmin.Factory

  @actor_kinds [
    :unapproved,
    :unapproved_with_grants,
    :approved_plain,
    :read_all,
    :read_write,
    :manage_users,
    :export_all,
    :service_open,
    :service_open_edit,
    :service_year,
    :service_gender,
    :service_write_related,
    :group_read,
    :group_edit,
    :area_read,
    :area_edit,
    :service_year_edit,
    :service_admin_users,
    :service_record_servants,
    :servant
  ]

  def actor_kinds, do: @actor_kinds

  def build! do
    Factory.study_year!(1)
    Factory.study_year!(2)

    s1 = Factory.service!()
    g1 = Factory.group!(s1)
    g2 = Factory.group!(s1)
    a1 = Factory.area!()
    a2 = Factory.area!()
    st1 = Factory.street!(a1)

    f_own = Factory.family!()
    f_svc = Factory.family!()
    f_grp = Factory.family!()
    f_area = Factory.family!()
    f_misc = Factory.family!()
    store1 = Factory.store!()

    addresses = %{
      addr_own: Factory.address!(family_id: f_own.id, area_id: a2.id),
      addr_area: Factory.address!(family_id: f_area.id, area_id: a1.id),
      addr_store: Factory.address!(store_id: store1.id, area_id: a1.id)
    }

    users = Map.new(@actor_kinds, &{&1, Factory.user!()})

    persons = %{
      self: Factory.person!(uid: users.approved_plain.uid, family_id: f_own.id),
      m1: Factory.person!(gender: true, study_year_id: 1, family_id: f_svc.id),
      f2: Factory.person!(gender: false, study_year_id: 2),
      relative: Factory.person!(family_id: f_svc.id),
      grp: Factory.person!(family_id: f_grp.id),
      area_fam: Factory.person!(family_id: f_area.id, gender: true, study_year_id: 1),
      area_deleted:
        Factory.person!(
          family_id: f_area.id,
          gender: false,
          study_year_id: 2,
          deleted_at: Factory.deleted_at()
        ),
      area_store: Factory.person!(store_id: store1.id),
      deleted: Factory.person!(family_id: f_misc.id, deleted_at: Factory.deleted_at()),
      unlinked: Factory.person!(family_id: f_misc.id),
      servant: Factory.person!(uid: users.servant.uid)
    }

    memberships = %{
      ms_m1: Factory.in_service!(persons.m1, s1),
      ms_f2: Factory.in_service!(persons.f2, s1),
      ms_deleted: Factory.in_service!(persons.deleted, s1),
      mg_grp: Factory.in_group!(persons.grp, g1),
      mg_deleted: Factory.in_group!(persons.deleted, g2),
      mg_area_store: Factory.in_group!(persons.area_store, g2)
    }

    base_activity = %{
      c_y1: Factory.class!(s1, service_study_year: 1),
      c_y12_f:
        Factory.class!(s1, service_study_year: 1, service_study_year_to: 2, service_gender: false),
      m_s1: Factory.meeting!(service_id: s1.id),
      m_s1_y2: Factory.meeting!(service_id: s1.id, service_study_year: 2),
      m_g1: Factory.meeting!(group_id: g1.id),
      e_m1: Factory.edit_row!("persons", persons.m1.id),
      e_deleted: Factory.edit_row!("persons", persons.deleted.id),
      e_f_area: Factory.edit_row!("families", f_area.id)
    }

    activity =
      Map.put(base_activity, :e_c_y1, Factory.edit_row!("classes", base_activity.c_y1.id))

    grant_permissions!(users)
    e_grant = grant_scopes!(users, s1, g1, a1)

    records =
      %{
        s1: s1,
        g1: g1,
        g2: g2,
        a1: a1,
        a2: a2,
        st1: st1,
        f_own: f_own,
        f_svc: f_svc,
        f_grp: f_grp,
        f_area: f_area,
        f_misc: f_misc,
        store1: store1
      }
      |> Map.merge(addresses)
      |> Map.merge(persons)
      |> Map.merge(memberships)
      |> Map.merge(activity)
      |> Map.put(:e_grant, e_grant)

    %{records: records, users: users}
  end

  defp grant_permissions!(users) do
    approved = Map.drop(users, [:unapproved, :unapproved_with_grants])
    for {_kind, user} <- approved, do: Factory.permissions!(user, ["approved"])

    Factory.permissions!(users.read_all, ["readAllData"])
    Factory.permissions!(users.read_write, ["readAllData", "writeAllData"])
    Factory.permissions!(users.manage_users, ["readAllData", "writeAllData", "manageAllUsers"])
    Factory.permissions!(users.export_all, ["readAllData", "exportAllData"])
  end

  defp grant_scopes!(users, s1, g1, a1) do
    Factory.grant!(users.unapproved_with_grants, :service, s1.id, edit?: true)
    Factory.grant!(users.service_open, :service, s1.id)
    Factory.grant!(users.service_open_edit, :service, s1.id, edit?: true, export?: true)
    Factory.grant!(users.service_year, :service, s1.id, study_year: 1)
    Factory.grant!(users.service_gender, :service, s1.id, gender: false)
    Factory.grant!(users.service_write_related, :service, s1.id, write_related_families?: true)
    Factory.grant!(users.group_read, :group, g1.id)
    Factory.grant!(users.group_edit, :group, g1.id, edit?: true)
    Factory.grant!(users.area_read, :area, a1.id)
    Factory.grant!(users.area_edit, :area, a1.id, edit?: true, export?: true)
    Factory.grant!(users.service_admin_users, :service, s1.id, edit?: true, manage_users?: true)
    Factory.grant!(users.service_record_servants, :service, s1.id, record_servants?: true)
    Factory.grant!(users.service_year_edit, :service, s1.id, study_year: 1, edit?: true)
    grant = Factory.grant!(users.servant, :service, s1.id)
    Factory.edit_row!("users_admin_on", grant.permission_id)
  end
end
