defmodule ChurchAdmin.Attendance.AttendanceRecordRulesTest do
  use ChurchAdmin.OrgCase, async: false

  @monday ~U[2026-03-02 10:00:00.000000Z]
  @tuesday ~U[2026-03-03 10:00:00.000000Z]

  setup do
    for order <- 1..2, do: Factory.study_year!(order)
    {user, actor} = everything_actor!()

    service = Factory.service!()
    group = Factory.group!(service)
    family = Factory.family!()

    boy = Factory.person!(gender: true, study_year_id: 1, family_id: family.id)
    girl = Factory.person!(gender: false, study_year_id: 2, family_id: family.id)
    grouped = Factory.person!(gender: true, study_year_id: 1, family_id: family.id)
    outsider = Factory.person!(gender: true, study_year_id: 1, family_id: family.id)

    for person <- [boy, girl, grouped], do: Factory.in_service!(person, service)
    Factory.in_group!(grouped, group)

    {:ok,
     user: user,
     actor: actor,
     service: service,
     group: group,
     boy: boy,
     girl: girl,
     grouped: grouped,
     outsider: outsider}
  end

  defp attend(ctx, meeting, person, opts \\ []) do
    OrgWrites.create(ctx.actor, :attendance, %{
      meeting_id: meeting.id,
      person_id: person.id,
      datetime: Keyword.get(opts, :at, @monday),
      as_servant: Keyword.get(opts, :as_servant, false)
    })
  end

  defp servant!(attrs \\ %{}) do
    user = Factory.user!()
    Factory.permissions!(user, ["approved"])

    person =
      %{uid: user.uid, family_id: Factory.family!().id} |> Map.merge(attrs) |> Factory.person!()

    {user, person}
  end

  describe "who may attend" do
    test "a person of the meeting's service attends, recorded by the acting user", ctx do
      meeting = Factory.meeting!(service_id: ctx.service.id)

      assert {:ok, id} = attend(ctx, meeting, ctx.boy)

      assert column("history.attendance_history", "recorded_by", id) == ctx.user.uid
    end

    test "a person of the meeting's group attends, also when the service has no study year",
         ctx do
      meeting = Factory.meeting!(group_id: ctx.group.id)

      assert {:ok, _id} = attend(ctx, meeting, ctx.grouped)
    end

    test "a person outside the group is refused", ctx do
      meeting = Factory.meeting!(group_id: ctx.group.id)

      assert {:error, "attendance/not-in-meeting"} = attend(ctx, meeting, ctx.boy)
    end

    test "a person outside the service is refused", ctx do
      meeting = Factory.meeting!(service_id: ctx.service.id)

      assert {:error, "attendance/not-in-meeting"} = attend(ctx, meeting, ctx.outsider)
    end

    test "a meeting limited to a study year takes only that year", ctx do
      meeting = Factory.meeting!(service_id: ctx.service.id, service_study_year: 1)

      assert {:ok, _id} = attend(ctx, meeting, ctx.boy)
      assert {:error, "attendance/not-in-meeting"} = attend(ctx, meeting, ctx.girl)
    end

    test "a meeting limited to a gender takes only that gender", ctx do
      meeting = Factory.meeting!(service_id: ctx.service.id, service_gender: false)

      assert {:ok, _id} = attend(ctx, meeting, ctx.girl)
      assert {:error, "attendance/not-in-meeting"} = attend(ctx, meeting, ctx.boy)
    end

    test "a meeting that does not exist is refused", ctx do
      assert {:error, "attendance/meeting-not-found"} =
               attend(ctx, %{id: Ash.UUID.generate()}, ctx.boy)
    end
  end

  describe "the meeting's audience and state" do
    test "an archived meeting takes no attendance", ctx do
      meeting = Factory.meeting!(service_id: ctx.service.id, is_archived: true)

      assert {:error, "attendance/meeting-archived"} = attend(ctx, meeting, ctx.boy)
    end

    test "a servants-only meeting refuses persons", ctx do
      meeting = Factory.meeting!(service_id: ctx.service.id, audience: :only_servants)

      assert {:error, "attendance/audience-mismatch"} = attend(ctx, meeting, ctx.boy)
    end

    test "a persons-only meeting refuses servants", ctx do
      meeting = Factory.meeting!(service_id: ctx.service.id, audience: :only_persons)
      {_user, servant} = servant!()

      assert {:error, "attendance/audience-mismatch"} =
               attend(ctx, meeting, servant, as_servant: true)
    end
  end

  describe "servants" do
    test "an admin on the meeting's service attends as a servant", ctx do
      meeting = Factory.meeting!(service_id: ctx.service.id)
      {user, servant} = servant!()
      Factory.grant!(user, :service, ctx.service.id)

      assert {:ok, _id} = attend(ctx, meeting, servant, as_servant: true)
    end

    test "an admin on the meeting's group attends as a servant", ctx do
      meeting = Factory.meeting!(group_id: ctx.group.id)
      {user, servant} = servant!()
      Factory.grant!(user, :group, ctx.group.id)

      assert {:ok, _id} = attend(ctx, meeting, servant, as_servant: true)
    end

    test "a service grant for another study year or gender does not cover the meeting", ctx do
      meeting = Factory.meeting!(service_id: ctx.service.id, service_study_year: 1)
      {user, servant} = servant!()
      Factory.grant!(user, :service, ctx.service.id, study_year: 2)

      assert {:error, "attendance/not-a-servant-of-meeting"} =
               attend(ctx, meeting, servant, as_servant: true)

      {user, gendered} = servant!()
      Factory.grant!(user, :service, ctx.service.id, gender: true)
      female_meeting = Factory.meeting!(service_id: ctx.service.id, service_gender: false)

      assert {:error, "attendance/not-a-servant-of-meeting"} =
               attend(ctx, female_meeting, gendered, as_servant: true)
    end

    test "a grant restricted to a study year covers a meeting without one", ctx do
      meeting = Factory.meeting!(service_id: ctx.service.id)
      {user, servant} = servant!()
      Factory.grant!(user, :service, ctx.service.id, study_year: 2)

      assert {:ok, _id} = attend(ctx, meeting, servant, as_servant: true)
    end

    test "a person without a user is not a servant", ctx do
      meeting = Factory.meeting!(service_id: ctx.service.id)

      assert {:error, "attendance/not-a-servant-of-meeting"} =
               attend(ctx, meeting, ctx.boy, as_servant: true)
    end
  end

  describe "once per person, role and day" do
    test "a second record for the same day is attendance/already-recorded", ctx do
      meeting = Factory.meeting!(service_id: ctx.service.id)

      assert {:ok, _id} = attend(ctx, meeting, ctx.boy, at: @monday)

      assert {:error, "attendance/already-recorded"} =
               attend(ctx, meeting, ctx.boy, at: DateTime.add(@monday, 3600))

      assert {:ok, _id} = attend(ctx, meeting, ctx.boy, at: @tuesday)
    end

    test "the same person attends as a person and as a servant on one day", ctx do
      meeting = Factory.meeting!(service_id: ctx.service.id)
      {user, servant} = servant!()
      Factory.grant!(user, :service, ctx.service.id)
      Factory.in_service!(servant, ctx.service)

      assert {:ok, _id} = attend(ctx, meeting, servant)
      assert {:ok, _id} = attend(ctx, meeting, servant, as_servant: true)
    end
  end

  describe "changing a record" do
    test "its time moves, and the move is checked against the meeting again", ctx do
      meeting = Factory.meeting!(service_id: ctx.service.id)
      {:ok, id} = attend(ctx, meeting, ctx.boy)

      assert {:ok, ^id} = OrgWrites.update(ctx.actor, :attendance, id, %{datetime: @tuesday})
      assert column("history.attendance_history", "day", id) == "2026-03-03"

      archive_meeting(meeting)

      assert {:error, "attendance/meeting-archived"} =
               OrgWrites.update(ctx.actor, :attendance, id, %{datetime: @monday})
    end

    test "moving the time onto a day already recorded is attendance/already-recorded", ctx do
      meeting = Factory.meeting!(service_id: ctx.service.id)
      {:ok, _first} = attend(ctx, meeting, ctx.boy, at: @monday)
      {:ok, second} = attend(ctx, meeting, ctx.boy, at: @tuesday)

      assert {:error, "attendance/already-recorded"} =
               OrgWrites.update(ctx.actor, :attendance, second, %{datetime: @monday})
    end

    test "a record is removed for good, even from an archived meeting", ctx do
      meeting = Factory.meeting!(service_id: ctx.service.id)
      {:ok, id} = attend(ctx, meeting, ctx.boy)
      archive_meeting(meeting)

      assert {:ok, ^id} = OrgWrites.delete(system_actor(), :attendance, id)
      assert column("history.attendance_history", "id", id) == nil
    end

    test "a record writes no edit history", ctx do
      meeting = Factory.meeting!(service_id: ctx.service.id)
      {:ok, id} = attend(ctx, meeting, ctx.boy)
      {:ok, _id} = OrgWrites.update(ctx.actor, :attendance, id, %{datetime: @tuesday})

      assert edit_rows("attendance_history", id) == []
    end
  end

  defp archive_meeting(meeting) do
    ChurchAdmin.Repo.query!(
      "update history.meetings set is_archived = true where id = $1::text::uuid",
      [
        meeting.id
      ]
    )
  end
end
