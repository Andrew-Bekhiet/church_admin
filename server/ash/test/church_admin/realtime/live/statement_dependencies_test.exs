defmodule ChurchAdmin.Realtime.Live.StatementDependenciesTest do
  use ChurchAdmin.DataCase, async: false

  alias ChurchAdmin.Attendance.RosterEntry
  alias ChurchAdmin.Factory
  alias ChurchAdmin.People.Person
  alias ChurchAdmin.Realtime.Dependencies
  alias ChurchAdmin.Realtime.Live.StatementCapture
  alias ChurchAdmin.Realtime.Live.StatementDependencies

  require Ash.Query

  @persons {"public", "persons"}
  @persons_services {"public", "persons_services"}
  @addresses {"public", "addresses"}

  defp columns(names), do: MapSet.new(names)

  defp unique_sql(sql), do: "#{sql} /* #{System.unique_integer([:positive])} */"

  defp deps!(sql) do
    assert {:ok, deps} = StatementDependencies.for_sql(sql)
    deps
  end

  describe "for_sql/1 on a scoped list" do
    @scoped_list """
    SELECT p.id, p.name
    FROM persons AS p
    WHERE p.deleted_at IS NULL
      AND (
        EXISTS (SELECT 1 FROM persons_services AS ps WHERE ps.person_id = p.id AND ps.service_id = ANY($1::uuid[]))
        OR EXISTS (SELECT 1 FROM addresses AS a WHERE a.family_id = p.family_id AND a.area_id = ANY($2::uuid[]))
      )
    ORDER BY p.name, p.id
    LIMIT $3
    """

    test "reports every table of an OR of EXISTS clauses with the columns each reads" do
      assert %{
               @persons => columns(~w(id name deleted_at family_id)),
               @persons_services => columns(~w(person_id service_id)),
               @addresses => columns(~w(family_id area_id))
             } == deps!(@scoped_list)
    end

    test "leaves out the columns the statement does not read" do
      %{@persons => persons_columns} = deps!(@scoped_list)

      refute "notes" in persons_columns
      refute "birthdate" in persons_columns
    end

    test "counts a column that only the WHERE clause reads" do
      %{@persons => persons_columns} = deps!("SELECT id FROM persons WHERE deleted_at IS NULL")

      assert columns(~w(id deleted_at)) == persons_columns
    end

    test "reports a relation that is referenced as a whole as :all" do
      assert %{@persons => :all} ==
               deps!("SELECT count(*) AS total FROM persons")

      assert %{{"public", "families"} => :all, @persons => columns(["id"])} ==
               deps!("SELECT p.id FROM persons AS p WHERE EXISTS (SELECT 1 FROM families)")
    end
  end

  describe "for_sql/1 through views" do
    test "expands history.meeting_roster to the tables it reads and never reports a view" do
      deps = deps!("SELECT meeting_id, person_id FROM history.meeting_roster")

      view_relations =
        Repo.query!("SELECT table_schema, table_name FROM information_schema.views").rows

      for relation <- [
            @persons,
            {"history", "meetings"},
            @persons_services,
            {"public", "persons_groups"},
            {"auth", "users_admin_on"},
            {"auth", "users_permissions"}
          ] do
        assert Map.has_key?(deps, relation), "missing #{inspect(relation)}"
      end

      reported_views =
        for {schema, table} <- Map.keys(deps),
            [schema, table] in view_relations,
            do: {schema, table}

      assert [] == reported_views
    end

    test "reports the tables the roster's hand-declared view sources name" do
      declared =
        for resource <- Dependencies.view_sources()[RosterEntry],
            into: MapSet.new(),
            do:
              {AshPostgres.DataLayer.Info.schema(resource) || "public",
               AshPostgres.DataLayer.Info.table(resource)}

      deps = deps!("SELECT meeting_id FROM history.meeting_roster")
      missing_from_extraction = MapSet.difference(declared, MapSet.new(Map.keys(deps)))

      assert MapSet.new() == missing_from_extraction
    end
  end

  describe "for_sql/1 when a statement cannot become a view" do
    @duplicate_column_names "SELECT p.id, f.id FROM persons AS p JOIN families AS f ON f.id = p.family_id"

    test "falls back to the relations of the query plan with every column" do
      assert %{@persons => :all, {"public", "families"} => :all} == deps!(@duplicate_column_names)
    end

    test "reports an unplannable statement as an error" do
      assert {:error, {:unplannable, message}} =
               StatementDependencies.for_sql(
                 "SELECT id FROM no_such_table_#{System.unique_integer([:positive])}"
               )

      assert message =~ "does not exist"
    end
  end

  describe "for_sql/1 and functions that can read tables Postgres does not report" do
    test "rejects a non-immutable plpgsql function of any schema" do
      assert {:error, {:volatile_function, "public.uuid_generate_v7"}} ==
               StatementDependencies.for_sql("SELECT public.uuid_generate_v7()")
    end

    test "rejects a non-immutable sql function" do
      assert {:error, {:volatile_function, "public.hypertable_size"}} ==
               StatementDependencies.for_sql("SELECT public.hypertable_size('persons'::regclass)")
    end

    test "accepts builtin functions whatever their volatility" do
      for sql <- [
            "SELECT random()",
            "SELECT id FROM persons WHERE deleted_at < now()",
            "SELECT jsonb_build_array(id) FROM persons",
            "SELECT concat_ws(' ', name) FROM persons",
            "SELECT gen_random_uuid()"
          ] do
        assert {:ok, %{}} = StatementDependencies.for_sql(sql)
      end
    end

    test "accepts PostGIS C functions" do
      assert {:ok, %{}} = StatementDependencies.for_sql("SELECT public.postgis_lib_version()")
    end

    test "finds a builtin inside a view that the statement reads without rejecting it" do
      assert {:ok, read} =
               StatementDependencies.for_sql("SELECT family_id FROM data_checks")

      assert map_size(read) > 0
    end

    test "accepts immutable functions" do
      assert %{@persons => columns(~w(id name))} ==
               deps!("SELECT id FROM persons WHERE lower(name) = 'x'")
    end
  end

  describe "for_sql/1 and the connection it probes with" do
    test "leaves no temp view behind after a success, a fallback and an error" do
      deps!(unique_sql("SELECT id FROM persons"))
      deps!(unique_sql("SELECT p.id, p.id FROM persons AS p"))
      {:error, _} = StatementDependencies.for_sql("SELECT public.uuid_generate_v7() FROM persons")

      {:error, _} =
        StatementDependencies.for_sql("SELECT FROM nowhere_#{System.unique_integer([:positive])}")

      assert [[0]] ==
               Postgrex.query!(
                 StatementDependencies.Probe,
                 "SELECT count(*)::int FROM pg_class WHERE relpersistence = 't'",
                 []
               ).rows
    end

    test "a failing statement inside the caller's transaction does not abort it" do
      Repo.transaction(fn ->
        assert {:ok, _} =
                 StatementDependencies.for_sql(unique_sql("SELECT p.id, p.id FROM persons AS p"))

        assert {:error, _} =
                 StatementDependencies.for_sql(
                   "SELECT FROM nowhere_#{System.unique_integer([:positive])}"
                 )

        assert [[1]] == Repo.query!("SELECT 1").rows
      end)
    end

    test "does not show up in the queries a capture collects" do
      {_, captured} =
        StatementCapture.capture(fn ->
          StatementDependencies.for_sql(unique_sql("SELECT id FROM persons"))
        end)

      assert [] == captured
    end

    test "reports an unavailable probe connection without crashing and without caching it" do
      sql = unique_sql("SELECT id FROM persons")
      supervisor = ChurchAdmin.Realtime.Supervisor

      :ok = Supervisor.terminate_child(supervisor, StatementDependencies.Probe)
      on_exit(fn -> Supervisor.restart_child(supervisor, StatementDependencies.Probe) end)

      assert {:error, {:probe_unavailable, _}} = StatementDependencies.for_sql(sql)

      {:ok, _} = Supervisor.restart_child(supervisor, StatementDependencies.Probe)
      assert {:ok, %{@persons => _}} = StatementDependencies.for_sql(sql)
    end
  end

  describe "the cache" do
    test "answers a repeated statement without probing again" do
      sql = unique_sql("SELECT id, name FROM persons")
      first = deps!(sql)
      supervisor = ChurchAdmin.Realtime.Supervisor

      :ok = Supervisor.terminate_child(supervisor, StatementDependencies.Probe)
      on_exit(fn -> Supervisor.restart_child(supervisor, StatementDependencies.Probe) end)

      assert {:ok, first} == StatementDependencies.for_sql(sql)
    end

    test "answers a repeated volatile statement from the cache too" do
      sql = unique_sql("SELECT id FROM persons WHERE id = public.uuid_generate_v7()")
      assert {:error, {:volatile_function, _}} = error = StatementDependencies.for_sql(sql)
      supervisor = ChurchAdmin.Realtime.Supervisor

      :ok = Supervisor.terminate_child(supervisor, StatementDependencies.Probe)
      on_exit(fn -> Supervisor.restart_child(supervisor, StatementDependencies.Probe) end)

      assert error == StatementDependencies.for_sql(sql)
    end

    test "keys entries by the exact SQL text" do
      assert %{@persons => columns(["id"])} == deps!(unique_sql("SELECT id FROM persons"))
      assert %{@persons => columns(["name"])} == deps!(unique_sql("SELECT name FROM persons"))
    end

    test "is owned by a process that survives the callers" do
      sql = unique_sql("SELECT id FROM persons")
      fn -> deps!(sql) end |> Task.async() |> Task.await()

      assert {:ok, %{@persons => _}} = StatementDependencies.for_sql(sql)
    end
  end

  describe "for_sql/1 on the statements Ash builds" do
    test "extracts the dependencies of a read and its relationship loads" do
      family = Factory.family!()
      person = Factory.person!(%{family_id: family.id})

      {_, statements} =
        StatementCapture.capture(fn ->
          Person
          |> Ash.Query.filter(id == ^person.id)
          |> Ash.Query.load([:family, :person_type])
          |> Ash.read!(authorize?: false)
        end)

      results = Enum.map(statements, &StatementDependencies.for_sql/1)

      assert Enum.all?(results, &match?({:ok, _}, &1)), inspect(results)
      assert Enum.any?(results, &match?({:ok, %{@persons => _}}, &1))
      assert Enum.any?(results, &match?({:ok, %{{"public", "families"} => _}}, &1))
    end

    test "extracts the dependencies of keyset pages with a count" do
      for _ <- 1..3, do: Factory.person!()

      {_, statements} =
        StatementCapture.capture(fn ->
          first = Ash.read!(Person, authorize?: false, page: [limit: 2, count: true])
          last = List.last(first.results)

          Ash.read!(Person,
            authorize?: false,
            page: [limit: 2, after: last.__metadata__.keyset]
          )
        end)

      results = Enum.map(statements, &StatementDependencies.for_sql/1)

      assert length(statements) >= 3
      assert Enum.all?(results, &match?({:ok, %{@persons => _}}, &1)), inspect(results)
    end
  end
end
