defmodule ChurchAdmin.Realtime.Live.NarrowedRefreshTest do
  use ChurchAdmin.DataCase, async: false

  alias ChurchAdmin.Auth.Principal
  alias ChurchAdmin.Authz.ActorLoader
  alias ChurchAdmin.Factory
  alias ChurchAdmin.Realtime.Live.Document
  alias ChurchAdmin.Realtime.Live.Refresh
  alias ChurchAdmin.Realtime.Live.Result
  alias ChurchAdmin.Realtime.Live.StatementCapture

  @hobbies """
  query hobbies($filter: HobbyFilterInput, $sort: [HobbySortInput], $first: Int, $after: String) {
    hobbies(filter: $filter, sort: $sort, first: $first, after: $after) {
      count endKeyset results { keyset id name }
    }
  }
  """

  @relation {"public", "hobbies"}
  @window %{rows: 10, chunk: 2}

  setup do
    user = Factory.user!()
    Factory.permissions!(user, ~w(approved readAllData writeAllData manageAllUsers))

    actor = %{
      ActorLoader.load(user.uid)
      | principal: %Principal{uid: user.uid, auth_id: "firebase", claims: %{}}
    }

    {:ok, document} = Document.prepare(@hobbies, "hobbies")
    hobbies = for name <- ~w(a b c), do: Factory.hobby!(%{name: name})

    {:ok,
     actor: actor,
     document: document,
     hobbies: hobbies,
     ids: Enum.map(hobbies, & &1.id),
     all_names: %{"name" => %{"in" => ~w(a b c)}}}
  end

  defp input(context, overrides \\ []) do
    Map.merge(
      %{
        document: context.document,
        variables: %{},
        window: @window,
        actor: context.actor,
        known_hashes: nil,
        window_required?: true,
        result: nil,
        dependencies: nil,
        rows_stand_alone?: nil,
        touched: [],
        changes: []
      },
      Map.new(overrides)
    )
  end

  defp window!(context, overrides \\ []) do
    {:ok, run} = Refresh.run(input(context, overrides))
    run
  end

  defp narrowed(context, stored, changes, overrides \\ []) do
    fields = [
      window_required?: false,
      result: stored.result,
      dependencies: stored.dependencies,
      rows_stand_alone?: stored.rows_stand_alone?,
      known_hashes: stored.result.chunk_hashes,
      touched: [%{relation: @relation, op: :update, columns: :all, id_types: ["Hobby"]}],
      changes: changes
    ]

    StatementCapture.capture(fn ->
      Refresh.run(input(context, Keyword.merge(fields, overrides)))
    end)
  end

  defp update(id), do: %{type: "Hobby", id: id, op: "update"}
  defp sql!(statement, params), do: Repo.query!(statement, params)
  defp dump(id), do: Ecto.UUID.dump!(id)

  defp rename(id, name), do: sql!("update hobbies set name = $1 where id = $2", [name, dump(id)])

  defp names(%Result{} = result) do
    result |> Result.data() |> get_in(["hobbies", "results"]) |> Enum.map(& &1["name"])
  end

  defp assert_same_as_a_fresh_window(context, result, overrides \\ []) do
    assert result.chunk_hashes == window!(context, overrides).result.chunk_hashes
  end

  describe "a held candidate with the same keyset" do
    test "patches the row, and the hashes match what HTTP would answer", context do
      stored = window!(context)
      [_first, second, _third] = context.ids
      rename(second, "renamed")

      {{:ok, %{result: result}}, _statements} = narrowed(context, stored, [update(second)])

      assert Enum.sort(names(result)) == ~w(a c renamed)
      assert_same_as_a_fresh_window(context, result)
    end

    test "that did not really change reports the result unchanged", context do
      stored = window!(context)
      [first | _rest] = context.ids

      assert {{:ok, %{result: :unchanged}}, _statements} =
               narrowed(context, stored, [update(first)])
    end

    test "runs a primary-key-bounded query and not the window", context do
      stored = window!(context)
      [_first, second, _third] = context.ids
      rename(second, "renamed")

      {_outcome, statements} = narrowed(context, stored, [update(second)])

      selects = Enum.filter(statements, &(&1 =~ ~s("hobbies")))

      assert selects != []

      for statement <- selects do
        assert statement =~ ~r/\."id"(\)?::uuid)? *(= ANY|IN) *\(/, statement
      end
    end

    test "keeps the dependencies the window found", context do
      stored = window!(context)
      [first | _rest] = context.ids
      rename(first, "renamed")

      {{:ok, %{dependencies: dependencies}}, _statements} =
        narrowed(context, stored, [update(first)])

      assert dependencies == stored.dependencies
    end
  end

  describe "a held candidate the narrowed run does not return" do
    test "leaves a window that holds everything, with an exact count", context do
      filter = context.all_names
      stored = window!(context, variables: %{"filter" => filter})
      [_first, second, _third] = context.ids
      rename(second, "outside")

      {{:ok, %{result: result}}, _statements} =
        narrowed(context, stored, [update(second)], variables: %{"filter" => filter})

      assert Result.data(result)["hobbies"]["count"] == 2
      assert second not in Result.ids(result)
      assert_same_as_a_fresh_window(context, result, variables: %{"filter" => filter})
    end

    test "re-runs a full window, bringing in the next row", context do
      filter = context.all_names
      window = %{rows: 2, chunk: 2}
      variables = %{"filter" => filter}
      stored = window!(context, variables: variables, window: window)
      [first | _rest] = Result.ids(stored.result)
      rename(first, "outside")

      {{:ok, %{result: result}}, _statements} =
        narrowed(context, stored, [update(first)], variables: variables, window: window)

      assert length(result.rows) == 2
      assert Result.data(result)["hobbies"]["count"] == 2
    end
  end

  describe "a delete of a held id" do
    test "leaves with no query at all", context do
      stored = window!(context)
      [first, _second, _third] = context.ids
      sql!("delete from hobbies where id = $1", [dump(first)])

      {{:ok, %{result: result}}, statements} =
        narrowed(context, stored, [%{type: "Hobby", id: first, op: "delete"}])

      assert statements == []
      assert first not in Result.ids(result)
      assert Result.data(result)["hobbies"]["count"] == 2
      assert_same_as_a_fresh_window(context, result)
    end

    test "of the only row leaves an empty page like HTTP answers", context do
      filter = %{"name" => %{"eq" => "a"}}
      stored = window!(context, variables: %{"filter" => filter})
      [only] = Result.ids(stored.result)
      sql!("delete from hobbies where id = $1", [dump(only)])

      {{:ok, %{result: result}}, _statements} =
        narrowed(context, stored, [%{type: "Hobby", id: only, op: "delete"}],
          variables: %{"filter" => filter}
        )

      assert_same_as_a_fresh_window(context, result, variables: %{"filter" => filter})
    end
  end

  describe "the window re-runs for" do
    test "a held candidate whose keyset changed", context do
      sort = [%{"field" => "NAME", "order" => "ASC"}]
      stored = window!(context, variables: %{"sort" => sort})
      [first, _second, _third] = context.ids
      rename(first, "z")

      {{:ok, %{result: result}}, _statements} =
        narrowed(context, stored, [update(first)], variables: %{"sort" => sort})

      assert names(result) == ~w(b c z)
    end

    test "an unheld candidate the narrowed run returns", context do
      stored = window!(context)
      added = Factory.hobby!(%{name: "d"})

      {{:ok, %{result: result}}, _statements} = narrowed(context, stored, [update(added.id)])

      assert added.id in Result.ids(result)
      assert Result.data(result)["hobbies"]["count"] == 4
    end

    test "a narrowed run the filter refuses", context do
      stored = window!(context)
      added = Factory.hobby!(%{name: "d"})

      {{:ok, %{result: result}}, _statements} =
        narrowed(context, stored, [update("not-a-uuid"), update(added.id)])

      assert added.id in Result.ids(result)
    end
  end

  describe "a window run judges whether rows stand alone" do
    defp stand_alone?(context, text) do
      {:ok, document} = Document.prepare(text, nil)
      window!(context, document: document).rows_stand_alone?
    end

    test "a plain list does", context do
      assert window!(context).rows_stand_alone?
    end

    test "an entity does not", context do
      assert window!(context, window: nil).rows_stand_alone? == false
    end

    test "persons selecting dataCheck do not: the view reads the whole family", context do
      Factory.person!(%{family_id: Factory.family!().id})

      refute stand_alone?(context, """
             query persons($first: Int, $after: String) {
               persons(first: $first, after: $after) {
                 results { keyset id dataCheck { id isComplete } }
               }
             }
             """)
    end

    test "persons selecting dataCheck do not for a scoped viewer either", context do
      service = Factory.service!()
      viewer = Factory.user!()
      Factory.permissions!(viewer, ~w(approved))
      Factory.grant!(viewer, :service, service.id)
      person = Factory.person!(%{family_id: Factory.family!().id})
      Factory.in_service!(person, service)

      {:ok, document} =
        Document.prepare(
          """
          query persons($first: Int, $after: String) {
            persons(first: $first, after: $after) {
              results { keyset id dataCheck { id isComplete } }
            }
          }
          """,
          nil
        )

      scoped = %{
        ActorLoader.load(viewer.uid)
        | principal: %Principal{uid: viewer.uid, auth_id: "firebase", claims: %{}}
      }

      run = window!(context, document: document, actor: scoped)

      assert [_row] = run.result.rows

      assert %{"dataCheck" => %{}} =
               run.result |> Result.data() |> get_in(["persons", "results"]) |> hd()

      refute run.rows_stand_alone?
    end

    test "persons nesting their own type do not", context do
      Factory.person!(%{family_id: Factory.family!().id})

      refute stand_alone?(context, """
             query persons($first: Int, $after: String) {
               persons(first: $first, after: $after) {
                 results { keyset id ...WithRelatives }
               }
             }
             fragment WithRelatives on Person { family { persons { id name } } }
             """)
    end

    test "plain persons do", context do
      Factory.person!(%{family_id: Factory.family!().id})

      assert stand_alone?(context, """
             query persons($first: Int, $after: String) {
               persons(first: $first, after: $after) {
                 results { keyset id name family { id name } }
               }
             }
             """)
    end
  end

  test "a change a nested view shows on another row re-runs the window", context do
    family = Factory.family!()
    Factory.person!(%{family_id: family.id})
    second = Factory.person!(%{family_id: family.id})

    {:ok, document} =
      Document.prepare(
        """
        query persons($filter: PersonFilterInput, $first: Int, $after: String) {
          persons(filter: $filter, first: $first, after: $after) {
            results { keyset id dataCheck { id isComplete details } }
          }
        }
        """,
        nil
      )

    stored = window!(context, document: document)
    assert length(stored.result.rows) == 2

    {{:ok, _run}, statements} =
      narrowed(context, stored, [%{type: "Person", id: second.id, op: "update"}],
        document: document,
        touched: [
          %{relation: {"public", "persons"}, op: :update, columns: :all, id_types: ["Person"]}
        ]
      )

    assert Enum.any?(statements, &(not (&1 =~ "ANY")))
  end
end
