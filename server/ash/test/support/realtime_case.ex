defmodule ChurchAdmin.RealtimeCase do
  @moduledoc """
  Integration tests over a real logical replication stream. Writes commit for
  real on a plain Postgrex connection with the system DB session (outside the
  SQL sandbox); `cleanup_sql/1` registers the statements that undo them.
  Each test gets its own broadcaster and topic unless it passes
  `broadcaster: :global` in its tags.
  """

  use ExUnit.CaseTemplate

  alias ChurchAdmin.Realtime.Broadcaster
  alias ChurchAdmin.Realtime.ReplicationStream

  using do
    quote do
      import ChurchAdmin.RealtimeCase
    end
  end

  setup context do
    writer = start_supervised!({Postgrex, writer_options()}, id: :writer)
    {broadcaster, topic} = start_broadcaster(context)
    stream = start_supervised!({ReplicationStream, broadcaster: broadcaster})
    Phoenix.PubSub.subscribe(ChurchAdmin.PubSub, topic)
    await_streaming(broadcaster)

    {:ok, writer: writer, broadcaster: broadcaster, stream: stream}
  end

  defp start_broadcaster(%{broadcaster: :global}), do: {Broadcaster, Broadcaster.topic()}

  defp start_broadcaster(context) do
    name = Module.concat(context.module, "Broadcaster")
    topic = "realtime-test:#{inspect(context.test)}"
    start_supervised!({Broadcaster, name: name, topic: topic, coalesce_ms: 50})
    {name, topic}
  end

  def writer_options do
    ReplicationStream.connection_options()
    |> Keyword.put(:after_connect, fn conn ->
      Postgrex.query!(conn, "select set_config('hasura.user', $1, false)", [
        ChurchAdmin.Repo.HasuraSession.session_for(ChurchAdmin.Authz.Actor.system())
      ])
    end)
  end

  @doc "Runs the statements after the test, on a fresh connection with the system DB session."
  def cleanup_sql(statements) do
    on_exit(fn ->
      {:ok, conn} = Postgrex.start_link(writer_options())
      Enum.each(statements, &Postgrex.query!(conn, &1, []))
      GenServer.stop(conn)
    end)
  end

  def uuid, do: Ash.UUID.generate()

  defp await_streaming(broadcaster, attempts \\ 100) do
    cond do
      Broadcaster.head(broadcaster) != 0 ->
        :ok

      attempts == 0 ->
        flunk("the replication stream did not create its slot")

      true ->
        Process.sleep(50)
        await_streaming(broadcaster, attempts - 1)
    end
  end

  @doc "Receives batches until one carries `change`; returns `{batch, batches received before it}`."
  def await_change(change, timeout \\ 5_000) do
    await_change(change, System.monotonic_time(:millisecond) + timeout, [])
  end

  defp await_change(change, deadline, earlier) do
    remaining = max(deadline - System.monotonic_time(:millisecond), 0)

    receive do
      {:realtime_changes, batch} ->
        if change in batch.changes,
          do: {batch, Enum.reverse(earlier)},
          else: await_change(change, deadline, [batch | earlier])
    after
      remaining ->
        flunk("no batch carried #{inspect(change)}; received #{inspect(Enum.reverse(earlier))}")
    end
  end
end
