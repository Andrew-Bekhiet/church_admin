defmodule ChurchAdmin.Authz.Attendance.MeetingPolicyTest do
  use ChurchAdmin.AttendanceCase, async: false

  alias ChurchAdmin.Attendance.Meeting

  @every_meeting [:m_s1, :m_s1_y2, :m_g1, :m_g2, :m_s1_f, :m_s1_m, :m_archived]
  @s1_meetings [:m_s1, :m_s1_y2, :m_s1_f, :m_s1_m]
  @g1_meetings [:m_g1, :m_archived]

  # {actor kind, meetings read}, from history_meetings.yaml#select: approved,
  # and readAllData or any row of auth.users_admin_on_meetings (a grant on the
  # meeting's group, or on its service with the study year and gender
  # matching or NULL on either side).
  @expectations [
    {:anonymous, []},
    {:unapproved, []},
    {:unapproved_with_grants, []},
    {:unapproved_read_all, []},
    {:approved_plain, []},
    {:area_read, []},
    {:area_edit, []},
    {:record_all_no_read, []},
    {:read_all, @every_meeting},
    {:read_write, @every_meeting},
    {:manage_users, @every_meeting},
    {:export_all, @every_meeting},
    {:record_all_read, @every_meeting},
    {:service_open, @s1_meetings},
    {:service_open_edit, @s1_meetings},
    {:service_write_related, @s1_meetings},
    {:service_admin_users, @s1_meetings},
    {:service_record_servants, @s1_meetings},
    {:servant, @s1_meetings},
    {:service_year, [:m_s1, :m_s1_f, :m_s1_m]},
    {:service_year_edit, [:m_s1, :m_s1_f, :m_s1_m]},
    {:recorder_year1, [:m_s1, :m_s1_f, :m_s1_m]},
    {:service_gender, [:m_s1, :m_s1_y2, :m_s1_f]},
    {:group_read, @g1_meetings},
    {:group_edit, @g1_meetings},
    {:recorder_group, @g1_meetings}
  ]

  for {kind, meetings} <- @expectations do
    @kind kind
    @meetings MapSet.new(meetings)

    test "#{kind} reads #{inspect(meetings)}", %{world: world} do
      assert visible(world, Meeting, @kind) == @meetings
    end
  end

  test "the system actor reads every meeting", %{world: world} do
    meetings = Ash.read!(Meeting, actor: ChurchAdmin.Authz.Actor.system(), page: false)

    assert names(meetings, world) == MapSet.new(@every_meeting)
  end

  test "held_days lists each day with attendance once, inside the range", %{world: world} do
    held = fn from, to ->
      [meeting] =
        Meeting
        |> Ash.Query.filter(id == ^world.records.m_s1.id)
        |> Ash.Query.load(held_days: %{from: from, to: to})
        |> Ash.read!(actor: actor(world, :service_open), page: false)

      meeting.held_days
    end

    assert held.(~D[2026-03-01], ~D[2026-03-31]) == [~D[2026-03-01], ~D[2026-03-08]]
    assert held.(~D[2026-03-02], ~D[2026-03-31]) == [~D[2026-03-08]]
    assert held.(~D[2026-03-01], ~D[2026-03-01]) == [~D[2026-03-01]]
    assert held.(~D[2026-04-01], ~D[2026-04-30]) == []
  end

  test "held_days is empty for a meeting without attendance", %{world: world} do
    [meeting] =
      Meeting
      |> Ash.Query.filter(id == ^world.records.m_s1_f.id)
      |> Ash.Query.load(held_days: %{from: ~D[2026-01-01], to: ~D[2026-12-31]})
      |> Ash.read!(actor: actor(world, :read_all), page: false)

    assert meeting.held_days == []
  end

  test "the primary read pages by keyset with a count", %{world: world} do
    page = Ash.read!(Meeting, actor: actor(world, :read_all), page: [limit: 2, count: true])

    assert page.count == length(@every_meeting)
    assert length(page.results) == 2
    assert page.more?
  end
end
