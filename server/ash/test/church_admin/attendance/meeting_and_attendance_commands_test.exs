defmodule ChurchAdmin.Attendance.MeetingAndAttendanceCommandsTest do
  use ChurchAdmin.OrgCase, async: false

  alias ChurchAdmin.Attendance

  @monday ~U[2026-03-02 10:00:00.000000Z]

  setup do
    for order <- 1..2, do: Factory.study_year!(order)
    service = Factory.service!()
    group = Factory.group!(service)
    {:ok, service: service, group: group}
  end

  defp actor_with(permissions, grants \\ []) do
    user = Factory.user!()
    Factory.permissions!(user, permissions)
    for {kind, scope_id, flags} <- grants, do: Factory.grant!(user, kind, scope_id, flags)
    actor_for(user)
  end

  defp allowed?({:ok, _result}), do: true
  defp allowed?(:ok), do: true
  defp allowed?({:error, _error}), do: false

  defp forbidden?({:error, error}), do: codes(error) == ["forbidden"]
  defp forbidden?(_succeeded), do: false

  describe "createMeeting" do
    test "creates a service meeting with every field the client sends", ctx do
      actor = actor_with(["approved", "recordAllAttendance"])

      assert {:ok, meeting} =
               Attendance.create_meeting(
                 %{
                   name: "Sunday",
                   audience: :only_persons,
                   color: 3,
                   is_archived: false,
                   show_kodas_checkbox: false,
                   service_id: ctx.service.id,
                   service_study_year: 1,
                   service_gender: true
                 },
                 actor: actor
               )

      assert %{audience: :only_persons, show_kodas_checkbox: false, service_study_year: 1} =
               meeting
    end

    test "recordAllAttendance covers audiences with persons, recordAllServantsAttendance those with servants",
         ctx do
      persons = actor_with(["approved", "recordAllAttendance"])
      servants = actor_with(["approved", "recordAllServantsAttendance"])

      for {actor, audience, expected} <- [
            {persons, :only_persons, true},
            {persons, :persons_and_servants, true},
            {persons, :only_servants, false},
            {servants, :only_servants, true},
            {servants, :persons_and_servants, true},
            {servants, :only_persons, false}
          ] do
        result =
          Attendance.create_meeting(
            %{name: "Meeting", audience: audience, service_id: ctx.service.id},
            actor: actor
          )

        assert allowed?(result) == expected, "#{audience} expected #{expected}"
        if not expected, do: assert(forbidden?(result))
      end
    end

    test "an unapproved holder of the permission cannot create meetings", ctx do
      actor = actor_with(["recordAllAttendance"])

      assert forbidden?(
               Attendance.create_meeting(%{name: "No", service_id: ctx.service.id}, actor: actor)
             )
    end

    test "a group grant of any flags covers the group's meetings only", ctx do
      actor = actor_with(["approved"], [{:group, ctx.group.id, []}])
      other_group = Factory.group!(ctx.service)

      assert allowed?(
               Attendance.create_meeting(%{name: "Mine", group_id: ctx.group.id}, actor: actor)
             )

      assert forbidden?(
               Attendance.create_meeting(%{name: "Theirs", group_id: other_group.id},
                 actor: actor
               )
             )
    end

    test "a service grant limited to a study year covers only meetings of that exact year", ctx do
      actor = actor_with(["approved"], [{:service, ctx.service.id, study_year: 1}])

      assert allowed?(
               Attendance.create_meeting(
                 %{name: "Year 1", service_id: ctx.service.id, service_study_year: 1},
                 actor: actor
               )
             )

      assert forbidden?(
               Attendance.create_meeting(
                 %{name: "Year 2", service_id: ctx.service.id, service_study_year: 2},
                 actor: actor
               )
             )

      assert forbidden?(
               Attendance.create_meeting(%{name: "Any year", service_id: ctx.service.id},
                 actor: actor
               )
             )
    end

    test "a service grant limited to a gender covers only meetings of that exact gender", ctx do
      actor = actor_with(["approved"], [{:service, ctx.service.id, gender: false}])

      assert allowed?(
               Attendance.create_meeting(
                 %{name: "Girls", service_id: ctx.service.id, service_gender: false},
                 actor: actor
               )
             )

      assert forbidden?(
               Attendance.create_meeting(%{name: "Everyone", service_id: ctx.service.id},
                 actor: actor
               )
             )
    end

    test "an unrestricted service grant covers every meeting of the service", ctx do
      actor = actor_with(["approved"], [{:service, ctx.service.id, []}])

      assert allowed?(
               Attendance.create_meeting(
                 %{
                   name: "Boys, year 2",
                   service_id: ctx.service.id,
                   service_study_year: 2,
                   service_gender: true
                 },
                 actor: actor
               )
             )
    end
  end

  describe "updateMeeting" do
    setup ctx do
      meeting = Factory.meeting!(service_id: ctx.service.id, audience: :persons_and_servants)
      {:ok, meeting: meeting}
    end

    test "changes the editable fields", ctx do
      actor = actor_with(["approved", "recordAllAttendance", "recordAllServantsAttendance"])

      assert {:ok, updated} =
               Attendance.update_meeting(
                 ctx.meeting,
                 %{
                   name: "Renamed",
                   audience: :only_servants,
                   color: 5,
                   show_kodas_checkbox: false
                 },
                 actor: actor
               )

      assert %{name: "Renamed", audience: :only_servants, color: 5, show_kodas_checkbox: false} =
               updated
    end

    test "the result must still be one the actor may write", ctx do
      actor = actor_with(["approved", "recordAllAttendance"])

      assert forbidden?(
               Attendance.update_meeting(ctx.meeting, %{audience: :only_servants}, actor: actor)
             )

      assert column("history.meetings", "audience", ctx.meeting.id) == "personsAndServants"
    end

    test "a meeting outside the actor's grants is not editable", ctx do
      actor = actor_with(["approved"], [{:group, ctx.group.id, []}])

      assert forbidden?(Attendance.update_meeting(ctx.meeting, %{name: "No"}, actor: actor))
    end

    test "archiving a meeting clears it as its service's default, whoever may edit the service",
         ctx do
      actor = actor_with(["approved"], [{:service, ctx.service.id, record_persons?: true}])

      ChurchAdmin.DataCase.set_system_db_session()

      ChurchAdmin.Repo.query!(
        "update services set default_meeting_id = $2::text::uuid where id = $1::text::uuid",
        [ctx.service.id, ctx.meeting.id]
      )

      assert {:ok, _meeting} =
               Attendance.update_meeting(ctx.meeting, %{is_archived: true}, actor: actor)

      assert column("services", "default_meeting_id", ctx.service.id) == nil
    end
  end

  describe "attendance records" do
    setup ctx do
      family = Factory.family!()
      person = Factory.person!(gender: true, study_year_id: 1, family_id: family.id)
      Factory.in_service!(person, ctx.service)

      servant_user = Factory.user!()
      Factory.permissions!(servant_user, ["approved"])
      servant = Factory.person!(uid: servant_user.uid, family_id: family.id)
      Factory.grant!(servant_user, :service, ctx.service.id)

      meeting = Factory.meeting!(service_id: ctx.service.id)
      {:ok, person: person, servant: servant, meeting: meeting}
    end

    defp mark(ctx, actor, person, opts \\ []) do
      Attendance.mark_attendance(
        %{
          meeting_id: ctx.meeting.id,
          person_id: person.id,
          datetime: @monday,
          as_servant: Keyword.get(opts, :as_servant, false)
        },
        actor: actor
      )
    end

    test "a recorder of persons marks a rostered person, recorded by themselves", ctx do
      recorder = actor_with(["approved"], [{:service, ctx.service.id, record_persons?: true}])

      assert {:ok, record} = mark(ctx, recorder, ctx.person)

      assert record.recorded_by == recorder.uid
    end

    test "the client cannot choose who recorded the attendance", ctx do
      recorder = actor_with(["approved"], [{:service, ctx.service.id, record_persons?: true}])

      assert {:error, error} =
               Attendance.mark_attendance(
                 %{
                   meeting_id: ctx.meeting.id,
                   person_id: ctx.person.id,
                   recorded_by: Ash.UUID.generate()
                 },
                 actor: recorder
               )

      assert %Ash.Error.Invalid{errors: [%Ash.Error.Invalid.NoSuchInput{input: :recorded_by}]} =
               error
    end

    test "recording persons does not cover servants, and the other way round", ctx do
      persons_recorder =
        actor_with(["approved"], [{:service, ctx.service.id, record_persons?: true}])

      servants_recorder =
        actor_with(["approved"], [{:service, ctx.service.id, record_servants?: true}])

      assert forbidden?(mark(ctx, persons_recorder, ctx.servant, as_servant: true))
      assert allowed?(mark(ctx, servants_recorder, ctx.servant, as_servant: true))
      assert forbidden?(mark(ctx, servants_recorder, ctx.person))
    end

    test "recordAllAttendance covers persons and not servants", ctx do
      recorder = actor_with(["approved", "readAllData", "recordAllAttendance"])

      assert allowed?(mark(ctx, recorder, ctx.person))
      assert forbidden?(mark(ctx, recorder, ctx.servant, as_servant: true))
    end

    test "reading everything is not recording anything", ctx do
      reader = actor_with(["approved", "readAllData"])

      assert forbidden?(mark(ctx, reader, ctx.person))
    end

    test "a recorder of another service's meetings records nothing here", ctx do
      recorder =
        actor_with(["approved"], [{:service, Factory.service!().id, record_persons?: true}])

      assert forbidden?(mark(ctx, recorder, ctx.person))
    end

    test "a person off the meeting's roster is refused with the rule's code", ctx do
      recorder = actor_with(["approved"], [{:service, ctx.service.id, record_persons?: true}])
      outsider = Factory.person!(family_id: Factory.family!().id)

      assert codes(mark(ctx, recorder, outsider)) == ["attendance/not-in-meeting"]
    end

    test "the time moves and the record is removed by a recorder, not by others", ctx do
      recorder = actor_with(["approved"], [{:service, ctx.service.id, record_persons?: true}])
      bystander = actor_with(["approved"])
      {:ok, record} = mark(ctx, recorder, ctx.person)

      assert forbidden?(
               Attendance.update_attendance_time(record, %{datetime: @monday}, actor: bystander)
             )

      assert {:ok, moved} =
               Attendance.update_attendance_time(record, %{datetime: DateTime.add(@monday, 3600)},
                 actor: recorder
               )

      assert moved.datetime == DateTime.add(@monday, 3600)
      assert forbidden?(Attendance.unmark_attendance(record, actor: bystander))
      assert :ok = Attendance.unmark_attendance(record, actor: recorder)
      assert column("history.attendance_history", "id", record.id) == nil
    end

    test "a second record on the same day is attendance/already-recorded", ctx do
      recorder = actor_with(["approved"], [{:service, ctx.service.id, record_persons?: true}])
      {:ok, _record} = mark(ctx, recorder, ctx.person)

      assert codes(mark(ctx, recorder, ctx.person)) == ["attendance/already-recorded"]
    end
  end
end
