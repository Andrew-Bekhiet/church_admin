defmodule ChurchAdmin.AttendanceWorld do
  @moduledoc """
  `ChurchAdmin.AuthzWorld` plus what the attendance policies read: more
  meetings, attendance records, and the extra actor kinds the meeting
  scopes need. `build!/0` returns the same `%{records, users}` shape.

  Meetings (`m_s1`, `m_s1_y2`, `m_g1` come from the base world):

    * `m_s1_f` (`s1`, female only), `m_s1_m` (`s1`, male only)
    * `m_g2` (`g2`, which only `area_store` belongs to; nobody administers it)
    * `m_archived` (`g1`, archived: it never has a roster)

  Roster rows (`history.meeting_roster`, archived meetings have none):

    * `m_s1`: `m1`, `f2`, servant `servant`
    * `m_s1_y2`: `f2`, servant; `m_s1_f`: `f2`, servant; `m_s1_m`: `m1`, servant
    * `m_g1`: `grp`, servant `dup_servant`; `m_g2`: `area_store`

  Attendance records, all on 2026-03-01 unless named: `a_m1` and `a_m1_later`
  (2026-03-08) in `m_s1`, `a_f2`, `a_servant` (as servant), `a_grp` in `m_g1`, and
  `a_store_g2` in `m_g2`: a record of a person the area readers can read, in a
  meeting none of them administers. The baseline's insert guard only lets a
  rostered person attend, so every record belongs to a roster row.

  Extra actors: `recorder_group` (record persons on `g1`), `recorder_year1`
  (record persons on `s1`, year 1), `record_all_read` (readAllData and
  recordAllAttendance), `record_all_no_read` (recordAllAttendance alone),
  `unapproved_read_all` (readAllData, never approved) and `dup_servant`
  (a servant of `g1`; the roster test gives them a second grant row).
  """

  alias ChurchAdmin.Accounts.User
  alias ChurchAdmin.Attendance.AttendanceRecord
  alias ChurchAdmin.{AuthzWorld, Factory}

  @first_day ~U[2026-03-01 10:00:00.000000Z]
  @second_day ~U[2026-03-08 10:00:00.000000Z]

  @extra_kinds [
    :recorder_group,
    :recorder_year1,
    :record_all_read,
    :record_all_no_read,
    :unapproved_read_all,
    :dup_servant
  ]

  def actor_kinds, do: AuthzWorld.actor_kinds() ++ @extra_kinds

  def build! do
    %{records: records, users: users} = AuthzWorld.build!()

    extra_users = Map.new(@extra_kinds, &{&1, Factory.user!()})
    dup_person = Factory.person!(uid: extra_users.dup_servant.uid)
    grant_extra_users!(extra_users, records)

    meetings = %{
      m_s1_f: Factory.meeting!(service_id: records.s1.id, service_gender: false),
      m_s1_m: Factory.meeting!(service_id: records.s1.id, service_gender: true),
      m_g2: Factory.meeting!(group_id: records.g2.id),
      m_archived: Factory.meeting!(group_id: records.g1.id, is_archived: true)
    }

    records = records |> Map.merge(meetings) |> Map.put(:dup_servant, dup_person)
    users = Map.merge(users, extra_users)

    recorder = users.read_all
    record = &attendance!(&1, &2, &3, &4, recorder)

    attendance = %{
      a_m1: record.(records.m_s1, records.m1, false, @first_day),
      a_m1_later: record.(records.m_s1, records.m1, false, @second_day),
      a_f2: record.(records.m_s1, records.f2, false, @first_day),
      a_servant: record.(records.m_s1, records.servant, true, @first_day),
      a_grp: record.(records.m_g1, records.grp, false, @first_day),
      a_store_g2: record.(meetings.m_g2, records.area_store, false, @first_day)
    }

    %{records: Map.merge(records, attendance), users: users}
  end

  defp attendance!(meeting, person, as_servant, datetime, %User{uid: recorded_by}) do
    Ash.Seed.seed!(AttendanceRecord, %{
      meeting_id: meeting.id,
      person_id: person.id,
      as_servant: as_servant,
      datetime: datetime,
      recorded_by: recorded_by
    })
  end

  defp grant_extra_users!(users, records) do
    approved = Map.drop(users, [:unapproved_read_all])
    for {_kind, user} <- approved, do: Factory.permissions!(user, ["approved"])

    Factory.permissions!(users.unapproved_read_all, ["readAllData"])
    Factory.permissions!(users.record_all_read, ["readAllData", "recordAllAttendance"])
    Factory.permissions!(users.record_all_no_read, ["recordAllAttendance"])

    Factory.grant!(users.recorder_group, :group, records.g1.id, record_persons?: true)

    Factory.grant!(users.recorder_year1, :service, records.s1.id,
      study_year: 1,
      record_persons?: true
    )

    Factory.grant!(users.dup_servant, :group, records.g1.id)
  end
end
