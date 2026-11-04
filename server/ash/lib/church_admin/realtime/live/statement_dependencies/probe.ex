defmodule ChurchAdmin.Realtime.Live.StatementDependencies.Probe do
  @moduledoc """
  Asks Postgres what a statement reads, on one dedicated connection that is
  neither the Repo's pool nor the SQL sandbox.

  The statement becomes a temporary view inside a transaction that is always
  rolled back, and `pg_depend` (followed recursively through views) names the
  tables and columns behind it. A connection that dies midway takes its
  session, and with it the view, along; one that survives has rolled back.
  Because the transaction is the probe's own, a statement that Postgres
  rejects cannot abort a transaction of the caller.

  Postgres cannot bind parameters in a view, so every `$n` outside a string
  literal is inlined as `NULL`, which `EXPLAIN` accepts as well. When the
  statement cannot become a view (a locking read, for example), the relations
  of its `EXPLAIN` plan stand in, each with `:all` columns.
  """

  alias ChurchAdmin.Realtime.ReplicationStream

  @view "live_statement_probe"
  @parameter_or_literal ~r/'(?:[^']|'')*'|\$\d+/

  @views_read_by_view """
  WITH RECURSIVE views(oid) AS (
    SELECT '#{@view}'::regclass::oid
    UNION
    SELECT d.refobjid
    FROM views AS v
    JOIN pg_rewrite AS r ON r.ev_class = v.oid
    JOIN pg_depend AS d
      ON d.classid = 'pg_rewrite'::regclass AND d.objid = r.oid AND d.refclassid = 'pg_class'::regclass
    JOIN pg_class AS c ON c.oid = d.refobjid AND c.relkind = 'v'
  )
  """

  @tables_and_columns """
  #{@views_read_by_view}
  SELECT n.nspname, c.relname, array_agg(DISTINCT a.attname) FILTER (WHERE a.attname IS NOT NULL)
  FROM views AS v
  JOIN pg_rewrite AS r ON r.ev_class = v.oid
  JOIN pg_depend AS d
    ON d.classid = 'pg_rewrite'::regclass AND d.objid = r.oid AND d.refclassid = 'pg_class'::regclass
  JOIN pg_class AS c ON c.oid = d.refobjid AND c.relkind IN ('r', 'p', 'm', 'f')
  JOIN pg_namespace AS n ON n.oid = c.relnamespace
  LEFT JOIN pg_attribute AS a
    ON a.attrelid = c.oid AND a.attnum = d.refobjsubid AND d.refobjsubid > 0
  GROUP BY n.nspname, c.relname
  """

  @functions_that_are_not_immutable """
  #{@views_read_by_view}
  SELECT n.nspname || '.' || p.proname
  FROM views AS v
  JOIN pg_rewrite AS r ON r.ev_class = v.oid
  CROSS JOIN LATERAL regexp_matches(r.ev_action::text, ':(?:funcid|opfuncid|aggfnoid|winfnoid) ([0-9]+)', 'g') AS m
  JOIN pg_proc AS p ON p.oid = m[1]::oid AND p.provolatile <> 'i'
  JOIN pg_namespace AS n ON n.oid = p.pronamespace
  ORDER BY 1
  LIMIT 1
  """

  def child_spec(_opts) do
    [name: __MODULE__, pool_size: 1]
    |> Keyword.merge(ReplicationStream.connection_options())
    |> Postgrex.child_spec()
    |> Supervisor.child_spec(id: __MODULE__)
  end

  @spec dependencies(String.t()) ::
          {:ok, ChurchAdmin.Realtime.Live.StatementDependencies.dependencies()}
          | {:error, ChurchAdmin.Realtime.Live.StatementDependencies.reason()}
  def dependencies(sql) do
    inlined = inline_parameters(sql)

    case read_through_temp_view(inlined) do
      {:error, {:view_rejected, _message}} -> read_from_plan(inlined)
      other -> other
    end
  catch
    :exit, reason -> {:error, {:probe_unavailable, reason}}
  end

  defp inline_parameters(sql) do
    Regex.replace(@parameter_or_literal, sql, fn
      "$" <> _number -> "NULL"
      literal -> literal
    end)
  end

  defp read_through_temp_view(sql) do
    transaction_result =
      Postgrex.transaction(__MODULE__, fn connection ->
        Postgrex.rollback(connection, {:rolled_back, create_view_and_read(connection, sql)})
      end)

    case transaction_result do
      {:error, {:rolled_back, result}} -> result
      {:error, %DBConnection.ConnectionError{} = error} -> {:error, {:probe_unavailable, error}}
    end
  end

  defp create_view_and_read(connection, sql) do
    case Postgrex.query(connection, "CREATE TEMP VIEW #{@view} AS " <> sql, []) do
      {:ok, _result} -> read_view(connection)
      {:error, %Postgrex.Error{} = error} -> {:error, {:view_rejected, Exception.message(error)}}
    end
  end

  defp read_view(connection) do
    case Postgrex.query!(connection, @functions_that_are_not_immutable, []) do
      %{rows: [[function]]} ->
        {:error, {:volatile_function, function}}

      %{rows: []} ->
        %{rows: rows} = Postgrex.query!(connection, @tables_and_columns, [])
        {:ok, Map.new(rows, &relation_columns/1)}
    end
  end

  defp relation_columns([schema, table, nil]), do: {{schema, table}, :all}
  defp relation_columns([schema, table, columns]), do: {{schema, table}, MapSet.new(columns)}

  defp read_from_plan(sql) do
    case Postgrex.query(__MODULE__, "EXPLAIN (VERBOSE, FORMAT JSON) " <> sql, []) do
      {:ok, %{rows: [[plan]]}} ->
        {:ok, plan |> plan_relations() |> Map.new(&{&1, :all})}

      {:error, %Postgrex.Error{} = error} ->
        {:error, {:unplannable, Exception.message(error)}}

      {:error, %DBConnection.ConnectionError{} = error} ->
        {:error, {:probe_unavailable, error}}
    end
  end

  defp plan_relations(%{"Relation Name" => table, "Schema" => schema} = node) do
    [{schema, table} | node |> Map.values() |> plan_relations()]
  end

  defp plan_relations(node) when is_map(node), do: node |> Map.values() |> plan_relations()
  defp plan_relations(nodes) when is_list(nodes), do: Enum.flat_map(nodes, &plan_relations/1)
  defp plan_relations(_leaf), do: []
end
