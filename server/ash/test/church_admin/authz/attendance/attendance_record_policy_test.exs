defmodule ChurchAdmin.Authz.Attendance.AttendanceRecordPolicyTest do
  use ChurchAdmin.AttendanceCase, async: false

  alias ChurchAdmin.Attendance.AttendanceRecord

  @every_record [:a_m1, :a_m1_later, :a_f2, :a_servant, :a_grp, :a_store_g2]
  @s1_records [:a_m1, :a_m1_later, :a_f2, :a_servant]

  # {actor kind, records read}, from history_attendance_history.yaml#select:
  # approved, and readAllData, or an administered meeting with the record's
  # person readable (or the record being a servant's). `a_store_g2` is readable
  # to the area readers' person scope but sits in a meeting they do not administer.
  @expectations [
    {:anonymous, []},
    {:unapproved, []},
    {:unapproved_with_grants, []},
    {:unapproved_read_all, []},
    {:approved_plain, []},
    {:area_read, []},
    {:record_all_no_read, []},
    {:read_all, @every_record},
    {:read_write, @every_record},
    {:export_all, @every_record},
    {:record_all_read, @every_record},
    {:service_open, @s1_records},
    {:service_open_edit, @s1_records},
    {:service_write_related, @s1_records},
    {:service_record_servants, @s1_records},
    {:servant, @s1_records},
    {:service_year, [:a_m1, :a_m1_later, :a_servant]},
    {:service_year_edit, [:a_m1, :a_m1_later, :a_servant]},
    {:recorder_year1, [:a_m1, :a_m1_later, :a_servant]},
    {:service_gender, [:a_f2, :a_servant]},
    {:group_read, [:a_grp]},
    {:group_edit, [:a_grp]},
    {:recorder_group, [:a_grp]}
  ]

  for {kind, records} <- @expectations do
    @kind kind
    @records MapSet.new(records)

    test "#{kind} reads #{inspect(records)}", %{world: world} do
      assert visible(world, AttendanceRecord, @kind) == @records
    end
  end

  test "the system actor reads every record", %{world: world} do
    records = Ash.read!(AttendanceRecord, actor: ChurchAdmin.Authz.Actor.system(), page: false)

    assert names(records, world) == MapSet.new(@every_record)
  end
end
