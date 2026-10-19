defmodule ChurchAdmin.Realtime.Broadcaster do
  @moduledoc """
  Turns replicated commits into invalidation batches and broadcasts them on
  `ChurchAdmin.PubSub` as `{:realtime_changes, %{from, to, changes}}`.

  Versions are commit LSNs. Commits arriving within `coalesce_ms` of the
  first pending one go out as one batch from the current head to the last
  commit's LSN, deduplicated. Batches stay replayable for `retention_ms`.
  `reset/2` starts a new history (a new replication slot): the backlog and
  pending commits are dropped, so clients behind it must refetch.
  """

  use GenServer

  alias ChurchAdmin.Realtime.RowChange
  alias ChurchAdmin.Realtime.TypeMap

  @type version :: non_neg_integer()
  @type batch :: %{from: version(), to: version(), changes: [TypeMap.change()]}

  @topic "realtime:changes"

  @spec topic() :: String.t()
  def topic, do: @topic

  def start_link(opts),
    do: GenServer.start_link(__MODULE__, opts, name: Keyword.get(opts, :name, __MODULE__))

  @spec reset(GenServer.server(), version()) :: :ok
  def reset(server \\ __MODULE__, version), do: GenServer.call(server, {:reset, version})

  @spec commit(GenServer.server(), version(), [RowChange.t()]) :: :ok
  def commit(server \\ __MODULE__, commit_lsn, row_changes),
    do: GenServer.cast(server, {:commit, commit_lsn, row_changes})

  @spec head(GenServer.server()) :: version()
  def head(server \\ __MODULE__), do: GenServer.call(server, :head)

  @doc "The batches after `version`, or `:unknown` when `version` is neither the head nor a buffered batch start."
  @spec batches_since(GenServer.server(), version()) :: {:ok, [batch()]} | :unknown
  def batches_since(server \\ __MODULE__, version),
    do: GenServer.call(server, {:batches_since, version})

  @impl true
  def init(opts) do
    {:ok,
     %{
       type_map: Keyword.get_lazy(opts, :type_map, &TypeMap.build/0),
       topic: Keyword.get(opts, :topic, @topic),
       coalesce_ms: Keyword.get(opts, :coalesce_ms, 500),
       retention_ms: Keyword.get(opts, :retention_ms, :timer.minutes(10)),
       head: 0,
       buffered: :queue.new(),
       pending: [],
       pending_to: nil,
       flush_ref: nil
     }}
  end

  @impl true
  def handle_call({:reset, version}, _from, state) do
    {:reply, :ok,
     %{
       state
       | head: version,
         buffered: :queue.new(),
         pending: [],
         pending_to: nil,
         flush_ref: nil
     }}
  end

  def handle_call(:head, _from, state), do: {:reply, state.head, state}

  def handle_call({:batches_since, version}, _from, state),
    do: {:reply, batches_since_version(state, version), state}

  @impl true
  def handle_cast({:commit, commit_lsn, row_changes}, state) do
    case Enum.flat_map(row_changes, &TypeMap.changes_for(state.type_map, &1)) do
      [] -> {:noreply, state}
      changes -> {:noreply, state |> add_pending(commit_lsn, changes) |> schedule_flush()}
    end
  end

  @impl true
  def handle_info({:flush, ref}, %{flush_ref: ref} = state) when ref != nil,
    do: {:noreply, flush(state)}

  def handle_info({:flush, _stale_ref}, state), do: {:noreply, state}

  defp add_pending(state, commit_lsn, changes),
    do: %{state | pending: [changes | state.pending], pending_to: commit_lsn}

  defp schedule_flush(%{flush_ref: nil} = state) do
    ref = make_ref()
    Process.send_after(self(), {:flush, ref}, state.coalesce_ms)
    %{state | flush_ref: ref}
  end

  defp schedule_flush(state), do: state

  defp flush(state) do
    batch = %{
      from: state.head,
      to: state.pending_to,
      changes: state.pending |> Enum.reverse() |> Enum.concat() |> Enum.uniq()
    }

    now = System.monotonic_time(:millisecond)

    buffered =
      state.buffered
      |> drop_expired(now - state.retention_ms)
      |> then(&:queue.in({now, batch}, &1))

    Phoenix.PubSub.broadcast(ChurchAdmin.PubSub, state.topic, {:realtime_changes, batch})

    %{state | head: batch.to, buffered: buffered, pending: [], pending_to: nil, flush_ref: nil}
  end

  defp drop_expired(buffered, oldest_kept) do
    case :queue.peek(buffered) do
      {:value, {at, _batch}} when at < oldest_kept ->
        drop_expired(:queue.drop(buffered), oldest_kept)

      _empty_or_fresh ->
        buffered
    end
  end

  defp batches_since_version(%{head: version}, version), do: {:ok, []}

  defp batches_since_version(state, version) do
    state.buffered
    |> :queue.to_list()
    |> Enum.map(&elem(&1, 1))
    |> Enum.drop_while(&(&1.from != version))
    |> case do
      [] -> :unknown
      batches -> {:ok, batches}
    end
  end
end
