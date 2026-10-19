defmodule ChurchAdmin.Attendance.MeetingRulesTest do
  use ChurchAdmin.OrgCase, async: false

  alias ChurchAdmin.Repo

  setup do
    for order <- 1..3, do: Factory.study_year!(order)
    {user, actor} = everything_actor!()
    {:ok, user: user, actor: actor}
  end

  defp set_service_range(service, from, to) do
    ChurchAdmin.DataCase.set_system_db_session()

    Repo.query!(
      "update services set study_year_from_id = $2, study_year_to_id = $3 where id = $1::text::uuid",
      [service.id, from, to]
    )
  end

  describe "a service meeting's study year" do
    test "must lie within the service's study year range", ctx do
      service = Factory.service!(study_year_from_id: 2, study_year_to_id: 3)

      for inside <- [2, 3] do
        assert {:ok, _id} =
                 OrgWrites.create(ctx.actor, :meeting, %{
                   name: "inside",
                   service_id: service.id,
                   service_study_year: inside
                 })
      end

      assert {:error, "meeting/service-study-year-mismatch"} =
               OrgWrites.create(ctx.actor, :meeting, %{
                 name: "outside",
                 service_id: service.id,
                 service_study_year: 1
               })
    end

    test "may be any year when the service has no range", ctx do
      service = Factory.service!()

      assert {:ok, _id} =
               OrgWrites.create(ctx.actor, :meeting, %{
                 name: "any year",
                 service_id: service.id,
                 service_study_year: 3
               })
    end

    test "may be left out", ctx do
      service = Factory.service!(study_year_from_id: 2, study_year_to_id: 3)

      assert {:ok, _id} =
               OrgWrites.create(ctx.actor, :meeting, %{name: "all years", service_id: service.id})
    end

    test "is not checked for a group's meeting", ctx do
      group = Factory.group!(Factory.service!(study_year_from_id: 2, study_year_to_id: 3))

      assert {:ok, _id} =
               OrgWrites.create(ctx.actor, :meeting, %{name: "group", group_id: group.id})
    end

    test "is checked again when the meeting is renamed", ctx do
      service = Factory.service!(study_year_from_id: 1, study_year_to_id: 3)
      meeting = Factory.meeting!(service_id: service.id, service_study_year: 1)
      set_service_range(service, 2, 3)

      assert {:error, "meeting/service-study-year-mismatch"} =
               OrgWrites.update(ctx.actor, :meeting, meeting.id, %{name: "Renamed"})
    end
  end

  describe "a meeting's owner" do
    test "is exactly one of a service and a group", ctx do
      service = Factory.service!()
      group = Factory.group!(service)

      for attrs <- [%{}, %{service_id: service.id, group_id: group.id}] do
        assert {:error, "meeting/service-or-group-required"} =
                 OrgWrites.create(ctx.actor, :meeting, Map.put(attrs, :name, "ownerless"))
      end
    end

    test "gives a group's meeting no study year or gender", ctx do
      group = Factory.group!(Factory.service!())

      for properties <- [%{service_study_year: 1}, %{service_gender: true}] do
        assert {:error, "meeting/group-with-service-properties"} =
                 OrgWrites.create(
                   ctx.actor,
                   :meeting,
                   Map.merge(%{name: "group", group_id: group.id}, properties)
                 )
      end
    end
  end

  for {kind, owner_column, mismatch, archived} <- [
        {:service, :service_id, "service/default-meeting-mismatch",
         "service/default-meeting-archived"},
        {:group, :group_id, "group/default-meeting-mismatch", "group/default-meeting-archived"}
      ] do
    describe "a #{kind}'s default meeting" do
      setup do
        service = Factory.service!()

        owner =
          case unquote(kind) do
            :service -> service
            :group -> Factory.group!(service)
          end

        {:ok, owner: owner}
      end

      test "can be one of its own meetings, and can be cleared", ctx do
        meeting = Factory.meeting!([{unquote(owner_column), ctx.owner.id}])

        assert {:ok, _id} =
                 OrgWrites.update(ctx.actor, unquote(kind), ctx.owner.id, %{
                   default_meeting_id: meeting.id
                 })

        assert column(table(unquote(kind)), "default_meeting_id", ctx.owner.id) == meeting.id

        assert {:ok, _id} =
                 OrgWrites.update(ctx.actor, unquote(kind), ctx.owner.id, %{
                   default_meeting_id: nil
                 })

        assert column(table(unquote(kind)), "default_meeting_id", ctx.owner.id) == nil
      end

      test "cannot be another #{kind}'s meeting", ctx do
        other = Factory.service!()

        other_owner =
          case unquote(kind) do
            :service -> other
            :group -> Factory.group!(other)
          end

        meeting = Factory.meeting!([{unquote(owner_column), other_owner.id}])

        assert {:error, unquote(mismatch)} =
                 OrgWrites.update(ctx.actor, unquote(kind), ctx.owner.id, %{
                   default_meeting_id: meeting.id
                 })
      end

      test "cannot be an archived meeting", ctx do
        meeting = Factory.meeting!([{unquote(owner_column), ctx.owner.id}, {:is_archived, true}])

        assert {:error, unquote(archived)} =
                 OrgWrites.update(ctx.actor, unquote(kind), ctx.owner.id, %{
                   default_meeting_id: meeting.id
                 })
      end

      test "is cleared when its meeting is archived, and the #{kind} is edited by the archiver",
           ctx do
        meeting = Factory.meeting!([{unquote(owner_column), ctx.owner.id}])
        set_default_meeting(unquote(kind), ctx.owner, meeting)

        written =
          edit_rows_written_by(table(unquote(kind)), ctx.owner.id, fn ->
            assert {:ok, _id} =
                     OrgWrites.update(ctx.actor, :meeting, meeting.id, %{is_archived: true})
          end)

        assert column(table(unquote(kind)), "default_meeting_id", ctx.owner.id) == nil
        assert written == [{ctx.user.uid, "user"}]
      end

      test "is kept when another of the #{kind}'s meetings is archived", ctx do
        default = Factory.meeting!([{unquote(owner_column), ctx.owner.id}])
        other = Factory.meeting!([{unquote(owner_column), ctx.owner.id}])
        set_default_meeting(unquote(kind), ctx.owner, default)

        assert {:ok, _id} = OrgWrites.update(ctx.actor, :meeting, other.id, %{is_archived: true})

        assert column(table(unquote(kind)), "default_meeting_id", ctx.owner.id) == default.id
      end

      test "is kept when its meeting is edited without archiving it", ctx do
        meeting = Factory.meeting!([{unquote(owner_column), ctx.owner.id}])
        set_default_meeting(unquote(kind), ctx.owner, meeting)

        assert {:ok, _id} = OrgWrites.update(ctx.actor, :meeting, meeting.id, %{name: "Renamed"})

        assert column(table(unquote(kind)), "default_meeting_id", ctx.owner.id) == meeting.id
      end
    end
  end

  defp table(:service), do: "services"
  defp table(:group), do: "groups"

  defp set_default_meeting(kind, owner, meeting) do
    ChurchAdmin.DataCase.set_system_db_session()

    Repo.query!(
      "update #{table(kind)} set default_meeting_id = $2::text::uuid where id = $1::text::uuid",
      [owner.id, meeting.id]
    )
  end
end
