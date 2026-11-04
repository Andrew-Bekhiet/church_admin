defmodule ChurchAdmin.Realtime.Live.ResultTest do
  use ExUnit.Case, async: true

  alias ChurchAdmin.Realtime.Live.Result

  defp row(id, keyset \\ nil), do: %{"id" => id, "keyset" => keyset || "k#{id}"}

  defp chunk(rows, end_keyset, count) do
    %{
      hash: "hash-#{end_keyset}",
      data: %{
        "areas" => %{"count" => count, "endKeyset" => end_keyset, "results" => rows}
      }
    }
  end

  test "an entity keeps its chunk's data" do
    data = %{"person" => nil}

    assert {:ok, result} = Result.from_entity(%{hash: "h", data: data})
    assert Result.data(result) == data
    assert result.chunk_hashes == ["h"]
    assert result.rows == nil
  end

  test "a list's chunks merge into one page, with count and end keyset of the last" do
    chunks = [chunk([row("1"), row("2")], "k2", 3), chunk([row("3")], "k3", 9)]

    assert {:ok, result} = Result.from_chunks(chunks)

    assert Result.data(result) == %{
             "areas" => %{
               "count" => 9,
               "endKeyset" => "k3",
               "results" => [row("1"), row("2"), row("3")]
             }
           }

    assert result.chunk_hashes == ["hash-k2", "hash-k3"]
    assert Result.ids(result) == ["1", "2", "3"]
    assert [{"1", "k1", row1} | _rest] = result.rows
    assert row1 == row("1")
  end

  test "a window that starts empty has one empty chunk" do
    assert {:ok, result} = Result.from_chunks([chunk([], nil, 0)])

    assert Result.ids(result) == []
    assert Result.data(result)["areas"]["results"] == []
  end

  test "a chunk without a page cannot be a list" do
    assert {:error, :not_a_list} = Result.from_chunks([%{hash: "h", data: %{"area" => nil}}])
    assert {:error, :not_a_list} = Result.from_chunks([%{hash: "h", data: %{"a" => 1, "b" => 2}}])
  end

  test "rows without an id merge but are kept whole, as they cannot be told apart" do
    rows = [%{"keyset" => "k1", "name" => "a"}]

    assert {:ok, result} = Result.from_chunks([chunk(rows, "k1", 1)])

    assert result.rows == nil
    assert Result.data(result)["areas"]["results"] == rows
  end
end
