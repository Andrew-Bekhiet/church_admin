defmodule ChurchAdmin.Realtime.Live.StatementDependencies.Cache do
  @moduledoc """
  Owns the ETS table that maps SQL text to its dependencies. Entries live as
  long as the process, so a deploy or a restart rebuilds them; the table is
  emptied when it reaches `@max_entries`, since statements that differ only
  in the length of an `IN` list would otherwise grow it without bound.
  """

  use GenServer

  alias ChurchAdmin.Realtime.Live.BoundedTable

  @table __MODULE__
  @max_entries 5_000

  def start_link(_opts), do: GenServer.start_link(__MODULE__, nil, name: __MODULE__)

  @spec fetch(String.t()) :: {:ok, term()} | :error
  def fetch(sql), do: BoundedTable.fetch(@table, sql)

  @doc "Stores what the probe answered about a statement, except for failures that a retry can fix."
  @spec put_unless_transient(term(), String.t()) :: term()
  def put_unless_transient(result, sql) do
    if cacheable?(result), do: BoundedTable.put(@table, sql, result, @max_entries)
    result
  end

  defp cacheable?({:ok, _dependencies}), do: true
  defp cacheable?({:error, {:volatile_function, _name}}), do: true
  defp cacheable?({:error, {:unplannable, _message}}), do: false
  defp cacheable?({:error, {:probe_unavailable, _reason}}), do: false

  @impl GenServer
  def init(nil) do
    BoundedTable.new(@table)
    {:ok, nil}
  end
end
