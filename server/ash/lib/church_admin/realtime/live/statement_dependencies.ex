defmodule ChurchAdmin.Realtime.Live.StatementDependencies do
  @moduledoc """
  What a SQL statement reads, as Postgres itself reports it: the base tables
  (views expanded) and, per table, the columns the statement touches, or
  `:all` when it references the table only as a whole. The keys are
  `ChurchAdmin.Realtime.RowChange` relations, `{schema, table}`.

  A statement that calls a non-immutable function in language `sql` or
  `plpgsql` is refused, in any schema: such a function can read tables
  Postgres does not report. Builtin and C functions read no table behind
  its back, so they pass, `now()` and `random()` among them; a result that
  changes with time alone does not re-run a query.

  Results are cached by SQL text for the life of the node.
  """

  alias ChurchAdmin.Realtime.Live.StatementDependencies.Cache
  alias ChurchAdmin.Realtime.Live.StatementDependencies.Probe

  @type relation :: {schema :: String.t(), table :: String.t()}
  @type columns :: MapSet.t(String.t()) | :all
  @type dependencies :: %{relation() => columns()}
  @type reason ::
          {:hidden_reader_function, String.t()}
          | {:unplannable, String.t()}
          | {:probe_unavailable, term()}

  @spec for_sql(String.t()) :: {:ok, dependencies()} | {:error, reason()}
  def for_sql(sql) when is_binary(sql) do
    case Cache.fetch(sql) do
      {:ok, result} -> result
      :error -> sql |> Probe.dependencies() |> Cache.put_unless_transient(sql)
    end
  end
end
