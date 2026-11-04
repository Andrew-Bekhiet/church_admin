defmodule ChurchAdmin.Realtime.Live.NarrowedRefreshTest do
  use ChurchAdmin.DataCase, async: false

  alias ChurchAdmin.Auth.Principal
  alias ChurchAdmin.Authz.ActorLoader
  alias ChurchAdmin.Factory
  alias ChurchAdmin.Realtime.Live.Document
  alias ChurchAdmin.Realtime.Live.Refresh
  alias ChurchAdmin.Realtime.Live.Result

  @hobbies """
  query hobbies($filter: HobbyFilterInput, $sort: [HobbySortInput], $first: Int, $after: String) {
    hobbies(filter: $filter, sort: $sort, first: $first, after: $after) {
      count endKeyset results { keyset id ...HobbyFields __typename } __typename
    }
    __typename
  }
  fragment HobbyFields on Hobby { name __typename }
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

  defp input(context, overrides) do
    Map.merge(
      %{
        document: context.document,
        variables: %{},
        window: @window,
        actor: context.actor,
        stored_hashes: nil,
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
    {:ok, run} = context |> input(overrides) |> Refresh.run()
    run
  end

  defp narrowed(context, stored, changes, overrides \\ []) do
    fields = [
      window_required?: false,
      result: stored.result,
      dependencies: stored.dependencies,
      rows_stand_alone?: stored.rows_stand_alone?,
      stored_hashes: stored.result.chunk_hashes,
      touched: [%{relation: @relation, op: :update, columns: :all, id_types: ["Hobby"]}],
      changes: changes
    ]

    context |> input(Keyword.merge(fields, overrides)) |> Refresh.run()
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
      [first, second, third] = context.hobbies
      rename(second.id, "renamed")

      {:ok, %{result: result}} = narrowed(context, stored, [update(second.id)])

      assert result |> names() |> Enum.sort() == Enum.sort([first.name, third.name, "renamed"])
      assert_same_as_a_fresh_window(context, result)
    end

    test "that did not really change reports the result unchanged", context do
      stored = window!(context)
      [first | _rest] = context.ids

      assert {:ok, %{result: :unchanged}} =
               narrowed(context, stored, [update(first)])
    end

    test "reads only the rows the change names, not the window", context do
      stored = window!(context)
      [_first, named, unnamed] = context.hobbies
      rename(named.id, "named")
      rename(unnamed.id, "unnamed")

      {:ok, %{result: result}} = narrowed(context, stored, [update(named.id)])

      assert "named" in names(result)
      assert unnamed.name in names(result)
      refute "unnamed" in names(result)
    end

    test "keeps the dependencies the window found", context do
      stored = window!(context)
      [first | _rest] = context.ids
      rename(first, "renamed")

      {:ok, %{dependencies: dependencies}} =
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

      {:ok, %{result: result}} =
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

      {:ok, %{result: result}} =
        narrowed(context, stored, [update(first)], variables: variables, window: window)

      assert length(result.rows) == 2
      assert Result.data(result)["hobbies"]["count"] == 2
    end
  end

  describe "a delete of a held id" do
    test "leaves without reading anything", context do
      stored = window!(context)
      [deleted, unread, _third] = context.hobbies
      sql!("delete from hobbies where id = $1", [dump(deleted.id)])
      rename(unread.id, "unread")

      {:ok, %{result: result}} =
        narrowed(context, stored, [%{type: "Hobby", id: deleted.id, op: "delete"}])

      assert deleted.id not in Result.ids(result)
      assert unread.name in names(result)
      assert Result.data(result)["hobbies"]["count"] == 2
    end

    test "gives what a fresh window gives", context do
      stored = window!(context)
      [first, _second, _third] = context.ids
      sql!("delete from hobbies where id = $1", [dump(first)])

      {:ok, %{result: result}} =
        narrowed(context, stored, [%{type: "Hobby", id: first, op: "delete"}])

      assert Result.data(result)["hobbies"]["count"] == 2
      assert_same_as_a_fresh_window(context, result)
    end

    test "of the only row leaves an empty page like HTTP answers", context do
      filter = %{"name" => %{"eq" => "a"}}
      stored = window!(context, variables: %{"filter" => filter})
      [only] = Result.ids(stored.result)
      sql!("delete from hobbies where id = $1", [dump(only)])

      {:ok, %{result: result}} =
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

      {:ok, %{result: result}} =
        narrowed(context, stored, [update(first)], variables: %{"sort" => sort})

      assert names(result) == ~w(b c z)
    end

    test "an unheld candidate the narrowed run returns", context do
      stored = window!(context)
      added = Factory.hobby!(%{name: "d"})

      {:ok, %{result: result}} = narrowed(context, stored, [update(added.id)])

      assert added.id in Result.ids(result)
      assert Result.data(result)["hobbies"]["count"] == 4
    end

    test "a narrowed run the filter refuses", context do
      stored = window!(context)
      added = Factory.hobby!(%{name: "d"})

      {:ok, %{result: result}} =
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

  describe "a window run that fails" do
    test "refuses a document the schema refuses", context do
      {:ok, document} = Document.prepare("query q { unknownField }", nil)

      assert {:error, {:document_refused, _errors}} =
               context |> input(document: document, window: nil) |> Refresh.run()
    end

    test "refuses a filter the resource refuses", context do
      invalid = %{"id" => %{"in" => ["not-a-uuid"]}}

      assert {:error, {:document_refused, _errors}} =
               context |> input(variables: %{"filter" => invalid}) |> Refresh.run()
    end

    test "refuses a list document that returns no page", context do
      {:ok, document} =
        Document.prepare(
          "query q($first: Int, $after: String) { hobbies(first: $first, after: $after) { count } }",
          nil
        )

      assert {:error, {:document_refused, :not_a_list}} =
               context |> input(document: document) |> Refresh.run()
    end

    test "only failed when the database did", context do
      sql!("alter table hobbies rename to hobbies_elsewhere", [])

      assert {:error, {:run_failed, _errors}} = context |> input([]) |> Refresh.run()
    end
  end

  test "a change a nested view shows on another row reaches that row", context do
    family = Factory.family!()
    admin_type = Factory.person_type!(%{is_family_admin: true})
    plain_type = Factory.person_type!()
    shown_on = Factory.person!(%{family_id: family.id, person_type_id: plain_type.id})
    changed = Factory.person!(%{family_id: family.id, person_type_id: plain_type.id})

    {:ok, document} =
      Document.prepare(
        """
        query persons($filter: PersonFilterInput, $first: Int, $after: String) {
          persons(filter: $filter, first: $first, after: $after) {
            results { keyset id dataCheck { id details } }
          }
        }
        """,
        nil
      )

    stored = window!(context, document: document)
    refute has_family_admin?(stored.result, shown_on.id)

    sql!("update persons set person_type_id = $1 where id = $2", [
      dump(admin_type.id),
      dump(changed.id)
    ])

    {:ok, %{result: result}} =
      narrowed(context, stored, [%{type: "Person", id: changed.id, op: "update"}],
        document: document,
        touched: [
          %{relation: {"public", "persons"}, op: :update, columns: :all, id_types: ["Person"]}
        ]
      )

    assert has_family_admin?(result, shown_on.id)
  end

  defp has_family_admin?(%Result{rows: rows}, person_id) do
    {_id, _keyset, row} = List.keyfind!(rows, person_id, 0)

    row["dataCheck"]["details"]
    |> Enum.map(&Jason.decode!/1)
    |> Enum.find(&(&1["check"] == "has_family_admin"))
    |> Map.fetch!("passed")
  end
end
