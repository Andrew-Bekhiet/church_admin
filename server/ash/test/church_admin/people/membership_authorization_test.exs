defmodule ChurchAdmin.People.MembershipAuthorizationTest do
  @moduledoc """
  Service and group memberships follow Hasura's link-table rules, even when a
  person command writes them. Adding a link the actor may not add fails the
  whole command, as a Hasura insert whose check failed did; a link the actor
  may not remove stays and the rest of the edit is saved, as Hasura's
  `delete … where` skipped rows outside its filter.
  """

  use ChurchAdmin.DataCase, async: false

  import ChurchAdmin.AccountsCase, only: [codes: 1]

  alias ChurchAdmin.Authz.ActorLoader
  alias ChurchAdmin.Authz.Checks.CreatedInCommand
  alias ChurchAdmin.{Factory, People}
  alias ChurchAdmin.People.{GroupMembership, Person, ServiceMembership}

  require Ash.Query

  setup do
    for order <- [1, 2, 3], do: Factory.study_year!(order)

    s1 = Factory.service!()
    s2 = Factory.service!()
    group = Factory.group!(s2)
    person = Factory.person!(%{family_id: Factory.family!().id})
    Factory.in_service!(person, s1)
    Factory.in_service!(person, s2)
    Factory.in_group!(person, group)

    %{s1: s1, s2: s2, group: group, person: person}
  end

  defp actor_with(grants) do
    user = Factory.user!()
    Factory.permissions!(user, ~w(approved))
    for {kind, id, flags} <- grants, do: Factory.grant!(user, kind, id, flags)
    ActorLoader.load(user.uid)
  end

  defp service_ids(person_id), do: ids_of(ServiceMembership, person_id, :service_id)
  defp group_ids(person_id), do: ids_of(GroupMembership, person_id, :group_id)

  defp ids_of(resource, person_id, column) do
    resource
    |> Ash.Query.filter(person_id == ^person_id)
    |> Ash.read!(authorize?: false, page: false)
    |> Enum.map(&Map.fetch!(&1, column))
    |> Enum.sort()
  end

  defp editable(person, actor), do: Ash.get!(Person, person.id, actor: actor)

  describe "updatePerson removing memberships" do
    test "keeps the service and group the editor cannot edit and saves the rest", ctx do
      editor = actor_with([{:service, ctx.s1.id, edit?: true}])

      assert {:ok, _person} =
               ctx.person
               |> editable(editor)
               |> People.update_person(
                 %{name: "renamed", services: [ctx.s1.id], groups: []},
                 actor: editor
               )

      assert service_ids(ctx.person.id) == Enum.sort([ctx.s1.id, ctx.s2.id])
      assert group_ids(ctx.person.id) == [ctx.group.id]
      assert Ash.get!(Person, ctx.person.id, authorize?: false).name == "renamed"
    end

    test "removes the service and group the editor edits", ctx do
      editor =
        actor_with([
          {:service, ctx.s1.id, edit?: true},
          {:service, ctx.s2.id, edit?: true},
          {:group, ctx.group.id, edit?: true}
        ])

      assert {:ok, _person} =
               ctx.person
               |> editable(editor)
               |> People.update_person(
                 %{services: [ctx.s1.id], groups: []},
                 actor: editor
               )

      assert service_ids(ctx.person.id) == [ctx.s1.id]
      assert group_ids(ctx.person.id) == []
    end
  end

  describe "updatePerson adding memberships" do
    test "adds a service with person edit alone, as Hasura's insert check allowed", ctx do
      s3 = Factory.service!()
      editor = actor_with([{:service, ctx.s1.id, edit?: true}])

      assert {:ok, _person} =
               ctx.person
               |> editable(editor)
               |> People.update_person(
                 %{services: [ctx.s1.id, ctx.s2.id, s3.id]},
                 actor: editor
               )

      assert s3.id in service_ids(ctx.person.id)
    end

    test "adds a group the editor edits, keeping the one it cannot remove", ctx do
      editable_group = Factory.group!(ctx.s1)

      editor =
        actor_with([
          {:service, ctx.s1.id, edit?: true},
          {:group, editable_group.id, edit?: true}
        ])

      assert {:ok, _person} =
               ctx.person
               |> editable(editor)
               |> People.update_person(
                 %{groups: [editable_group.id]},
                 actor: editor
               )

      assert group_ids(ctx.person.id) == Enum.sort([ctx.group.id, editable_group.id])
    end

    test "a group the editor only reads fails the whole edit", ctx do
      read_only_group = Factory.group!(ctx.s1)

      editor =
        actor_with([
          {:service, ctx.s1.id, edit?: true},
          {:group, read_only_group.id, edit?: false}
        ])

      assert {:error, error} =
               ctx.person
               |> editable(editor)
               |> People.update_person(
                 %{name: "renamed", groups: [read_only_group.id]},
                 actor: editor
               )

      assert codes(error) == ["forbidden"]
      assert group_ids(ctx.person.id) == [ctx.group.id]
      refute Ash.get!(Person, ctx.person.id, authorize?: false).name == "renamed"
    end
  end

  test "createPerson in a group the creator only reads creates nothing", ctx do
    read_only_group = Factory.group!(ctx.s1)

    creator =
      actor_with([
        {:service, ctx.s1.id, edit?: true},
        {:group, read_only_group.id, edit?: false}
      ])

    assert {:error, error} =
             People.create_person(
               %{name: "never written", services: [ctx.s1.id], groups: [read_only_group.id]},
               actor: creator
             )

    assert codes(error) == ["forbidden"]
    refute Person |> Ash.Query.filter(name == "never written") |> Ash.exists?(authorize?: false)
  end

  describe "a service membership" do
    setup do
      service = Factory.service!(%{study_year_from_id: 2, study_year_to_id: 3})
      editor = actor_with([{:service, service.id, edit?: true, study_year: 3}])
      %{service: service, editor: editor}
    end

    defp leave(person, service, actor) do
      ServiceMembership
      |> Ash.Query.filter(person_id == ^person.id and service_id == ^service.id)
      |> Ash.bulk_destroy(:leave_service, %{},
        actor: actor,
        authorize_query?: false,
        strategy: [:atomic],
        return_errors?: true
      )
    end

    test "is removed by a service editor who cannot edit the person when it lies outside the service's years",
         ctx do
      outside = Factory.person!(%{study_year_id: 1})
      Factory.in_service!(outside, ctx.service)

      leave(outside, ctx.service, ctx.editor)

      assert service_ids(outside.id) == []
    end

    test "stays when it lies inside the service's years and the editor cannot edit the person",
         ctx do
      inside = Factory.person!(%{study_year_id: 2})
      Factory.in_service!(inside, ctx.service)

      leave(inside, ctx.service, ctx.editor)

      assert service_ids(inside.id) == [ctx.service.id]
    end

    test "is added for a person created in the same command by a service editor who cannot edit it",
         ctx do
      person = Factory.person!(%{study_year_id: 2})
      created = CreatedInCommand.remember_created(%{}, :person, person.id)

      join = fn context ->
        ServiceMembership
        |> Ash.Changeset.for_create(
          :join_service,
          %{person_id: person.id, service_id: ctx.service.id},
          actor: ctx.editor,
          context: context
        )
        |> Ash.create()
      end

      assert {:error, %Ash.Error.Forbidden{}} = join.(%{})
      assert {:ok, _membership} = join.(created)
    end
  end
end
