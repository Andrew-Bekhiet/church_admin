defmodule ChurchAdmin.People.PersonDbLogicTest do
  @moduledoc """
  Pins what writing a person does besides storing the row: soft delete, edit
  history of the person and its memberships, the person rules that held at
  commit, the user sync and the insertion and user-link guards. The scenarios
  drive `ChurchAdmin.PersonWrites` and read the database, so they hold for
  whoever implements those rules.
  """

  use ChurchAdmin.DataCase, async: false

  alias ChurchAdmin.Authz.{Actor, ActorLoader}
  alias ChurchAdmin.Errors.Codes
  alias ChurchAdmin.{Factory, PersonWrites}

  setup do
    Repo.query!(
      "insert into auth.permissions (name) values ('deleteData') on conflict do nothing"
    )

    for order <- 1..3, do: Factory.study_year!(order)

    manager = Factory.user!()
    Factory.permissions!(manager, ~w(approved readAllData writeAllData deleteData))

    service = Factory.service!()
    service_editor = Factory.user!()
    Factory.permissions!(service_editor, ~w(approved))
    Factory.grant!(service_editor, :service, service.id, edit?: true)

    %{
      manager: manager,
      actor: ActorLoader.load(manager.uid),
      editor: ActorLoader.load(service_editor.uid),
      system: Actor.system(),
      family: Factory.family!(),
      service: service,
      years_1_to_1: Factory.service!(study_year_from_id: 1, study_year_to_id: 1),
      group: Factory.group!(service)
    }
  end

  defp rows(sql, params), do: Repo.query!(sql, params).rows

  defp edits(id) do
    "select \"table\", recorded_by::text, user_role from history.edit_history where record_id = $1::text::uuid"
    |> rows([id])
    |> Enum.sort()
  end

  defp person_row(id) do
    [row] =
      rows(
        "select deleted_at is not null, deleted_by::text, is_servant from persons where id = $1::text::uuid",
        [id]
      )

    row
  end

  defp exists?(table, id),
    do: rows("select 1 from #{table} where id = $1::text::uuid", [id]) != []

  defp person!(actor, family, attrs \\ %{}) do
    {:ok, id} =
      PersonWrites.create_person(actor, Map.merge(%{name: "p", family_id: family.id}, attrs))

    id
  end

  describe "soft delete" do
    test "a user's delete archives the person and stamps who deleted it", ctx do
      id = person!(ctx.actor, ctx.family)

      assert {:ok, ^id} = PersonWrites.delete_person(ctx.actor, id)
      assert person_row(id) == [true, ctx.manager.uid, false]
    end

    test "archiving writes one edit row for the person, recorded by the user", ctx do
      id = person!(ctx.actor, ctx.family)
      before = edits(id)

      {:ok, _id} = PersonWrites.delete_person(ctx.actor, id)

      assert edits(id) -- before == [["persons", ctx.manager.uid, "user"]]
    end

    test "the system's hard delete removes the person, its contacts and memberships, and records nothing",
         ctx do
      id = person!(ctx.actor, ctx.family, %{services: [ctx.service.id]})

      {:ok, _id} =
        PersonWrites.update_person(ctx.actor, id, %{contacts: [%{phone: "+201000000001"}]})

      before = edits(id)

      assert {:ok, ^id} = PersonWrites.hard_delete_person(ctx.system, id)
      refute exists?("persons", id)
      assert rows("select 1 from contacts where person_id = $1::text::uuid", [id]) == []
      assert rows("select 1 from persons_services where person_id = $1::text::uuid", [id]) == []
      assert edits(id) == before
    end
  end

  describe "edit history" do
    test "creating a person records one edit, and each membership one for its target and one for the person",
         ctx do
      tag = Factory.tag!()
      hobby = Factory.hobby!()
      service_before = edits(ctx.service.id)
      group_before = edits(ctx.group.id)

      id =
        person!(ctx.actor, ctx.family, %{
          services: [ctx.service.id],
          groups: [ctx.group.id],
          tags: [tag.id],
          hobbies: [hobby.id]
        })

      assert edits(id) == List.duplicate(["persons", ctx.manager.uid, "user"], 4)
      assert edits(ctx.service.id) -- service_before == [["services", ctx.manager.uid, "user"]]
      assert edits(ctx.group.id) -- group_before == [["groups", ctx.manager.uid, "user"]]
      assert edits(tag.id) == [["tags", ctx.manager.uid, "user"]]
      assert edits(hobby.id) == []
    end

    test "an update records one edit even when nothing changes; removing a membership records none",
         ctx do
      id = person!(ctx.actor, ctx.family, %{services: [ctx.service.id]})
      before_person = edits(id)
      before_service = edits(ctx.service.id)

      {:ok, _id} = PersonWrites.update_person(ctx.actor, id, %{})
      {:ok, _id} = PersonWrites.update_person(ctx.actor, id, %{services: []})

      assert edits(id) -- before_person == List.duplicate(["persons", ctx.manager.uid, "user"], 2)
      assert edits(ctx.service.id) == before_service
    end

    test "the system's writes record the admin role without a recorder", ctx do
      id = person!(ctx.system, ctx.family)

      assert edits(id) == [["persons", nil, "admin"]]
    end
  end

  describe "a person keeps a container" do
    test "a person with no family, store, user, service or group is refused", ctx do
      assert PersonWrites.create_person(ctx.actor, %{name: "loose"}) ==
               {:error, Codes.person_container_required()}
    end

    test "a service added in the same write anchors the person", ctx do
      assert {:ok, _id} =
               PersonWrites.create_person(ctx.actor, %{name: "p", services: [ctx.service.id]})
    end

    test "leaving the family for nothing is refused", ctx do
      id = person!(ctx.actor, ctx.family)

      assert PersonWrites.update_person(ctx.actor, id, %{family_id: nil}) ==
               {:error, Codes.person_container_required()}
    end
  end

  describe "memberships" do
    test "a service whose study years exclude the person's is refused; an unbounded service and a person without a year pass",
         ctx do
      assert PersonWrites.create_person(ctx.actor, %{
               name: "p",
               family_id: ctx.family.id,
               study_year_id: 2,
               services: [ctx.years_1_to_1.id]
             }) == {:error, Codes.person_study_year_outside_service()}

      assert {:ok, _id} =
               PersonWrites.create_person(ctx.actor, %{
                 name: "p",
                 family_id: ctx.family.id,
                 study_year_id: 1,
                 services: [ctx.years_1_to_1.id, ctx.service.id]
               })

      assert {:ok, _id} =
               PersonWrites.create_person(ctx.actor, %{
                 name: "p",
                 family_id: ctx.family.id,
                 services: [ctx.years_1_to_1.id]
               })
    end

    test "a group needs its service, which may be added in the same write", ctx do
      assert PersonWrites.create_person(ctx.actor, %{
               name: "p",
               family_id: ctx.family.id,
               groups: [ctx.group.id]
             }) == {:error, Codes.person_group_outside_service()}

      assert {:ok, _id} =
               PersonWrites.create_person(ctx.actor, %{
                 name: "p",
                 family_id: ctx.family.id,
                 groups: [ctx.group.id],
                 services: [ctx.service.id]
               })
    end
  end

  describe "a linked person" do
    test "is a servant", ctx do
      linked = Factory.user!()
      id = person!(ctx.actor, ctx.family, %{is_servant: false})

      {:ok, _id} = PersonWrites.update_person(ctx.system, id, %{uid: linked.uid})

      assert [false, nil, true] = person_row(id)
    end

    test "passes its name to its user", ctx do
      linked = Factory.user!()
      id = person!(ctx.system, ctx.family, %{uid: linked.uid})

      {:ok, _id} = PersonWrites.update_person(ctx.actor, id, %{name: "renamed"})

      assert rows("select name from auth.users_data where uid = $1::text::uuid", [linked.uid]) ==
               [["renamed"]]
    end

    test "cannot take another user's name", ctx do
      linked = Factory.user!()
      other = Factory.user!()
      id = person!(ctx.system, ctx.family, %{uid: linked.uid})

      assert PersonWrites.update_person(ctx.actor, id, %{name: other.name}) ==
               {:error, Codes.user_name_taken()}
    end
  end

  describe "guards" do
    test "a service editor creates a person in the service, and nobody else", ctx do
      assert {:ok, _id} =
               PersonWrites.create_person(ctx.editor, %{name: "p", services: [ctx.service.id]})

      assert PersonWrites.create_person(ctx.editor, %{name: "p", family_id: ctx.family.id}) ==
               {:error, Codes.forbidden()}
    end

    test "linking a person to a user the caller may not edit is refused; to a manageable one passes",
         ctx do
      id = person!(ctx.actor, ctx.family)
      plain = Factory.user!()
      Factory.permissions!(plain, ~w(approved readAllData writeAllData))
      stranger = Factory.user!()

      assert PersonWrites.update_person(ActorLoader.load(plain.uid), id, %{uid: stranger.uid}) ==
               {:error, Codes.person_user_link_not_permitted()}

      manager = Factory.user!()
      Factory.permissions!(manager, ~w(approved readAllData writeAllData manageAllUsers))

      assert {:ok, ^id} =
               PersonWrites.update_person(ActorLoader.load(manager.uid), id, %{
                 uid: stranger.uid
               })
    end
  end
end
