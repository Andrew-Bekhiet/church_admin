defmodule ChurchAdmin.Realtime.ReplicationStream do
  @moduledoc """
  Streams the `church_admin_changes` publication from a temporary logical
  replication slot (`pgoutput`) and hands each commit's row changes, with
  its commit LSN, to `ChurchAdmin.Realtime.Broadcaster`.

  The slot lives only as long as the connection, so a stopped app never
  pins WAL. Every (re)connect creates a fresh slot and resets the
  broadcaster to the slot's consistent point: commits made while no slot
  existed are not replayed, and clients behind it refetch everything.
  """

  use Postgrex.ReplicationConnection

  alias ChurchAdmin.Realtime.Broadcaster
  alias ChurchAdmin.Realtime.Pgoutput
  alias ChurchAdmin.Realtime.RowChange

  @publication "church_admin_changes"
  @slot_prefix "church_admin_realtime_"
  @postgres_epoch_us DateTime.to_unix(~U[2000-01-01 00:00:00Z], :microsecond)

  def start_link(opts) do
    {broadcaster, opts} = Keyword.pop(opts, :broadcaster, Broadcaster)

    Postgrex.ReplicationConnection.start_link(
      __MODULE__,
      broadcaster,
      connection_options() ++ [auto_reconnect: true, sync_connect: false] ++ opts
    )
  end

  @doc "The Repo's connection settings, without its pool options."
  @spec connection_options() :: keyword()
  def connection_options do
    Keyword.take(ChurchAdmin.Repo.config(), [
      :hostname,
      :port,
      :socket_dir,
      :socket,
      :username,
      :password,
      :database,
      :ssl,
      :socket_options,
      :connect_timeout
    ])
  end

  @impl true
  def init(broadcaster) do
    {:ok, %{broadcaster: broadcaster, step: :disconnected, relations: %{}, row_changes: []}}
  end

  @impl true
  def handle_connect(state) do
    slot = @slot_prefix <> (8 |> :crypto.strong_rand_bytes() |> Base.encode16(case: :lower))

    {:query, "CREATE_REPLICATION_SLOT #{slot} TEMPORARY LOGICAL pgoutput NOEXPORT_SNAPSHOT",
     %{state | step: {:creating_slot, slot}}}
  end

  @impl true
  def handle_disconnect(state),
    do: {:noreply, %{state | step: :disconnected, relations: %{}, row_changes: []}}

  @impl true
  def handle_result(
        [%Postgrex.Result{rows: [[slot, consistent_point | _]]}],
        %{
          step: {:creating_slot, slot}
        } = state
      ) do
    {:ok, consistent_lsn} = Postgrex.ReplicationConnection.decode_lsn(consistent_point)
    :ok = Broadcaster.reset(state.broadcaster, consistent_lsn)

    {:stream,
     "START_REPLICATION SLOT #{slot} LOGICAL 0/0 (proto_version '1', publication_names '#{@publication}')",
     [], %{state | step: :streaming}}
  end

  def handle_result(%Postgrex.Error{} = error, _state),
    do: {:disconnect, Exception.message(error)}

  @impl true
  def handle_data(<<?w, _wal_start::64, _wal_end::64, _clock::64, message::binary>>, state),
    do: {:noreply, handle_message(Pgoutput.decode(message), state)}

  def handle_data(<<?k, wal_end::64, _clock::64, _reply_requested>>, state),
    do: {:noreply, [standby_status(wal_end + 1)], state}

  defp handle_message({:begin, _final_lsn, _xid}, state), do: %{state | row_changes: []}

  defp handle_message({:relation, relation}, state),
    do: %{state | relations: Map.put(state.relations, relation.id, relation)}

  defp handle_message({:insert, relation_id, values}, state),
    do: add_change(state, relation_id, :insert, nil, values)

  defp handle_message({:update, relation_id, old, values}, state),
    do: add_change(state, relation_id, :update, old, values)

  defp handle_message({:delete, relation_id, old}, state),
    do: add_change(state, relation_id, :delete, old, nil)

  defp handle_message({:truncate, relation_ids}, state) do
    truncated =
      for id <- relation_ids,
          do: %RowChange{relation: relation_name(state.relations[id]), op: :truncate}

    %{state | row_changes: Enum.reverse(truncated, state.row_changes)}
  end

  defp handle_message({:commit, commit_lsn, _end_lsn}, state) do
    if state.row_changes != [] do
      Broadcaster.commit(state.broadcaster, commit_lsn, Enum.reverse(state.row_changes))
    end

    %{state | row_changes: []}
  end

  defp handle_message({:ignored, _tag}, state), do: state

  defp add_change(state, relation_id, op, old, new_values) do
    relation = Map.fetch!(state.relations, relation_id)

    change = %RowChange{
      relation: relation_name(relation),
      op: op,
      old: old_row(relation, old),
      new: new_values && row(relation, new_values)
    }

    %{state | row_changes: [change | state.row_changes]}
  end

  defp old_row(_relation, nil), do: nil
  defp old_row(relation, {_key_or_full, values}), do: row(relation, values)

  defp row(relation, values) do
    relation.columns |> Enum.map(& &1.name) |> Enum.zip(values) |> Map.new()
  end

  defp relation_name(relation), do: {relation.schema, relation.table}

  defp standby_status(lsn) do
    now = System.os_time(:microsecond) - @postgres_epoch_us
    <<?r, lsn::64, lsn::64, lsn::64, now::64, 0>>
  end
end
