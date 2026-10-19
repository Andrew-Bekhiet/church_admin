defmodule ChurchAdmin.Authz.Attendance.RosterEntryPolicyTest do
  use ChurchAdmin.AttendanceCase, async: false

  alias ChurchAdmin.Attendance.RosterEntry
  alias ChurchAdmin.{Factory, Repo}

  @s1_rows [
    {:m_s1, :m1, false},
    {:m_s1, :f2, false},
    {:m_s1, :servant, true},
    {:m_s1_y2, :f2, false},
    {:m_s1_y2, :servant, true},
    {:m_s1_f, :f2, false},
    {:m_s1_f, :servant, true},
    {:m_s1_m, :m1, false},
    {:m_s1_m, :servant, true}
  ]
  @g1_rows [{:m_g1, :grp, false}, {:m_g1, :dup_servant, true}]
  @g2_rows [{:m_g2, :area_store, false}]

  # {actor kind, roster rows read}, from history_meeting_roster.yaml#select:
  # approved, and readAllData, or an administered meeting where the row is a
  # servant's, or a person row the actor holds a group grant for or a service
  # grant whose study year and gender are NULL or the person's.
  @expectations [
    {:anonymous, []},
    {:unapproved, []},
    {:unapproved_with_grants, []},
    {:unapproved_read_all, []},
    {:approved_plain, []},
    {:area_read, []},
    {:record_all_no_read, []},
    {:read_all, @s1_rows ++ @g1_rows ++ @g2_rows},
    {:record_all_read, @s1_rows ++ @g1_rows ++ @g2_rows},
    {:service_open, @s1_rows},
    {:service_record_servants, @s1_rows},
    {:servant, @s1_rows},
    {:service_year,
     [
       {:m_s1, :m1, false},
       {:m_s1, :servant, true},
       {:m_s1_f, :servant, true},
       {:m_s1_m, :m1, false},
       {:m_s1_m, :servant, true}
     ]},
    {:service_gender,
     [
       {:m_s1, :f2, false},
       {:m_s1, :servant, true},
       {:m_s1_y2, :f2, false},
       {:m_s1_y2, :servant, true},
       {:m_s1_f, :f2, false},
       {:m_s1_f, :servant, true}
     ]},
    {:group_read, @g1_rows},
    {:recorder_group, @g1_rows}
  ]

  for {kind, rows} <- @expectations do
    @kind kind
    @rows MapSet.new(rows)

    test "#{kind} reads #{MapSet.size(@rows)} roster rows", %{world: world} do
      entries = Ash.read!(RosterEntry, actor: actor(world, @kind), page: false)

      assert roster_rows(entries, world) == @rows
      assert length(entries) == MapSet.size(@rows)
    end
  end

  # No constraint allows a second `users_admin_on` row for one user and group
  # today, so the duplicate the view can produce needs the constraint dropped;
  # the DDL rolls back with the test's transaction.
  test "a servant with two grant rows on one group is listed twice by the view, once by the read",
       %{world: world} do
    %{m_g1: meeting, dup_servant: person} = world.records
    Repo.query!("alter table auth.users_admin_on drop constraint users_admin_on_group")
    Factory.grant!(world.users.dup_servant, :group, world.records.g1.id, edit?: true)

    %{rows: [[view_rows]]} =
      Repo.query!(
        "select count(*) from history.meeting_roster where meeting_id = $1 and person_id = $2",
        [Ecto.UUID.dump!(meeting.id), Ecto.UUID.dump!(person.id)]
      )

    entries =
      RosterEntry
      |> Ash.Query.filter(meeting_id == ^meeting.id and person_id == ^person.id)
      |> Ash.read!(actor: actor(world, :read_all), page: false)

    assert view_rows == 2
    assert length(entries) == 1
  end

  test "archived meetings have no roster", %{world: world} do
    entries =
      RosterEntry
      |> Ash.Query.filter(meeting_id == ^world.records.m_archived.id)
      |> Ash.read!(actor: actor(world, :read_all), page: false)

    assert entries == []
  end

  test "keyset pages hold each entry once, with a count", %{world: world} do
    first = Ash.read!(RosterEntry, actor: actor(world, :read_all), page: [limit: 5, count: true])

    rest =
      Ash.read!(RosterEntry,
        actor: actor(world, :read_all),
        page: [limit: 50, after: List.last(first.results).__metadata__.keyset]
      )

    assert first.count == length(@s1_rows ++ @g1_rows ++ @g2_rows)
    assert length(first.results ++ rest.results) == first.count
  end

  test "the system actor reads every roster entry", %{world: world} do
    entries = Ash.read!(RosterEntry, actor: ChurchAdmin.Authz.Actor.system(), page: false)

    assert roster_rows(entries, world) == MapSet.new(@s1_rows ++ @g1_rows ++ @g2_rows)
  end

  test "an entry loads the attendance records of its meeting, person and role", %{world: world} do
    [entry] =
      RosterEntry
      |> Ash.Query.filter(
        meeting_id == ^world.records.m_s1.id and person_id == ^world.records.m1.id
      )
      |> Ash.Query.load(:attendance_records)
      |> Ash.read!(actor: actor(world, :read_all), page: false)

    assert names(entry.attendance_records, world) == MapSet.new([:a_m1, :a_m1_later])
  end
end
