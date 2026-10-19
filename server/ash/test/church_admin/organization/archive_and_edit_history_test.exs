defmodule ChurchAdmin.Organization.ArchiveAndEditHistoryTest do
  use ChurchAdmin.OrgCase, async: false

  require Ash.Query

  alias ChurchAdmin.Organization.{Class, Group, Service}
  alias ChurchAdmin.Repo

  @kinds [
    service: {Service, "services"},
    class: {Class, "classes"},
    group: {Group, "groups"}
  ]

  setup do
    Factory.study_year!(1)
    {user, actor} = everything_actor!()
    {:ok, user: user, actor: actor, service: Factory.service!()}
  end

  defp attrs_for(:service, _service), do: %{name: "Created service #{System.unique_integer()}"}

  defp attrs_for(:class, service) do
    %{
      name: "Created class",
      service_id: service.id,
      service_study_year: 1,
      service_study_year_to: 1
    }
  end

  defp attrs_for(:group, service), do: %{name: "Created group", service_id: service.id}

  defp existing(:service, service), do: service
  defp existing(:class, service), do: Factory.class!(service, service_study_year: 1)
  defp existing(:group, service), do: Factory.group!(service)

  defp visible_to?(resource, actor, id) do
    resource |> Ash.Query.filter(id == ^id) |> Ash.read!(actor: actor, page: false) != []
  end

  defp count_where(table, column, id) do
    %{rows: [[count]]} =
      Repo.query!("select count(*) from #{table} where #{column} = $1::text::uuid", [id])

    count
  end

  for {kind, {resource, table}} <- @kinds do
    describe "#{kind} lifecycle" do
      test "a user's delete archives the row and stamps who did it", ctx do
        record = existing(unquote(kind), ctx.service)

        assert {:ok, _id} = OrgWrites.delete(ctx.actor, unquote(kind), record.id)

        assert %{archived?: true, deleted_by: deleted_by} =
                 archived_state(unquote(table), record.id)

        assert deleted_by == ctx.user.uid
      end

      test "an archived row is gone from the actor's reads", ctx do
        record = existing(unquote(kind), ctx.service)
        assert visible_to?(unquote(resource), ctx.actor, record.id)

        {:ok, _id} = OrgWrites.delete(ctx.actor, unquote(kind), record.id)

        refute visible_to?(unquote(resource), ctx.actor, record.id)
      end

      test "the system actor's delete removes the row", ctx do
        record = existing(unquote(kind), ctx.service)

        assert {:ok, _id} = OrgWrites.hard_delete(system_actor(), unquote(kind), record.id)

        assert archived_state(unquote(table), record.id) == nil
      end

      test "a create, an update and an archive each write one edit row for the user", ctx do
        {:ok, id} =
          OrgWrites.create(ctx.actor, unquote(kind), attrs_for(unquote(kind), ctx.service))

        assert edit_rows(unquote(table), id) == [{ctx.user.uid, "user"}]

        {:ok, _id} = OrgWrites.update(ctx.actor, unquote(kind), id, %{name: "Renamed"})
        assert edit_rows(unquote(table), id) == List.duplicate({ctx.user.uid, "user"}, 2)

        {:ok, _id} = OrgWrites.delete(ctx.actor, unquote(kind), id)
        assert edit_rows(unquote(table), id) == List.duplicate({ctx.user.uid, "user"}, 3)
      end

      test "an update that changes nothing still writes an edit row", ctx do
        record = existing(unquote(kind), ctx.service)

        written =
          edit_rows_written_by(unquote(table), record.id, fn ->
            {:ok, _id} = OrgWrites.update(ctx.actor, unquote(kind), record.id, %{})
          end)

        assert written == [{ctx.user.uid, "user"}]
      end

      test "the system actor's hard delete writes no edit row", ctx do
        record = existing(unquote(kind), ctx.service)

        written =
          edit_rows_written_by(unquote(table), record.id, fn ->
            {:ok, _id} = OrgWrites.hard_delete(system_actor(), unquote(kind), record.id)
          end)

        assert written == []
      end
    end
  end

  describe "service rules" do
    test "a taken name is reported as service/name-taken", ctx do
      assert {:error, "service/name-taken"} =
               OrgWrites.create(ctx.actor, :service, %{name: ctx.service.name})
    end

    test "hard-deleting a service that still has a class or group is service/in-use", ctx do
      Factory.class!(ctx.service, service_study_year: 1)

      assert {:error, "service/in-use"} =
               OrgWrites.hard_delete(system_actor(), :service, ctx.service.id)

      group_service = Factory.service!()
      Factory.group!(group_service)

      assert {:error, "service/in-use"} =
               OrgWrites.hard_delete(system_actor(), :service, group_service.id)
    end

    test "hard-deleting a service takes its memberships and meetings with it", ctx do
      person = Factory.person!(family_id: Factory.family!().id)
      Factory.in_service!(person, ctx.service)
      meeting = Factory.meeting!(service_id: ctx.service.id)

      assert {:ok, _id} = OrgWrites.hard_delete(system_actor(), :service, ctx.service.id)

      assert column("history.meetings", "id", meeting.id) == nil
      assert count_where("persons_services", "person_id", person.id) == 0
    end
  end

  describe "group rules" do
    test "hard-deleting a group takes its memberships and meetings with it", ctx do
      group = Factory.group!(ctx.service)
      person = Factory.person!(family_id: Factory.family!().id)
      Factory.in_service!(person, ctx.service)
      Factory.in_group!(person, group)
      meeting = Factory.meeting!(group_id: group.id)

      assert {:ok, _id} = OrgWrites.hard_delete(system_actor(), :group, group.id)

      assert column("history.meetings", "id", meeting.id) == nil
      assert count_where("persons_groups", "group_id", group.id) == 0
    end
  end
end
