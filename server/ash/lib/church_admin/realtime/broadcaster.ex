defmodule ChurchAdmin.Realtime.Broadcaster do
  @moduledoc """
  Turns replicated commits into batches and broadcasts them on
  `ChurchAdmin.PubSub` as `{:realtime_changes, %{changes, rows}}`: `changes`
  are the `ChurchAdmin.Realtime.TypeMap` invalidations and `rows` say which
  columns of which relations the commits touched, for the live queries to
  match against what they read.

  Commits arriving within `coalesce_ms` of the first pending one go out as
  one deduplicated batch. Oban's tables never reach a batch: nothing a client
  reads comes from them, and every job tick would count as a change.

  `reset/1` follows a replication gap. Pending commits are dropped and
  `:realtime_reset` goes out at once, because the gap can hide any change.

  Viewers learn on `viewer_scope_topic/1`, as `:viewer_scope_changed`, that
  their facts may have changed. It concerns everyone: a change to one user's
  grants moves the sets of users others manage or may see. A reset says the
  same.
  """

  use GenServer

  alias ChurchAdmin.Realtime.RowChange
  alias ChurchAdmin.Realtime.TypeMap
  alias ChurchAdmin.Realtime.ViewerFacts

  @type touched_row :: %{
          relation: TypeMap.relation(),
          op: :insert | :update | :delete | :truncate,
          columns: MapSet.t(String.t()) | :all
        }
  @type batch :: %{changes: [TypeMap.change()], rows: [touched_row()]}

  @topic "realtime:changes"
  @viewer_scope_type "ViewerScope"

  @spec topic() :: String.t()
  def topic, do: @topic

  @spec viewer_scope_topic(String.t()) :: String.t()
  def viewer_scope_topic(topic \\ @topic), do: topic <> ":viewer_scope"

  def start_link(opts),
    do: GenServer.start_link(__MODULE__, opts, name: Keyword.get(opts, :name, __MODULE__))

  @spec reset(GenServer.server()) :: :ok
  def reset(server \\ __MODULE__), do: GenServer.call(server, :reset)

  @spec commit(GenServer.server(), [RowChange.t()]) :: :ok
  def commit(server \\ __MODULE__, row_changes),
    do: GenServer.cast(server, {:commit, row_changes})

  @impl GenServer
  def init(opts) do
    {:ok,
     %{
       type_map: Keyword.get_lazy(opts, :type_map, &TypeMap.build/0),
       topic: Keyword.get(opts, :topic, @topic),
       coalesce_ms: Keyword.get(opts, :coalesce_ms, 500),
       pending: [],
       flush_ref: nil
     }}
  end

  @impl GenServer
  def handle_call(:reset, _from, state) do
    announce(state, :realtime_reset)
    announce_viewer_scope(state)

    {:reply, :ok, %{state | pending: [], flush_ref: nil}}
  end

  @impl GenServer
  def handle_cast({:commit, row_changes}, state) do
    case Enum.reject(row_changes, &background_job_row?/1) do
      [] -> {:noreply, state}
      kept -> {:noreply, schedule_flush(%{state | pending: [kept | state.pending]})}
    end
  end

  @impl GenServer
  def handle_info({:flush, ref}, %{flush_ref: ref} = state) when ref != nil,
    do: {:noreply, flush(state)}

  def handle_info({:flush, _stale_ref}, state), do: {:noreply, state}

  defp background_job_row?(%RowChange{relation: {_schema, table}}),
    do: String.starts_with?(table, "oban_")

  defp schedule_flush(%{flush_ref: nil} = state) do
    ref = make_ref()
    Process.send_after(self(), {:flush, ref}, state.coalesce_ms)
    %{state | flush_ref: ref}
  end

  defp schedule_flush(state), do: state

  defp flush(state) do
    row_changes = state.pending |> Enum.reverse() |> Enum.concat()

    changes =
      row_changes |> Enum.flat_map(&TypeMap.changes_for(state.type_map, &1)) |> Enum.uniq()

    announce(state, {:realtime_changes, %{changes: changes, rows: touched_rows(row_changes)}})

    if viewer_scope_changed?(changes, row_changes), do: announce_viewer_scope(state)

    %{state | pending: [], flush_ref: nil}
  end

  defp touched_rows(row_changes) do
    row_changes
    |> Enum.map(&%{relation: &1.relation, op: &1.op, columns: RowChange.changed_columns(&1)})
    |> Enum.uniq()
  end

  defp viewer_scope_changed?(changes, row_changes) do
    Enum.any?(changes, &(&1.type == @viewer_scope_type)) or
      Enum.any?(row_changes, &ViewerFacts.touched?/1)
  end

  defp announce(state, message),
    do: Phoenix.PubSub.broadcast(ChurchAdmin.PubSub, state.topic, message)

  defp announce_viewer_scope(state) do
    Phoenix.PubSub.broadcast(
      ChurchAdmin.PubSub,
      viewer_scope_topic(state.topic),
      :viewer_scope_changed
    )
  end
end
