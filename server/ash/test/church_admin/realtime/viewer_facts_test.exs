defmodule ChurchAdmin.Realtime.ViewerFactsTest do
  use ExUnit.Case, async: true

  alias ChurchAdmin.Realtime.RowChange
  alias ChurchAdmin.Realtime.ViewerFacts

  @persons {"public", "persons"}

  defp person_update(new, opts) do
    %RowChange{
      relation: @persons,
      op: :update,
      old: opts[:old],
      new: new,
      old_complete?: opts[:old] != nil
    }
  end

  defp touched_update?(new, opts \\ []), do: new |> person_update(opts) |> ViewerFacts.touched?()

  defp linked(overrides \\ %{}),
    do:
      Map.merge(%{"id" => "p", "uid" => "u", "family_id" => "f", "deleted_at" => nil}, overrides)

  defp unlinked(overrides \\ %{}), do: linked(Map.merge(%{"uid" => nil}, overrides))

  test "an update of a linked person with unknown columns may change facts" do
    assert touched_update?(linked())
  end

  test "an update of a person with no uid does not" do
    refute touched_update?(unlinked())
  end

  test "a known change to uid, family_id or deleted_at of a linked person does" do
    assert touched_update?(linked(), old: linked(%{"uid" => "other"}))
    assert touched_update?(linked(), old: linked(%{"family_id" => "other"}))

    assert touched_update?(linked(), old: linked(%{"deleted_at" => "t"}))
  end

  test "a known change to any other column does not" do
    refute touched_update?(linked(), old: linked(%{"id" => "other"}))
  end

  test "unlinking a person does, the old row naming the viewer it affects" do
    assert touched_update?(unlinked(), old: linked())
  end

  test "editing a person who was never linked does not" do
    refute touched_update?(unlinked(%{"family_id" => "other"}), old: unlinked())
  end

  test "a known edit of an unrelated column of a linked person does not" do
    refute touched_update?(linked(%{"name" => "new"}), old: linked(%{"name" => "old"}))
  end

  test "a delete of a person who was never linked does not" do
    refute ViewerFacts.touched?(%RowChange{relation: @persons, op: :delete, old: unlinked()})
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
