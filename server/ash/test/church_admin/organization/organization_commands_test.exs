defmodule ChurchAdmin.Organization.OrganizationCommandsTest do
  use ChurchAdmin.OrgCase, async: false

  require Ash.Query

  alias ChurchAdmin.Attendance.{Meeting, MeetingInput}
  alias ChurchAdmin.Organization
  alias ChurchAdmin.Organization.{Class, Group, Service}

  setup do
    for order <- 1..3, do: Factory.study_year!(order)
    {_user, writer} = everything_actor!()
    {:ok, writer: writer}
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

  describe "createService" do
    test "creates the service, a default meeting of its own, and one edit row", ctx do
      meeting = %MeetingInput{name: "Sunday liturgy", audience: :only_persons, color: 7}

      assert {:ok, service} =
               Organization.create_service(
                 %{
                   name: "Sunday school",
                   study_year_from_id: 1,
                   study_year_to_id: 3,
                   color: 4,
                   default_meeting: meeting
                 },
                 actor: ctx.writer
               )

      assert %Meeting{} =
               default = Ash.get!(Meeting, service.default_meeting_id, authorize?: false)

      assert %{service_id: service_id, name: "Sunday liturgy", audience: :only_persons} = default
      assert service_id == service.id
      assert default.color == 7
      assert length(edit_rows("services", service.id)) == 1
    end

    test "creates a service without a meeting", ctx do
      assert {:ok, %Service{default_meeting_id: nil, name: "Plain"}} =
               Organization.create_service(%{name: "Plain"}, actor: ctx.writer)
    end

    test "writes no service when the default meeting is rejected", ctx do
      meeting = %MeetingInput{name: "Bad year", service_study_year: 1}

      assert {:error, error} =
               Organization.create_service(
                 %{
                   name: "Rolled back",
                   study_year_from_id: 2,
                   study_year_to_id: 3,
                   default_meeting: meeting
                 },
                 actor: ctx.writer
               )

      assert codes(error) == ["meeting/service-study-year-mismatch"]
      refute Ash.exists?(Ash.Query.filter(Service, name == "Rolled back"), authorize?: false)
    end

    test "a taken name is service/name-taken", ctx do
      Factory.service!(name: "Taken")

      assert codes(Organization.create_service(%{name: "Taken"}, actor: ctx.writer)) ==
               ["service/name-taken"]
    end

    test "only writeAllData holders create services, approved or not", ctx do
      assert allowed?(Organization.create_service(%{name: "By writer"}, actor: ctx.writer))

      unapproved = actor_with(["writeAllData"])
      assert allowed?(Organization.create_service(%{name: "By unapproved"}, actor: unapproved))

      approved = actor_with(["approved", "readAllData"])
      assert forbidden?(Organization.create_service(%{name: "By reader"}, actor: approved))
    end
  end

  describe "updateService" do
    setup do
      service = Factory.service!()
      meeting = Factory.meeting!(service_id: service.id)
      {:ok, service: service, meeting: meeting}
    end

    test "sets the fields and the default meeting", ctx do
      assert {:ok, updated} =
               Organization.update_service(
                 ctx.service,
                 %{name: "Renamed", color: 9, default_meeting_id: ctx.meeting.id},
                 actor: ctx.writer
               )

      assert %{name: "Renamed", color: 9, default_meeting_id: default_meeting_id} = updated
      assert default_meeting_id == ctx.meeting.id
    end

    test "a service editor edits their service, not another", ctx do
      editor = actor_with(["approved"], [{:service, ctx.service.id, edit?: true}])
      other = Factory.service!()

      assert allowed?(Organization.update_service(ctx.service, %{name: "Mine"}, actor: editor))
      assert forbidden?(Organization.update_service(other, %{name: "Theirs"}, actor: editor))
    end

    test "a service reader does not edit it", ctx do
      reader = actor_with(["approved"], [{:service, ctx.service.id, []}])

      assert forbidden?(Organization.update_service(ctx.service, %{name: "No"}, actor: reader))
    end
  end

  describe "deleteService" do
    test "needs both writeAllData and deleteData" do
      both = actor_with(["approved", "readAllData", "writeAllData", "deleteData"])
      only_write = actor_with(["approved", "readAllData", "writeAllData"])
      only_delete = actor_with(["approved", "deleteData"])

      for actor <- [only_write, only_delete] do
        assert forbidden?(Organization.delete_service(Factory.service!(), actor: actor))
      end

      assert allowed?(Organization.delete_service(Factory.service!(), actor: both))
    end

    test "is not a hard delete: the row is archived for the user", ctx do
      service = Factory.service!()

      assert :ok = Organization.delete_service(service, actor: ctx.writer)
      assert %{archived?: true} = archived_state("services", service.id)
    end

    test "users cannot hard-delete", ctx do
      service = Factory.service!()

      assert {:error, _forbidden} =
               service
               |> Ash.Changeset.for_destroy(:hard_destroy, %{}, actor: ctx.writer)
               |> Ash.destroy()
    end
  end

  describe "createClass" do
    setup do
      {:ok, service: Factory.service!()}
    end

    test "covers only its study year when no end year is given", ctx do
      assert {:ok, class} =
               Organization.create_class(
                 %{name: "Class", service_id: ctx.service.id, service_study_year: 2},
                 actor: ctx.writer
               )

      assert class.service_study_year_to == 2
    end

    test "keeps an explicit end year", ctx do
      assert {:ok, class} =
               Organization.create_class(
                 %{
                   name: "Class",
                   service_id: ctx.service.id,
                   service_study_year: 1,
                   service_study_year_to: 3,
                   service_gender: false
                 },
                 actor: ctx.writer
               )

      assert %{service_study_year_to: 3, service_gender: false} = class
    end

    test "writeAllData holders and editors of the class's service create classes", ctx do
      attrs = %{name: "Class", service_id: ctx.service.id, service_study_year: 1}
      editor = actor_with(["approved"], [{:service, ctx.service.id, edit?: true}])
      reader = actor_with(["approved"], [{:service, ctx.service.id, []}])
      elsewhere = actor_with(["approved"], [{:service, Factory.service!().id, edit?: true}])

      assert allowed?(Organization.create_class(attrs, actor: ctx.writer))
      assert allowed?(Organization.create_class(attrs, actor: editor))
      assert forbidden?(Organization.create_class(attrs, actor: reader))
      assert forbidden?(Organization.create_class(attrs, actor: elsewhere))
    end
  end

  describe "deleteClass" do
    setup do
      service = Factory.service!()
      {:ok, service: service, class: Factory.class!(service, service_study_year: 1)}
    end

    test "any class is deleted by a bare deleteData holder (faithful to Hasura)", ctx do
      bare_deleter = actor_with(["deleteData"])

      assert allowed?(Organization.delete_class(ctx.class, actor: bare_deleter))
    end

    test "writeAllData holders and editors of the service delete it, readers do not", ctx do
      editor = actor_with(["approved"], [{:service, ctx.service.id, edit?: true}])
      reader = actor_with(["approved"], [{:service, ctx.service.id, []}])

      assert forbidden?(Organization.delete_class(ctx.class, actor: reader))
      assert allowed?(Organization.delete_class(ctx.class, actor: editor))

      assert allowed?(
               Organization.delete_class(Factory.class!(ctx.service, service_study_year: 1),
                 actor: ctx.writer
               )
             )
    end
  end

  describe "updateClass" do
    test "moves the class to another study year", ctx do
      class = Factory.class!(Factory.service!(), service_study_year: 1)

      assert {:ok, updated} =
               Organization.update_class(
                 class,
                 %{service_study_year: 2, service_study_year_to: 3},
                 actor: ctx.writer
               )

      assert %{service_study_year: 2, service_study_year_to: 3} = updated
    end
  end

  describe "createGroup" do
    setup do
      {:ok, service: Factory.service!()}
    end

    test "writeAllData holders create groups", ctx do
      assert {:ok, %Group{name: "Group"}} =
               Organization.create_group(%{name: "Group", service_id: ctx.service.id},
                 actor: ctx.writer
               )
    end

    test "a service editor cannot create a group (faithful to Hasura)", ctx do
      editor = actor_with(["approved"], [{:service, ctx.service.id, edit?: true}])

      assert forbidden?(
               Organization.create_group(%{name: "Group", service_id: ctx.service.id},
                 actor: editor
               )
             )
    end
  end

  describe "updateGroup and deleteGroup" do
    setup do
      service = Factory.service!()
      group = Factory.group!(service)
      {:ok, group: group}
    end

    test "a group editor updates the group, a reader does not", ctx do
      editor = actor_with(["approved"], [{:group, ctx.group.id, edit?: true}])
      reader = actor_with(["approved"], [{:group, ctx.group.id, []}])

      assert allowed?(Organization.update_group(ctx.group, %{name: "Mine"}, actor: editor))
      assert forbidden?(Organization.update_group(ctx.group, %{name: "No"}, actor: reader))
    end

    test "deleting needs deleteData and edit rights on the group", ctx do
      editor = actor_with(["approved"], [{:group, ctx.group.id, edit?: true}])

      deleting_editor =
        actor_with(["approved", "deleteData"], [{:group, ctx.group.id, edit?: true}])

      deleter = actor_with(["approved", "deleteData"])

      assert forbidden?(Organization.delete_group(ctx.group, actor: editor))
      assert forbidden?(Organization.delete_group(ctx.group, actor: deleter))
      assert allowed?(Organization.delete_group(ctx.group, actor: deleting_editor))
    end
  end

  test "archiving a group or service keeps the scopes through it as the permission view had them",
       ctx do
    service = Factory.service!()
    group = Factory.group!(service)
    class = Factory.class!(service, service_study_year: 1)
    member = Factory.person!(family_id: Factory.family!().id)
    Factory.in_service!(member, service)
    Factory.in_group!(member, group)

    group_reader = actor_with(["approved"], [{:group, group.id, []}])
    service_reader = actor_with(["approved"], [{:service, service.id, []}])
    visible = fn actor, resource -> resource |> Ash.read!(actor: actor, page: false) end

    assert member.id in Enum.map(visible.(group_reader, ChurchAdmin.People.Person), & &1.id)
    assert class.id in Enum.map(visible.(service_reader, Class), & &1.id)

    assert :ok = Organization.delete_group(group, actor: ctx.writer)
    assert :ok = Organization.delete_service(service, actor: ctx.writer)

    assert member.id in Enum.map(visible.(group_reader, ChurchAdmin.People.Person), & &1.id)
    assert class.id in Enum.map(visible.(service_reader, Class), & &1.id)
    refute service.id in Enum.map(visible.(service_reader, Service), & &1.id)
  end

  test "an archived class is hidden from reads but kept", ctx do
    service = Factory.service!()
    class = Factory.class!(service, service_study_year: 1)

    assert :ok = Organization.delete_class(class, actor: ctx.writer)

    refute Ash.exists?(Ash.Query.filter(Class, id == ^class.id), actor: ctx.writer)
    assert Ash.exists?(Ash.Query.filter(Class, id == ^class.id), authorize?: false)
  end
end
