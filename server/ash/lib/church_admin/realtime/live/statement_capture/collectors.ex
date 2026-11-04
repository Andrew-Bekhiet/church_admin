defmodule ChurchAdmin.Realtime.Live.StatementCapture.Collectors do
  @moduledoc """
  Owns the table of processes that are capturing and the telemetry handler
  that sends them the SQL of the Repo queries run by themselves or by tasks
  they started. The handler is attached once, when this process starts.
  """

  use GenServer

  @table __MODULE__
  @handler_id ChurchAdmin.Realtime.Live.StatementCapture

  def start_link(_opts), do: GenServer.start_link(__MODULE__, nil, name: __MODULE__)

  @doc false
  @spec register() :: reference()
  def register do
    ref = make_ref()
    true = :ets.insert(@table, {self(), ref})
    ref
  end

  @doc false
  @spec unregister(reference()) :: true
  def unregister(ref), do: :ets.delete_object(@table, {self(), ref})

  @impl GenServer
  def init(nil) do
    :ets.new(@table, [:bag, :public, :named_table, write_concurrency: true])
    :telemetry.detach(@handler_id)

    :ok =
      :telemetry.attach(@handler_id, query_event(), &__MODULE__.handle_query/4, nil)

    {:ok, nil}
  end

  @doc false
  def handle_query(_event, _measurements, %{query: sql}, _config) do
    if :ets.whereis(@table) != :undefined and :ets.info(@table, :size) > 0 do
      for pid <- [self() | Process.get(:"$callers", [])],
          {^pid, ref} <- :ets.lookup(@table, pid) do
        send(pid, {__MODULE__, ref, sql})
      end
    end

    :ok
  rescue
    ArgumentError -> :ok
  end

  defp query_event, do: Keyword.fetch!(ChurchAdmin.Repo.config(), :telemetry_prefix) ++ [:query]
end
