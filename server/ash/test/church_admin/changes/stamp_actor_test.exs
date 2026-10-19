defmodule ChurchAdmin.Changes.StampActorTest do
  use ChurchAdmin.DataCase, async: true

  alias ChurchAdmin.Authz.Actor
  alias ChurchAdmin.TestDomain.StampedNote
  alias ChurchAdmin.TestDomain.WriteBlockFixtures

  setup do
    WriteBlockFixtures.create_tables!()
    %{actor: WriteBlockFixtures.user_actor!()}
  end

  defp create_note(input, actor) do
    StampedNote
    |> Ash.Changeset.for_create(:create, Map.put(input, :person_id, Ash.UUID.generate()),
      actor: actor
    )
    |> Ash.create()
  end

  test "a user's write is stamped with the user's uid", %{actor: actor} do
    assert {:ok, note} = create_note(%{}, actor)
    assert note.recorded_by == actor.uid
  end

  test "a user cannot stamp the write with someone else's uid", %{actor: actor} do
    someone_else = WriteBlockFixtures.user_actor!()

    assert {:ok, note} = create_note(%{recorded_by: someone_else.uid}, actor)
    assert note.recorded_by == actor.uid
  end

  test "the system actor keeps the uid it passes explicitly", %{actor: actor} do
    assert {:ok, note} = create_note(%{recorded_by: actor.uid}, Actor.system())
    assert note.recorded_by == actor.uid
  end

  test "the system actor must pass the uid for a required column" do
    assert {:error, %Ash.Error.Invalid{errors: errors}} = create_note(%{}, Actor.system())

    assert Enum.any?(
             errors,
             &match?(%Ash.Error.Changes.InvalidAttribute{field: :recorded_by}, &1)
           )

    assert Exception.message(%Ash.Error.Invalid{errors: errors}) =~ "system actor"
  end
end
