defmodule ChurchAdmin.Realtime.Live.NarrowingTest do
  use ExUnit.Case, async: true

  alias ChurchAdmin.Realtime.Live.Document
  alias ChurchAdmin.Realtime.Live.Narrowing
  alias ChurchAdmin.Realtime.Live.Result

  @relation {"public", "hobbies"}
  @reads_hobbies %{@relation => MapSet.new(["name"])}
  @with_filter "query hobbies($filter: HobbyFilterInput, $first: Int, $after: String) { hobbies(filter: $filter, first: $first, after: $after) { results { keyset id } } }"
  @without_filter "query hobbies($first: Int, $after: String) { hobbies(first: $first, after: $after) { results { keyset id } } }"

  defp document(text \\ @with_filter) do
    {:ok, document} = Document.prepare(text, nil)
    document
  end

  defp row(id, keyset \\ nil), do: %{"id" => id, "keyset" => keyset || "k#{id}"}

  defp stored(rows, page \\ %{"count" => nil}) do
    data = %{"hobbies" => Map.merge(%{"endKeyset" => "end", "results" => rows}, page)}
    {:ok, result} = Result.from_chunks([%{hash: "h", data: data}])
    result
  end

  defp touching(id_types \\ ["Hobby"]),
    do: [%{relation: @relation, op: :update, columns: :all, id_types: id_types}]

  defp changed(id, op \\ "update"), do: %{type: "Hobby", id: id, op: op}

  defp input(overrides \\ []) do
    Map.merge(
      %{
        document: document(),
        variables: %{},
        window: %{rows: 10, chunk: 10},
        window_required?: false,
        rows_stand_alone?: true,
        result: stored([row("1"), row("2")]),
        dependencies: @reads_hobbies,
        touched: touching(),
        changes: [changed("1")]
      },
      Map.new(overrides)
    )
  end

  describe "plan/1 narrows" do
    test "a keyed window whose touched rows name root ids" do
      assert {:narrow, candidates} = Narrowing.plan(input(changes: [changed("1"), changed("9")]))

      assert candidates.ids == MapSet.new(["1", "9"])
      assert candidates.to_query == ["1", "9"]
    end

    test "without querying an id that was only deleted" do
      assert {:narrow, candidates} =
               Narrowing.plan(input(changes: [changed("1", "delete"), changed("2")]))

      assert candidates.to_query == ["2"]
    end

    test "querying an id deleted and inserted again" do
      assert {:narrow, %{to_query: ["1"]}} =
               Narrowing.plan(input(changes: [changed("1", "delete"), changed("1", "insert")]))
    end

    test "ignoring touched rows the group does not read" do
      other = %{relation: {"public", "areas"}, op: :update, columns: :all, id_types: ["Area"]}

      assert {:narrow, _candidates} = Narrowing.plan(input(touched: [other | touching()]))
    end
  end

  describe "plan/1 re-runs the window for" do
    test "a required window: first run, reset, new generation" do
      assert Narrowing.plan(input(window_required?: true)) == :window
    end

    test "rows that do not stand alone" do
      assert Narrowing.plan(input(rows_stand_alone?: false)) == :window
    end

    test "an entity" do
      assert Narrowing.plan(input(window: nil)) == :window
    end

    test "a window whose rows have no id" do
      assert Narrowing.plan(input(result: stored([%{"keyset" => "k"}]))) == :window
    end

    test "rows without a keyset" do
      assert Narrowing.plan(input(result: stored([%{"id" => "1"}]))) == :window
    end

    test "a document without $filter" do
      assert Narrowing.plan(input(document: document(@without_filter))) == :window
    end

    test "a group that depends on everything" do
      assert Narrowing.plan(input(dependencies: :everything)) == :window
    end

    test "a group touched through a table that names no root id" do
      assert Narrowing.plan(input(touched: touching(["Area"]))) == :window
      assert Narrowing.plan(input(touched: touching(["Hobby"]) ++ touching(["Area"]))) == :window
    end

    test "a batch with no root candidates" do
      assert Narrowing.plan(input(changes: [])) == :window
    end

    test "a change without an id" do
      assert Narrowing.plan(input(changes: [changed(nil)])) == :window
    end

    test "more candidates than the cap" do
      over_the_cap = for number <- 1..(Narrowing.max_candidates() + 1), do: changed("#{number}")

      assert Narrowing.plan(input(changes: over_the_cap)) == :window
    end

    test "a list whose row type the schema cannot name" do
      entity = "query q($filter: Int, $first: Int, $after: String) { __typename }"

      assert Narrowing.plan(input(document: document(entity))) == :window
    end
  end

  describe "filter/2" do
    test "is the ids alone when the client sent no filter" do
      assert Narrowing.filter(nil, ["1"]) == %{"id" => %{"in" => ["1"]}}
      assert Narrowing.filter(%{}, ["1"]) == %{"id" => %{"in" => ["1"]}}
    end

    test "ANDs the ids with the client's filter" do
      client = %{"name" => %{"eq" => "a"}}

      assert Narrowing.filter(client, ["1"]) ==
               %{"and" => [client, %{"id" => %{"in" => ["1"]}}]}
    end
  end

  describe "classify/4" do
    @window %{rows: 10, chunk: 10}
    @full_window %{rows: 2, chunk: 2}

    defp candidates(ids), do: MapSet.new(ids)

    test "a held candidate with the same keyset patches the row" do
      patched = Map.put(row("2"), "name", "new")

      assert {:ok, result} =
               Narrowing.classify(stored([row("1"), row("2")]), @window, candidates(["2"]), [
                 patched
               ])

      assert [_first, {"2", "k2", ^patched}] = result.rows
    end

    test "a held candidate with a changed keyset re-runs the window" do
      assert Narrowing.classify(stored([row("1")]), @window, candidates(["1"]), [row("1", "new")]) ==
               :window
    end

    test "an unheld candidate returned re-runs the window" do
      assert Narrowing.classify(stored([row("1")]), @window, candidates(["9"]), [row("9")]) ==
               :window
    end

    test "a held candidate missing leaves a window that holds everything" do
      assert {:ok, result} =
               Narrowing.classify(
                 stored([row("1"), row("2")], %{"count" => 2}),
                 @window,
                 candidates(["1"]),
                 []
               )

      assert Result.ids(result) == ["2"]
      assert Result.data(result)["hobbies"]["count"] == 1
    end

    test "a held candidate missing from a full window re-runs it, to bring in the next row" do
      assert Narrowing.classify(
               stored([row("1"), row("2")], %{"count" => 3}),
               @full_window,
               candidates(["1"]),
               []
             ) == :window
    end

    test "a full window that is the whole list still takes a leave" do
      assert {:ok, _result} =
               Narrowing.classify(
                 stored([row("1"), row("2")], %{"count" => 2}),
                 @full_window,
                 candidates(["1"]),
                 []
               )
    end

    test "an unheld candidate gone is ignored when the window holds everything" do
      assert {:ok, result} =
               Narrowing.classify(
                 stored([row("1")], %{"count" => 1}),
                 @window,
                 candidates(["9"]),
                 []
               )

      assert Result.data(result)["hobbies"]["count"] == 1
    end

    test "an unheld candidate gone re-runs a counted window, which it may have left the count of" do
      assert Narrowing.classify(
               stored([row("1"), row("2")], %{"count" => 5}),
               @full_window,
               candidates(["9"]),
               []
             ) == :window
    end

    test "an unheld candidate gone is ignored by a full window with no count" do
      data = %{"hobbies" => %{"endKeyset" => "e", "results" => [row("1"), row("2")]}}
      {:ok, stored} = Result.from_chunks([%{hash: "h", data: data}])

      assert {:ok, _result} = Narrowing.classify(stored, @full_window, candidates(["9"]), [])
    end
  end
end
