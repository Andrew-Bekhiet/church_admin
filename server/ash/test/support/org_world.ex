defmodule ChurchAdmin.OrgWorld do
  @moduledoc """
  `ChurchAdmin.AuthzWorld` plus what services, classes, groups and class
  memberships need to show every branch of their rules. `extend/1` adds to
  the records and users of a built world:

    * services `s2` (no grants) and `s_deleted`
    * classes of `s1`: `c_y1` and `c_y12_f` (from the base world), `c_y2_m`
      (year 2, male), `c_deleted`; `c_s2` of `s2` (year 1, any gender)
    * groups: `g1` and `g2` (base), `g_s2`, `g_deleted`, and `g_area_deleted`,
      whose only member is `area_deleted`, a soft-deleted person of an area family
    * `deleted_y1`, a soft-deleted male year-1 member of `s1`
    * user `class_admin` with a grant on `s1` for year 1 and female, the
      scope of `c_y12_f` exactly; `service_open` also holds a year-2 grant on
      `s1`, so it has two grants on one service
    * class membership rows (`cm_<class>_<person>`) the `classes_persons`
      view yields for these classes and persons
  """

  alias ChurchAdmin.Factory
  alias ChurchAdmin.People.ClassMembership

  def extend(world) do
    %{records: records, users: users} = world

    s2 = Factory.service!()
    s_deleted = Factory.service!(deleted_at: Factory.deleted_at())

    c_y2_m = Factory.class!(records.s1, service_study_year: 2, service_gender: true)
    c_s2 = Factory.class!(s2, service_study_year: 1)

    c_deleted =
      Factory.class!(records.s1, service_study_year: 1, deleted_at: Factory.deleted_at())

    g_s2 = Factory.group!(s2)
    g_deleted = Factory.group!(records.s1, deleted_at: Factory.deleted_at())
    g_area_deleted = Factory.group!(records.s1)
    Factory.in_group!(records.area_deleted, g_area_deleted)

    deleted_y1 =
      Factory.person!(
        gender: true,
        study_year_id: 1,
        family_id: records.f_misc.id,
        deleted_at: Factory.deleted_at()
      )

    Factory.in_service!(deleted_y1, records.s1)

    class_admin = Factory.user!()
    Factory.permissions!(class_admin, ["approved"])
    Factory.grant!(class_admin, :service, records.s1.id, study_year: 1, gender: false)
    Factory.grant!(users.service_open, :service, records.s1.id, study_year: 2)

    added = %{
      s2: s2,
      s_deleted: s_deleted,
      c_y2_m: c_y2_m,
      c_s2: c_s2,
      c_deleted: c_deleted,
      g_s2: g_s2,
      g_deleted: g_deleted,
      g_area_deleted: g_area_deleted,
      deleted_y1: deleted_y1,
      cm_y1_m1: membership(records.c_y1, records.m1),
      cm_y1_deleted_y1: membership(records.c_y1, deleted_y1),
      cm_y12_f_f2: membership(records.c_y12_f, records.f2),
      cm_deleted_m1: membership(c_deleted, records.m1),
      cm_deleted_deleted_y1: membership(c_deleted, deleted_y1)
    }

    %{
      records: Map.merge(records, added),
      users: Map.put(users, :class_admin, class_admin)
    }
  end

  defp membership(class, person), do: %ClassMembership{class_id: class.id, person_id: person.id}
end
