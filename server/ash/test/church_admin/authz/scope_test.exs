defmodule ChurchAdmin.Authz.ScopeTest do
  use ChurchAdmin.AuthzCase, async: false

  alias ChurchAdmin.Activity.Edit
  alias ChurchAdmin.Attendance.Meeting
  alias ChurchAdmin.Authz.Scope
  alias ChurchAdmin.Organization.{Class, Group, Service}
  alias ChurchAdmin.Places.{Area, Store, Street}

  # {scope function, access, resource, actor kind, expected record names},
  # written from the view's branches (authz-and-reads §2.1) and
  # auth.users_admin_on_meetings.
  @cases [
    {:service, :read, Service, :service_open, [:s1]},
    {:service, :edit, Service, :service_open, []},
    {:service, :edit, Service, :service_open_edit, [:s1]},
    {:service, :read, Service, :group_read, []},
    {:group, :read, Group, :group_read, [:g1]},
    {:group, :edit, Group, :group_read, []},
    {:group, :edit, Group, :group_edit, [:g1]},
    # a group is readable when a person reached through an area is in it
    {:group, :read, Group, :area_read, [:g2]},
    {:group, :edit, Group, :area_edit, []},
    {:class, :read, Class, :service_open, [:c_y1, :c_y12_f]},
    {:class, :read, Class, :service_year, [:c_y1, :c_y12_f]},
    {:class, :read, Class, :service_gender, [:c_y1, :c_y12_f]},
    {:class, :edit, Class, :service_open_edit, [:c_y1, :c_y12_f]},
    # a year-restricted grant edits only classes that cover exactly its year
    {:class, :read, Class, :service_year_edit, [:c_y1, :c_y12_f]},
    {:class, :edit, Class, :service_year_edit, [:c_y1]},
    # classes of the area's live persons by year and gender
    {:class, :read, Class, :area_read, [:c_y1]},
    {:class, :edit, Class, :area_edit, []},
    {:area, :read, Area, :area_read, [:a1]},
    {:area, :edit, Area, :area_read, []},
    {:area, :edit, Area, :area_edit, [:a1]},
    {:street, :read, Street, :area_read, [:st1]},
    {:street, :edit, Street, :area_edit, [:st1]},
    {:store, :read, Store, :area_read, [:store1]},
    {:store, :edit, Store, :area_read, []},
    {:store, :read, Store, :service_open, []},
    {:history_record, :read, Edit, :anonymous, []},
    {:history_record, :read, Edit, :approved_plain, []},
    {:history_record, :read, Edit, :read_all, [:e_m1, :e_deleted, :e_f_area, :e_c_y1, :e_grant]},
    {:history_record, :read, Edit, :service_open, [:e_m1, :e_deleted, :e_c_y1]},
    {:history_record, :edit, Edit, :service_open, []},
    {:history_record, :edit, Edit, :service_open_edit, [:e_m1, :e_deleted, :e_c_y1]},
    {:history_record, :read, Edit, :area_read, [:e_f_area, :e_c_y1]},
    {:history_record, :edit, Edit, :area_edit, [:e_f_area]}
  ]

  for {function, access, resource, kind, expected} <- @cases do
    @function function
    @access access
    @resource resource
    @kind kind
    @expected MapSet.new(expected)

    test "#{function}(#{kind}, #{access}) matches #{inspect(expected)}", %{world: world} do
      scope = apply(Scope, @function, [actor(world, @kind), @access])
      assert matching(world, @resource, scope) == @expected
    end
  end

  # Meetings: a grant's study year or gender left NULL, or the meeting's,
  # matches; global rows need readAllData and a recordAll* permission.
  @meeting_cases [
    {:anonymous, :admin, []},
    {:read_all, :admin, []},
    {:service_open, :admin, [:m_s1, :m_s1_y2]},
    {:service_year, :admin, [:m_s1]},
    {:group_read, :admin, [:m_g1]},
    {:service_open, :record_persons, []},
    {:service_record_servants, :record_servants, [:m_s1, :m_s1_y2]},
    {:service_record_servants, :record_persons, []}
  ]

  for {kind, meeting_access, expected} <- @meeting_cases do
    @kind kind
    @meeting_access meeting_access
    @expected MapSet.new(expected)

    test "meeting(#{kind}, #{meeting_access}) matches #{inspect(expected)}", %{world: world} do
      scope = world |> actor(@kind) |> Scope.meeting(@meeting_access)
      assert matching(world, Meeting, scope) == @expected
    end
  end

  describe "exportable?/3" do
    test "service export covers the service's persons only", %{world: world} do
      actor = actor(world, :service_open_edit)
      %{m1: m1, f2: f2, relative: relative} = world.records

      assert Scope.exportable?(actor, :person, [m1.id, f2.id])
      refute Scope.exportable?(actor, :person, [m1.id, relative.id])
    end

    test "area export covers families and stores, never the persons in them", %{world: world} do
      actor = actor(world, :area_edit)

      assert Scope.exportable?(actor, :family, [world.records.f_area.id])
      assert Scope.exportable?(actor, :store, [world.records.store1.id])
      refute Scope.exportable?(actor, :person, [world.records.area_fam.id])
    end

    test "exportAllData exports anything; readAllData alone exports nothing", %{world: world} do
      ids = [world.records.m1.id, world.records.unlinked.id]

      assert world |> actor(:export_all) |> Scope.exportable?(:person, ids)
      refute world |> actor(:read_all) |> Scope.exportable?(:person, ids)
    end

    test "the global export right covers ids that do not exist, as the view's any row did", %{
      world: world
    } do
      assert world |> actor(:export_all) |> Scope.exportable?(:area, [Ash.UUID.generate()])
      refute world |> actor(:area_edit) |> Scope.exportable?(:area, [Ash.UUID.generate()])
    end

    test "an empty request is exportable by anyone", %{world: world} do
      assert world |> actor(:approved_plain) |> Scope.exportable?(:service, [])
    end
  end
end
