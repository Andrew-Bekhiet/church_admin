defmodule ChurchAdmin.Realtime.Live.DeltaTest do
  use ExUnit.Case, async: true

  alias ChurchAdmin.Realtime.Live.Delta
  alias ChurchAdmin.Realtime.Live.Result

  defp row(id, name \\ "same"), do: %{"id" => id, "keyset" => "k#{id}", "name" => name}

  defp list(rows, opts \\ []) do
    page = %{
      "count" => Keyword.get(opts, :count, length(rows)),
      "endKeyset" => Keyword.get(opts, :end_keyset, "end"),
      "results" => rows
    }

    page = Map.merge(page, Keyword.get(opts, :extra, %{}))

    {:ok, result} = Result.from_chunks([%{hash: inspect(rows), data: %{"areas" => page}}])
    result
  end

  defp entity(data) do
    {:ok, result} = Result.from_entity(%{hash: inspect(data), data: data})
    result
  end

  defp payload(previous, next, sent \\ nil) do
    sent = sent || MapSet.new(Result.ids(previous))

    previous |> Delta.between(next) |> Delta.payload(next, sent)
  end

  test "a full payload carries the merged data" do
    next = list([row("1")])

    assert Delta.full(next) == %{full: true, data: Result.data(next)}
  end

  test "an entity is always pushed full" do
    previous = entity(%{"person" => %{"name" => "a"}})
    next = entity(%{"person" => %{"name" => "b"}})

    assert payload(previous, next, MapSet.new()) == Delta.full(next)
  end

  test "a changed row is sent alone, without order" do
    previous = list([row("1"), row("2")])
    renamed = row("2", "renamed")

    assert payload(previous, list([row("1"), renamed])) == %{full: false, rows: [renamed]}
  end

  test "a new row brings the order and the count" do
    previous = list([row("1")])
    next = list([row("1"), row("2")])

    assert payload(previous, next) == %{
             full: false,
             rows: [row("2")],
             order: ["1", "2"],
             count: 2
           }
  end

  test "a row that leaves sends only the order and the count" do
    previous = list([row("1"), row("2")])

    assert payload(previous, list([row("2")])) == %{
             full: false,
             rows: [],
             order: ["2"],
             count: 1
           }
  end

  test "a move sends the order and no rows" do
    previous = list([row("1"), row("2")])

    assert payload(previous, list([row("2"), row("1")])) == %{
             full: false,
             rows: [],
             order: ["2", "1"]
           }
  end

  test "a changed end keyset is sent" do
    previous = list([row("1")], end_keyset: "a")

    assert payload(previous, list([row("1")], end_keyset: "b")) == %{
             full: false,
             rows: [],
             endKeyset: "b"
           }
  end

  test "a row the socket never received is sent even when it did not change" do
    previous = list([row("1"), row("2")])
    next = list([row("1"), row("2", "renamed")])

    assert %{rows: rows} = payload(previous, next, MapSet.new(["2"]))
    assert rows == [row("1"), row("2", "renamed")]
  end

  test "a change outside the page's rows falls back to a full payload" do
    previous = list([row("1")], extra: %{"hasNextPage" => false})
    next = list([row("1")], extra: %{"hasNextPage" => true})

    assert payload(previous, next) == Delta.full(next)
  end

  test "rows that have no id are pushed full" do
    previous = list([%{"keyset" => "k", "name" => "a"}])
    next = list([%{"keyset" => "k", "name" => "b"}])

    assert payload(previous, next, MapSet.new()) == Delta.full(next)
  end
end
