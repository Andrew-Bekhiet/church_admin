defmodule ChurchAdmin.Realtime.RowChangeTest do
  use ExUnit.Case, async: true

  alias ChurchAdmin.Realtime.RowChange

  defp update(old, new, old_complete? \\ true) do
    %RowChange{
      relation: {"public", "persons"},
      op: :update,
      old: old,
      new: new,
      old_complete?: old_complete?
    }
  end

  describe "changed_columns/1 of an update whose old row was replicated in full" do
    test "names the columns whose values differ" do
      old = %{"id" => "1", "name" => "a", "notes" => "same"}
      new = %{"id" => "1", "name" => "b", "notes" => "same"}

      assert old |> update(new) |> RowChange.changed_columns() == MapSet.new(["name"])
    end

    test "treats a column set to NULL as changed" do
      old = %{"name" => "a"}

      assert old |> update(%{"name" => nil}) |> RowChange.changed_columns() ==
               MapSet.new(["name"])
    end

    test "is empty when nothing differs" do
      row = %{"id" => "1", "name" => "a"}

      assert row |> update(row) |> RowChange.changed_columns() == MapSet.new()
    end

    test "counts an unchanged TOAST value in the new row as unchanged" do
      old = %{"id" => "1", "bio" => "long text", "name" => "a"}
      new = %{"id" => "1", "bio" => :unchanged_toast, "name" => "b"}

      assert old |> update(new) |> RowChange.changed_columns() == MapSet.new(["name"])
    end
  end

  describe "changed_columns/1 counts every column as touched for" do
    test "an update without an old row" do
      change = update(nil, %{"id" => "1"}, false)

      assert RowChange.changed_columns(change) == :all
    end

    test "an update whose old row holds only the key" do
      old = %{"id" => "1", "name" => nil}
      new = %{"id" => "2", "name" => nil}

      assert old |> update(new, false) |> RowChange.changed_columns() == :all
    end

    test "inserts, deletes and truncates" do
      for {op, old, new} <- [
            {:insert, nil, %{"id" => "1"}},
            {:delete, %{"id" => "1"}, nil},
            {:truncate, nil, nil}
          ] do
        change = %RowChange{relation: {"public", "persons"}, op: op, old: old, new: new}

        assert RowChange.changed_columns(change) == :all
      end
    end
  end
end
