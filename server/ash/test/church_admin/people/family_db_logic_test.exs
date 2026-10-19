defmodule ChurchAdmin.People.FamilyDbLogicTest do
  @moduledoc """
  Pins what writing a family does besides storing the row: soft delete, edit
  history of the family and its parent and child links, and the insertion
  guards on families, stores and addresses, including the family a new
  person brings with it. The scenarios drive `ChurchAdmin.FamilyWrites` (and
  `ChurchAdmin.PersonWrites` for the person's family) and read the database,
  so they hold for whoever implements those rules.
  """

  use ChurchAdmin.DataCase, async: false

  alias ChurchAdmin.Authz.{Actor, ActorLoader}
  alias ChurchAdmin.Errors.Codes
  alias ChurchAdmin.{Factory, FamilyWrites, PersonWrites}

  setup do
    Repo.query!(
      "insert into auth.permissions (name) values ('deleteData') on conflict do nothing"
    )

    manager = Factory.user!()
    Factory.permissions!(manager, ~w(approved readAllData writeAllData deleteData))

    area = Factory.area!()
    other_area = Factory.area!()

    %{
      manager: manager,
      actor: ActorLoader.load(manager.uid),
      system: Actor.system(),
      area: area,
      street: Factory.street!(area),
      other_area: other_area,
      other_street: Factory.street!(other_area)
    }
  end

  defp rows(sql, params), do: Repo.query!(sql, params).rows

  defp edits(id) do
    "select \"table\", recorded_by::text, user_role from history.edit_history where record_id = $1::text::uuid"
    |> rows([id])
    |> Enum.sort()
  end

  defp family_row(id) do
    [row] =
      rows(
        "select deleted_at is not null, deleted_by::text from families where id = $1::text::uuid",
        [id]
      )

    row
  end

  defp exists?(table, column \\ "id", id),
    do: rows("select 1 from #{table} where #{column} = $1::text::uuid", [id]) != []

  defp address(area, street), do: %{area_id: area.id, street_id: street.id}

  defp family!(actor, attrs \\ %{}) do
    {:ok, id} = FamilyWrites.create_family(actor, Map.merge(%{name: "family"}, attrs))
    id
  end

  defp area_editor(area) do
    user = Factory.user!()
    Factory.permissions!(user, ~w(approved))
    Factory.grant!(user, :area, area.id, edit?: true)
    ActorLoader.load(user.uid)
  end

  describe "soft delete" do
    test "a user's delete archives the family and stamps who deleted it", ctx do
      id = family!(ctx.actor)

      assert {:ok, ^id} = FamilyWrites.delete_family(ctx.actor, id)
      assert family_row(id) == [true, ctx.manager.uid]
    end

    test "archiving writes one edit row for the family, recorded by the user", ctx do
      id = family!(ctx.actor)
      before = edits(id)

      {:ok, _id} = FamilyWrites.delete_family(ctx.actor, id)

      assert edits(id) -- before == [["families", ctx.manager.uid, "user"]]
    end

    test "the system's hard delete removes the family, its address and links, and records nothing",
         ctx do
      parent = family!(ctx.actor)

      id =
        family!(ctx.actor, %{address: address(ctx.area, ctx.street), parents: [parent]})

      before = edits(id)
      parent_before = edits(parent)

      assert {:ok, ^id} = FamilyWrites.hard_delete_family(ctx.system, id)
      refute exists?("families", id)
      refute exists?("addresses", "family_id", id)
      refute exists?("families_families", "child_family_id", id)
      assert edits(id) == before
      assert edits(parent) == parent_before
    end
  end

  describe "edit history" do
    test "creating a family records one edit, each parent link one for the parent and each child link one for the family",
         ctx do
      parent = family!(ctx.actor)
      child = family!(ctx.actor)
      parent_before = edits(parent)
      child_before = edits(child)

      id = family!(ctx.actor, %{parents: [parent], children: [child]})

      edit = ["families", ctx.manager.uid, "user"]
      assert edits(id) == [edit, edit]
      assert edits(parent) -- parent_before == [edit]
      assert edits(child) == child_before
    end

    test "an update records one edit even when nothing changes", ctx do
      id = family!(ctx.actor)
      before = edits(id)

      assert {:ok, ^id} = FamilyWrites.update_family(ctx.actor, id, %{})

      assert edits(id) -- before == [["families", ctx.manager.uid, "user"]]
    end

    test "linking a parent records an edit for the parent, unlinking records nothing", ctx do
      parent = family!(ctx.actor)
      id = family!(ctx.actor)
      parent_before = edits(parent)

      {:ok, _id} = FamilyWrites.update_family(ctx.actor, id, %{parents: [parent]})
      linked = edits(parent)
      {:ok, _id} = FamilyWrites.update_family(ctx.actor, id, %{parents: []})

      assert linked -- parent_before == [["families", ctx.manager.uid, "user"]]
      assert edits(parent) == linked
      refute exists?("families_families", "child_family_id", id)
    end

    test "writing the address records nothing beyond the family's own edit", ctx do
      id = family!(ctx.actor, %{address: address(ctx.area, ctx.street)})
      before = edits(id)

      {:ok, _id} =
        FamilyWrites.update_family(ctx.actor, id, %{
          address: address(ctx.other_area, ctx.other_street)
        })

      assert edits(id) -- before == [["families", ctx.manager.uid, "user"]]
    end

    test "the system actor's writes record no user and the admin role", ctx do
      id = family!(ctx.system)

      assert edits(id) == [["families", nil, "admin"]]
    end
  end

  describe "family insertion guard" do
    test "an area editor creates a family addressed in its area", ctx do
      editor = area_editor(ctx.area)

      assert {:ok, id} =
               FamilyWrites.create_family(editor, %{
                 name: "family",
                 address: address(ctx.area, ctx.street)
               })

      assert exists?("addresses", "family_id", id)
    end

    test "an area editor cannot create a family addressed elsewhere, and nothing is written",
         ctx do
      editor = area_editor(ctx.area)
      name = "family #{System.unique_integer([:positive])}"

      assert {:error, code} =
               FamilyWrites.create_family(editor, %{
                 name: name,
                 address: address(ctx.other_area, ctx.other_street)
               })

      assert code == Codes.forbidden()
      assert rows("select 1 from families where name = $1", [name]) == []
    end

    test "a user without a write-all grant cannot create a family without an address", ctx do
      assert {:error, code} =
               FamilyWrites.create_family(area_editor(ctx.area), %{name: "family"})

      assert code == Codes.forbidden()
    end

    test "a write-all user creates a family without an address", ctx do
      assert {:ok, _id} = FamilyWrites.create_family(ctx.actor, %{name: "family"})
    end

    test "a service editor's new person brings a new family and its address", ctx do
      service = Factory.service!()
      user = Factory.user!()
      Factory.permissions!(user, ~w(approved))
      Factory.grant!(user, :service, service.id, edit?: true)
      editor = ActorLoader.load(user.uid)

      assert {:ok, id} =
               PersonWrites.create_person(editor, %{
                 name: "Mina Fawzy",
                 services: [service.id],
                 address: address(ctx.area, ctx.street)
               })

      [[family_id]] = rows("select family_id::text from persons where id = $1::text::uuid", [id])
      assert exists?("addresses", "family_id", family_id)
    end
  end

  describe "address insertion guard" do
    test "a member editor who cannot edit the family cannot give it an address", ctx do
      service = Factory.service!()
      user = Factory.user!()
      Factory.permissions!(user, ~w(approved))
      Factory.grant!(user, :service, service.id, edit?: true)
      editor = ActorLoader.load(user.uid)
      family = Factory.family!()
      person = Factory.person!(family_id: family.id)
      Factory.in_service!(person, service)

      assert {:error, code} =
               PersonWrites.update_person(editor, person.id, %{
                 address: address(ctx.area, ctx.street)
               })

      assert code == Codes.forbidden()
      refute exists?("addresses", "family_id", family.id)
    end

    test "a family editor gives a family without one an address", ctx do
      service = Factory.service!()
      user = Factory.user!()
      Factory.permissions!(user, ~w(approved))
      Factory.grant!(user, :service, service.id, edit?: true, write_related_families?: true)
      editor = ActorLoader.load(user.uid)
      family = Factory.family!()
      Factory.in_service!(Factory.person!(family_id: family.id), service)

      assert {:ok, id} =
               FamilyWrites.update_family(editor, family.id, %{
                 address: address(ctx.area, ctx.street)
               })

      assert exists?("addresses", "family_id", id)
    end
  end

  describe "store insertion guard" do
    test "an area editor creates a store addressed in its area", ctx do
      assert {:ok, _id} =
               FamilyWrites.create_store(area_editor(ctx.area), %{
                 name: "store",
                 address: address(ctx.area, ctx.street)
               })
    end

    test "an area editor cannot create a store addressed elsewhere", ctx do
      assert {:error, code} =
               FamilyWrites.create_store(area_editor(ctx.area), %{
                 name: "store",
                 address: address(ctx.other_area, ctx.other_street)
               })

      assert code == Codes.forbidden()
    end

    test "a family editor cannot create an unaddressed store for the family", ctx do
      editor = area_editor(ctx.area)
      family = family!(ctx.actor, %{address: address(ctx.area, ctx.street)})

      assert {:error, code} =
               FamilyWrites.create_store(editor, %{name: "store", admin_family_id: family})

      assert code == Codes.forbidden()
    end
  end
end
