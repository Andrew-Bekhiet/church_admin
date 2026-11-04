defmodule ChurchAdmin.Realtime.ViewerFactsTest do
  use ExUnit.Case, async: true

  alias ChurchAdmin.Realtime.RowChange
  alias ChurchAdmin.Realtime.ViewerFacts

  @persons {"public", "persons"}

  defp person_update(new, opts \\ []) do
    %RowChange{
      relation: @persons,
      op: :update,
      old: opts[:old],
      new: new,
      old_complete?: opts[:old] != nil
    }
  end

  defp linked(overrides \\ %{}),
    do:
      Map.merge(%{"id" => "p", "uid" => "u", "family_id" => "f", "deleted_at" => nil}, overrides)

  defp unlinked, do: linked(%{"uid" => nil})

  test "an update of a linked person with unknown columns may change facts" do
    assert ViewerFacts.touched?(person_update(linked()))
  end

  test "an update of a person with no uid does not" do
    refute ViewerFacts.touched?(person_update(unlinked()))
  end

  test "a known change to uid, family_id or deleted_at of a linked person does" do
    assert ViewerFacts.touched?(person_update(linked(), old: linked(%{"uid" => "other"})))
    assert ViewerFacts.touched?(person_update(linked(), old: linked(%{"family_id" => "other"})))

    assert ViewerFacts.touched?(person_update(linked(), old: linked(%{"deleted_at" => "t"})))
  end

  test "a known change to any other column does not" do
    refute ViewerFacts.touched?(person_update(linked(), old: linked(%{"id" => "other"})))
  end

  test "a linked person inserted does" do
    assert ViewerFacts.touched?(%RowChange{relation: @persons, op: :insert, new: linked()})
  end

  test "a delete whose old row does not tell the uid does" do
    assert ViewerFacts.touched?(%RowChange{relation: @persons, op: :delete, old: %{"id" => "p"}})
  end

  test "a truncate does" do
    assert ViewerFacts.touched?(%RowChange{relation: @persons, op: :truncate})
  end

  test "other tables do not" do
    refute ViewerFacts.touched?(%RowChange{
             relation: {"public", "hobbies"},
             op: :insert,
             new: linked()
           })
  end
end
