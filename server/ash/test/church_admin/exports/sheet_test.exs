defmodule ChurchAdmin.Exports.SheetTest do
  use ExUnit.Case, async: true

  alias ChurchAdmin.Exports.Sheet

  describe "move_ids_to_end/1" do
    test "puts id columns after the other columns, each group in its own order" do
      row = [{"id", 1}, {"name", "a"}, {"lastEdit.uid", 2}, {"x", 3}, {"address.area.id", 4}]

      assert Sheet.move_ids_to_end(row) == [
               {"name", "a"},
               {"x", 3},
               {"id", 1},
               {"lastEdit.uid", 2},
               {"address.area.id", 4}
             ]
    end

    test "does not mistake a column that merely ends in id for an id column" do
      assert Sheet.move_ids_to_end([{"valid", 1}, {"id", 2}, {"paid", 3}]) ==
               [{"valid", 1}, {"paid", 3}, {"id", 2}]
    end
  end

  describe "merge_header/1" do
    test "keeps the first row's order and slots new keys after the key they follow" do
      rows = [
        [{"a", 1}, {"c", 1}],
        [{"a", 2}, {"b", 2}, {"c", 2}],
        [{"c", 3}, {"d", 3}],
        [{"e", 4}]
      ]

      assert Sheet.merge_header(rows) == ["e", "a", "b", "c", "d"]
    end

    test "is empty for no rows" do
      assert Sheet.merge_header([]) == []
    end
  end

  describe "autofilter_range/2" do
    test "spans the header and every row" do
      assert Sheet.autofilter_range(["a", "b", "c"], 5) == "A1:C6"
    end

    test "names columns past Z with two letters" do
      header = Enum.map(1..28, &"c#{&1}")
      assert Sheet.autofilter_range(header, 1) == "A1:AB2"
    end
  end

  describe "sanitize_name/1" do
    test "replaces characters Excel forbids in sheet names and keeps 31 characters" do
      assert Sheet.sanitize_name("a:b\\c/d?e*f[g]h") == "a_b_c_d_e_f_g_h"
      assert Sheet.sanitize_name(String.duplicate("x", 40)) == String.duplicate("x", 31)
    end
  end

  describe "column_widths/2" do
    test "is the longest of the header and every cell, in characters" do
      rows = [[{"name", "ab"}, {"n", 12_345}], [{"name", "abcdef"}, {"n", nil}]]

      assert Sheet.column_widths(["name", "n", "flag"], rows ++ [[{"flag", true}]]) ==
               [6, 5, 4]
    end

    test "counts a header wider than its cells" do
      assert Sheet.column_widths(["long header"], [[{"long header", "x"}]]) == [11]
    end
  end
end
