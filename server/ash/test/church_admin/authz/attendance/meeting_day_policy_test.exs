defmodule ChurchAdmin.Authz.Attendance.MeetingDayPolicyTest do
  use ChurchAdmin.AttendanceCase, async: false

  alias ChurchAdmin.Attendance.MeetingDay

  # {actor kind, meetings whose held days are read}: approved, and readAllData
  # or an administered meeting (history_meeting_days.yaml#select). Days exist
  # for `m_s1`, `m_g1` and `m_g2` only.
  @expectations [
    {:anonymous, []},
    {:unapproved_read_all, []},
    {:approved_plain, []},
    {:area_read, []},
    {:record_all_no_read, []},
    {:read_all, [:m_s1, :m_g1, :m_g2]},
    {:record_all_read, [:m_s1, :m_g1, :m_g2]},
    {:service_open, [:m_s1]},
    {:service_year, [:m_s1]},
    {:service_gender, [:m_s1]},
    {:servant, [:m_s1]},
    {:group_read, [:m_g1]},
    {:recorder_group, [:m_g1]}
  ]

  for {kind, meetings} <- @expectations do
    @kind kind
    @meetings MapSet.new(meetings)

    test "#{kind} reads the days of #{inspect(meetings)}", %{world: world} do
      days = Ash.read!(MeetingDay, actor: actor(world, @kind), page: false)

      assert day_meetings(days, world) == @meetings
    end
  end

  test "the system actor reads every day", %{world: world} do
    days = Ash.read!(MeetingDay, actor: ChurchAdmin.Authz.Actor.system(), page: false)

    assert day_meetings(days, world) == MapSet.new([:m_s1, :m_g1, :m_g2])
  end

  test "a meeting's days split by study year and gender", %{world: world} do
    days =
      MeetingDay
      |> Ash.Query.filter(meeting_id == ^world.records.m_s1.id and day == ^~D[2026-03-01])
      |> Ash.read!(actor: actor(world, :read_all), page: false)

    assert Enum.sum_by(days, & &1.persons_count) == 2
    assert Enum.sum_by(days, & &1.servants_count) == 1
    assert Enum.sum_by(days, & &1.total_count) == 3
  end
end
