defmodule ChurchAdmin.Realtime.Live.Registry do
  @moduledoc """
  Owns every live-query group of this node: who is a member of what, what
  each group depends on, and which groups run. It does no I/O itself, so it
  answers sockets at once: runs happen in tasks under a `Task.Supervisor`,
  at most `max_concurrent_runs` at a time, the rest waiting in order.

  A batch runs each affected group once. A group already queued or running
  collects the batch, and runs once more if the batch touches what the run
  turned out to read. Members are monitored, so a socket that dies leaves
  its groups, and an empty group is dropped. A group whose run failed and
  still has members runs again by itself, the wait doubling with each
  failure in a row up to `@max_retry_ms`.

  A restart loses every group. `ChurchAdminWeb.LiveQueriesChannel` monitors this
  process and disconnects, and the client registers again.
  """

  use GenServer

  alias ChurchAdmin.Realtime.Broadcaster
  alias ChurchAdmin.Realtime.Live.DependencyIndex
  alias ChurchAdmin.Realtime.Live.Group
  alias ChurchAdmin.Realtime.Live.GroupDependencies
  alias ChurchAdmin.Realtime.Live.Refresh
  alias ChurchAdmin.Realtime.Live.Registration

  require Logger

  @default_max_concurrent_runs 3
  @default_retry_base_ms 1_000
  @max_retry_ms 30_000

  def start_link(opts),
    do: GenServer.start_link(__MODULE__, opts, name: Keyword.get(opts, :name, __MODULE__))

  @spec register(GenServer.server(), Registration.t()) :: :ok
  def register(server \\ __MODULE__, %Registration{} = registration),
    do: GenServer.call(server, {:register, registration})

  @spec unregister(GenServer.server(), reference()) :: :ok
  def unregister(server \\ __MODULE__, id), do: GenServer.call(server, {:unregister, id})

  @spec resync(GenServer.server(), reference()) :: :ok
  def resync(server \\ __MODULE__, id), do: GenServer.call(server, {:resync, id})

  @spec group_count(GenServer.server()) :: non_neg_integer()
  def group_count(server \\ __MODULE__), do: GenServer.call(server, :group_count)

  @impl GenServer
  def init(opts) do
    Process.flag(:message_queue_data, :off_heap)
    Phoenix.PubSub.subscribe(ChurchAdmin.PubSub, Keyword.get(opts, :topic, Broadcaster.topic()))

    {:ok,
     %{
       refresh: Keyword.get(opts, :refresh, &Refresh.run/1),
       task_supervisor: Keyword.get(opts, :task_supervisor, ChurchAdmin.Realtime.Live.Runs),
       max_concurrent_runs: Keyword.get(opts, :max_concurrent_runs, @default_max_concurrent_runs),
       retry_base_ms: Keyword.get(opts, :retry_base_ms, @default_retry_base_ms),
       groups: %{},
       registrations: %{},
       sockets: %{},
       index: DependencyIndex.new(),
       running: %{},
       queue: :queue.new()
     }}
  end

  @impl GenServer
  def handle_call({:register, %Registration{} = registration}, _from, state) do
    state =
      state
      |> add_member(registration)
      |> remove_member(registration.replaces)
      |> start_queued_runs()

    {:reply, :ok, state}
  end

  def handle_call({:unregister, id}, _from, state),
    do: {:reply, :ok, remove_member(state, id)}

  def handle_call({:resync, id}, _from, state) do
    case state.registrations do
      %{^id => key} -> {:reply, :ok, apply_to_group(state, key, &Group.resync(&1, id))}
      _unknown -> {:reply, :ok, state}
    end
  end

  def handle_call(:group_count, _from, state), do: {:reply, map_size(state.groups), state}

  @impl GenServer
  def handle_info({:realtime_changes, batch}, state) do
    {:noreply,
     state |> collect_in_busy_groups(batch) |> queue_touched_groups(batch) |> start_queued_runs()}
  end

  def handle_info(:realtime_reset, state) do
    {:noreply,
     state.groups |> Map.keys() |> Enum.reduce(state, &run_again/2) |> start_queued_runs()}
  end

  def handle_info({:retry_run, key}, state) do
    case state.groups do
      %{^key => group} ->
        group = Group.mark_retry(group, false)

        {:noreply,
         %{state | groups: Map.put(state.groups, key, group)}
         |> enqueue_if_needed(group)
         |> start_queued_runs()}

      _dropped_meanwhile ->
        {:noreply, state}
    end
  end

  def handle_info({ref, outcome}, %{running: running} = state) when is_map_key(running, ref) do
    Process.demonitor(ref, [:flush])
    {:noreply, finish_run(state, ref, outcome)}
  end

  def handle_info({:DOWN, ref, :process, _task, reason}, %{running: running} = state)
      when is_map_key(running, ref) do
    failure = {:run_failed, [%{message: "run crashed: #{inspect(reason)}"}]}
    {:noreply, finish_run(state, ref, {:error, failure})}
  end

  def handle_info({:DOWN, _monitor, :process, pid, _reason}, state) do
    case state.sockets do
      %{^pid => {_monitor, ids}} -> {:noreply, Enum.reduce(ids, state, &remove_member(&2, &1))}
      _unknown -> {:noreply, state}
    end
  end

  defp run_again(key, state) do
    case state.groups[key] do
      %{status: :idle} -> enqueue(state, key)
      _queued_or_running -> update_in(state.groups[key], &Group.mark_run_again/1)
    end
  end

  defp add_member(state, %Registration{} = registration) do
    key = Group.key(registration)
    existing = Map.get_lazy(state.groups, key, fn -> Group.new(registration) end)
    {group, messages} = Group.join(existing, registration)
    deliver(messages)

    %{
      state
      | groups: Map.put(state.groups, key, group),
        registrations: Map.put(state.registrations, registration.id, key)
    }
    |> track_socket(registration.pid, registration.id)
    |> enqueue_if_needed(group)
  end

  defp enqueue_if_needed(state, group) do
    if Group.needs_run?(group), do: enqueue(state, group.key), else: state
  end

  defp remove_member(state, nil), do: state

  defp remove_member(state, id) do
    case Map.pop(state.registrations, id) do
      {nil, _registrations} ->
        state

      {key, registrations} ->
        %{pid: pid} = state.groups[key].members[id]

        %{state | registrations: registrations}
        |> untrack_socket(pid, id)
        |> update_group_and_drop_if_empty(key, &Group.leave(&1, id))
    end
  end

  defp track_socket(state, pid, id) do
    tracked =
      case state.sockets do
        %{^pid => {monitor, ids}} -> {monitor, MapSet.put(ids, id)}
        _first_registration -> {Process.monitor(pid), MapSet.new([id])}
      end

    %{state | sockets: Map.put(state.sockets, pid, tracked)}
  end

  defp untrack_socket(state, pid, id) do
    {monitor, ids} = state.sockets[pid]
    remaining = MapSet.delete(ids, id)

    if MapSet.size(remaining) == 0 do
      Process.demonitor(monitor, [:flush])
      %{state | sockets: Map.delete(state.sockets, pid)}
    else
      put_in(state.sockets[pid], {monitor, remaining})
    end
  end

  defp apply_to_group(state, key, transition) do
    {group, messages} = transition.(state.groups[key])
    deliver(messages)
    put_in(state.groups[key], group)
  end

  defp update_group_and_drop_if_empty(state, key, update) do
    group = update.(state.groups[key])

    if Group.empty?(group), do: drop_group(state, group), else: put_in(state.groups[key], group)
  end

  defp drop_group(state, group) do
    %{
      state
      | groups: Map.delete(state.groups, group.key),
        index: DependencyIndex.delete(state.index, group.key, group.dependencies)
    }
  end

  defp collect_in_busy_groups(state, batch) do
    busy = state.running |> Map.values() |> Enum.concat(:queue.to_list(state.queue))

    Enum.reduce(busy, state, fn key, state ->
      case state.groups do
        %{^key => group} -> put_in(state.groups[key], Group.collect_touched(group, batch))
        _dropped -> state
      end
    end)
  end

  defp queue_touched_groups(state, batch) do
    state.index
    |> DependencyIndex.groups_touching(batch.rows)
    |> Enum.reduce(state, fn key, state ->
      case state.groups[key] do
        %{status: :idle} = group -> enqueue_if_touched(state, group, batch)
        _busy -> state
      end
    end)
  end

  defp enqueue_if_touched(state, group, batch) do
    if GroupDependencies.touched?(group.dependencies, batch.rows) do
      enqueue(put_in(state.groups[group.key], Group.collect_touched(group, batch)), group.key)
    else
      state
    end
  end

  defp enqueue(state, key) do
    %{
      state
      | groups: Map.put(state.groups, key, Group.queue(state.groups[key])),
        queue: :queue.in(key, state.queue)
    }
  end

  defp start_queued_runs(%{running: running, max_concurrent_runs: max} = state)
       when map_size(running) >= max,
       do: state

  defp start_queued_runs(state) do
    case :queue.out(state.queue) do
      {:empty, _queue} ->
        state

      {{:value, key}, queue} ->
        %{state | queue: queue} |> maybe_start_run(key) |> start_queued_runs()
    end
  end

  defp maybe_start_run(state, key) do
    case state.groups do
      %{^key => %{status: :queued} = group} -> start_run(state, group)
      _dropped_or_started -> state
    end
  end

  defp start_run(state, group) do
    {group, input} = Group.start_run(group)
    refresh = state.refresh
    task = Task.Supervisor.async_nolink(state.task_supervisor, fn -> refresh.(input) end)

    %{
      state
      | groups: Map.put(state.groups, group.key, Group.track_run(group, task.ref)),
        running: Map.put(state.running, task.ref, group.key)
    }
  end

  defp finish_run(state, ref, outcome) do
    {key, running} = Map.pop(state.running, ref)

    %{state | running: running}
    |> apply_outcome(key, ref, outcome)
    |> start_queued_runs()
  end

  defp apply_outcome(state, key, ref, outcome) do
    case state.groups do
      %{^key => %{run_ref: ^ref} = group} -> apply_outcome_to_group(state, group, outcome)
      _dropped_meanwhile -> state
    end
  end

  defp apply_outcome_to_group(state, group, outcome) do
    log_failure(group, outcome)
    dependencies_before_run = group.dependencies
    {group, messages} = Group.finish_run(group, outcome)
    deliver(messages)
    state = forget_turned_away_members(state, messages)

    index =
      DependencyIndex.put(
        state.index,
        group.key,
        dependencies_before_run,
        group.dependencies || %{}
      )

    settle_finished_group(%{state | index: index}, group, dependencies_before_run)
  end

  defp forget_turned_away_members(state, messages) do
    for {pid, {refusal, id}} <- messages,
        refusal in [:live_refused, :live_run_failed],
        reduce: state do
      state ->
        untrack_socket(%{state | registrations: Map.delete(state.registrations, id)}, pid, id)
    end
  end

  defp settle_finished_group(state, group, dependencies_before_run) do
    if Group.empty?(group) do
      drop_group(state, group)
    else
      {due?, group} = Group.clear_touched_unless_due(group, dependencies_before_run)
      state = put_in(state.groups[group.key], group)

      cond do
        due? -> enqueue(state, group.key)
        Group.needs_retry?(group) -> schedule_retry(state, group)
        true -> state
      end
    end
  end

  defp schedule_retry(state, group) do
    wait_ms = min(state.retry_base_ms * 2 ** (group.failed_runs - 1), @max_retry_ms)
    Process.send_after(self(), {:retry_run, group.key}, wait_ms)
    put_in(state.groups[group.key], Group.mark_retry(group, true))
  end

  defp log_failure(group, {:error, {_failure, errors}}) do
    Logger.warning(
      "live query #{group.document.operation_name || "(anonymous)"} failed: #{inspect(errors)}"
    )
  end

  defp log_failure(_group, {:ok, _run}), do: :ok

  defp deliver(messages), do: Enum.each(messages, fn {pid, message} -> send(pid, message) end)
end
