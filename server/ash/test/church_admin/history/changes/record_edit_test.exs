defmodule ChurchAdmin.History.Changes.RecordEditTest do
  use ChurchAdmin.DataCase, async: true

  require Ash.Query

  alias ChurchAdmin.Activity.Edit
  alias ChurchAdmin.Authz.Actor
  alias ChurchAdmin.TestDomain.EditedThing
  alias ChurchAdmin.TestDomain.StampedNote
  alias ChurchAdmin.TestDomain.ThingMembership
  alias ChurchAdmin.TestDomain.WriteBlockFixtures

  setup do
    WriteBlockFixtures.create_tables!()
    %{actor: WriteBlockFixtures.user_actor!()}
  end

  defp edits_of(record_ids) do
    Edit
    |> Ash.Query.filter(record_id in ^record_ids)
    |> Ash.read!(authorize?: false)
    |> Enum.map(&Map.take(&1, [:table, :record_id, :recorded_by, :user_role]))
  end

  defp edit_row(table, record_id, recorded_by, user_role) do
    %{table: table, record_id: record_id, recorded_by: recorded_by, user_role: user_role}
  end

  defp create_thing(actor, name \\ "thing") do
    EditedThing
    |> Ash.Changeset.for_create(:create, %{name: name}, actor: actor)
    |> Ash.create!()
  end

  defp database_now do
    %{rows: [[now]]} = Repo.query!("select now()")
    now
  end

  test "a create records the table, the record id and the acting user", %{actor: actor} do
    thing = create_thing(actor)

    assert edits_of([thing.id]) == [edit_row("edited_things", thing.id, actor.uid, "user")]
  end

  test "the edit time is the database's transaction time", %{actor: actor} do
    thing = create_thing(actor)

    [edit] = Edit |> Ash.Query.filter(record_id == ^thing.id) |> Ash.read!(authorize?: false)
    assert DateTime.compare(edit.time, database_now()) == :eq
  end

  test "a join row records the joined record and the person", %{actor: actor} do
    group_id = Ash.UUID.generate()
    person_id = Ash.UUID.generate()

    ThingMembership
    |> Ash.Changeset.for_create(:create, %{group_id: group_id, person_id: person_id},
      actor: actor
    )
    |> Ash.create!()

    assert [group_id, person_id] |> edits_of() |> Enum.sort() ==
             Enum.sort([
               edit_row("groups", group_id, actor.uid, "user"),
               edit_row("persons", person_id, actor.uid, "user")
             ])
  end

  test "the system actor records no user and the admin role" do
    thing = create_thing(Actor.system())

    assert edits_of([thing.id]) == [edit_row("edited_things", thing.id, nil, "admin")]
  end

  test "a history row records its own recorder as the person's editor" do
    recorder = WriteBlockFixtures.user_actor!()
    person_id = Ash.UUID.generate()

    StampedNote
    |> Ash.Changeset.for_create(:create, %{person_id: person_id, recorded_by: recorder.uid},
      actor: Actor.system()
    )
    |> Ash.create!()

    assert edits_of([person_id]) == [edit_row("persons", person_id, recorder.uid, "admin")]
  end

  test "every update records a row, even when nothing changed", %{actor: actor} do
    thing = create_thing(actor)

    thing |> Ash.Changeset.for_update(:update, %{}, actor: actor) |> Ash.update!()
    thing |> Ash.Changeset.for_update(:update, %{name: "thing"}, actor: actor) |> Ash.update!()

    assert length(edits_of([thing.id])) == 3
  end

  test "a bulk create records one row per record", %{actor: actor} do
    result =
      Ash.bulk_create([%{name: "a"}, %{name: "b"}, %{name: "c"}], EditedThing, :create,
        actor: actor,
        return_records?: true,
        return_errors?: true
      )

    assert result.status == :success
    ids = Enum.map(result.records, & &1.id)

    assert ids |> edits_of() |> Enum.sort() ==
             ids |> Enum.map(&edit_row("edited_things", &1, actor.uid, "user")) |> Enum.sort()
  end

  for strategy <- [:atomic, :stream] do
    test "a bulk update with the #{strategy} strategy records one row per record",
         %{actor: actor} do
      things = [create_thing(actor, "a"), create_thing(actor, "b")]
      ids = Enum.map(things, & &1.id)

      result =
        EditedThing
        |> Ash.Query.filter(id in ^ids)
        |> Ash.bulk_update(:update, %{name: "renamed"},
          actor: actor,
          strategy: unquote(strategy),
          return_errors?: true
        )

      assert result.status == :success
      assert length(edits_of(ids)) == 4
    end
  end

  test "a soft delete records a row", %{actor: actor} do
    thing = create_thing(actor)

    thing |> Ash.Changeset.for_destroy(:archive, %{}, actor: actor) |> Ash.destroy!()

    assert length(edits_of([thing.id])) == 2
  end

  test "a hard delete records nothing", %{actor: actor} do
    thing = create_thing(actor)

    thing |> Ash.Changeset.for_destroy(:hard_destroy, %{}, actor: actor) |> Ash.destroy!()

    assert length(edits_of([thing.id])) == 1
  end

  test "an action that fails after its write leaves no row", %{actor: actor} do
    assert {:error, _error} =
             EditedThing
             |> Ash.Changeset.for_create(:create_then_fail, %{name: "doomed"}, actor: actor)
             |> Ash.create()

    assert Ash.read!(EditedThing) == []

    assert Edit
           |> Ash.Query.filter(table == "edited_things")
           |> Ash.read!(authorize?: false) == []
  end

  test "a write without an actor fails instead of recording an anonymous edit" do
    assert {:error, _error} =
             EditedThing
             |> Ash.Changeset.for_create(:create, %{name: "anonymous"})
             |> Ash.create()

    assert Ash.read!(EditedThing) == []
  end

  test "an update without an actor fails and keeps the stored record", %{actor: actor} do
    thing = create_thing(actor, "before")

    assert {:error, _error} =
             thing |> Ash.Changeset.for_update(:update, %{name: "after"}) |> Ash.update()

    assert [%{name: "before"}] = Ash.read!(EditedThing)
    assert length(edits_of([thing.id])) == 1
  end
end
