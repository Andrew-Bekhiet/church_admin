defmodule ChurchAdmin.Realtime.BroadcasterTest do
  use ExUnit.Case, async: true

  alias ChurchAdmin.Realtime.Broadcaster
  alias ChurchAdmin.Realtime.RowChange

  @hobby_a "8d4f3a10-2222-4c1e-9e0a-00000000000a"
  @hobby_b "8d4f3a10-2222-4c1e-9e0a-00000000000b"
  @coalesce_ms 30

  setup context do
    topic = "realtime-test:#{inspect(context.test)}"
    name = {:global, {__MODULE__, System.unique_integer([:positive])}}

    opts =
      Keyword.merge(
        [name: name, topic: topic, coalesce_ms: @coalesce_ms],
        Map.get(context, :broadcaster_opts, [])
      )

    start_supervised!({Broadcaster, opts})
    Phoenix.PubSub.subscribe(ChurchAdmin.PubSub, topic)
    Broadcaster.reset(name, 100)
    assert_receive {:realtime_changes, %{from: 100, to: 100, changes: []}}
    {:ok, broadcaster: name}
  end

  defp hobby_inserted(id),
    do: %RowChange{relation: {"public", "hobbies"}, op: :insert, new: %{"id" => id}}

  defp hobby_updated(id),
    do: %RowChange{relation: {"public", "hobbies"}, op: :update, new: %{"id" => id}}

  defp unmapped,
    do: %RowChange{relation: {"public", "oban_jobs"}, op: :insert, new: %{"id" => "1"}}

  defp receive_batch do
    assert_receive {:realtime_changes, batch}, 1_000
    batch
  end

  test "commits within the coalesce window go out as one deduplicated batch", %{broadcaster: b} do
    Broadcaster.commit(b, 110, [hobby_updated(@hobby_a), hobby_inserted(@hobby_b)])
    Broadcaster.commit(b, 120, [hobby_updated(@hobby_a)])

    assert %{from: 100, to: 120, changes: changes} = receive_batch()

    assert changes == [
             %{type: "Hobby", id: @hobby_a, op: "update"},
             %{type: "Hobby", id: @hobby_b, op: "insert"}
           ]

    assert Broadcaster.head(b) == 120
  end

  test "each batch starts where the previous one ended", %{broadcaster: b} do
    Broadcaster.commit(b, 110, [hobby_updated(@hobby_a)])
    first = receive_batch()
    Broadcaster.commit(b, 130, [hobby_updated(@hobby_b)])
    second = receive_batch()

    assert {first.from, first.to, second.from, second.to} == {100, 110, 110, 130}
  end

  test "a commit that touches only unmapped tables is not broadcast", %{broadcaster: b} do
    Broadcaster.commit(b, 110, [unmapped()])

    refute_receive {:realtime_changes, _batch}, @coalesce_ms * 4
    assert Broadcaster.head(b) == 100
  end

  test "the backlog after a buffered version replays every later batch", %{broadcaster: b} do
    Broadcaster.commit(b, 110, [hobby_updated(@hobby_a)])
    first = receive_batch()
    Broadcaster.commit(b, 130, [hobby_updated(@hobby_b)])
    second = receive_batch()

    assert Broadcaster.batches_since(b, 100) == {:ok, [first, second]}
    assert Broadcaster.batches_since(b, 110) == {:ok, [second]}
    assert Broadcaster.batches_since(b, 130) == {:ok, []}
  end

  test "a version that is not a batch boundary has no backlog", %{broadcaster: b} do
    Broadcaster.commit(b, 110, [hobby_updated(@hobby_a)])
    receive_batch()

    assert Broadcaster.batches_since(b, 105) == :unknown
    assert Broadcaster.batches_since(b, 999) == :unknown
  end

  @tag broadcaster_opts: [retention_ms: 1]
  test "batches older than the retention leave the backlog", %{broadcaster: b} do
    Broadcaster.commit(b, 110, [hobby_updated(@hobby_a)])
    receive_batch()
    Process.sleep(5)
    Broadcaster.commit(b, 130, [hobby_updated(@hobby_b)])
    receive_batch()

    assert Broadcaster.batches_since(b, 100) == :unknown
    assert {:ok, [%{from: 110}]} = Broadcaster.batches_since(b, 110)
  end

  test "a reset starts a new history at the given version", %{broadcaster: b} do
    Broadcaster.commit(b, 110, [hobby_updated(@hobby_a)])
    receive_batch()

    Broadcaster.reset(b, 500)
    assert %{changes: []} = receive_batch()
    Broadcaster.commit(b, 510, [hobby_updated(@hobby_b)])

    assert %{from: 500, to: 510} = receive_batch()
    assert Broadcaster.batches_since(b, 110) == :unknown
  end

  test "a reset broadcasts an empty batch that starts at the new head", %{broadcaster: b} do
    Broadcaster.commit(b, 110, [hobby_updated(@hobby_a)])
    receive_batch()

    Broadcaster.reset(b, 500)

    assert %{from: 500, to: 500, changes: []} = receive_batch()
    assert Broadcaster.head(b) == 500
    assert Broadcaster.batches_since(b, 110) == :unknown
    assert Broadcaster.batches_since(b, 500) == {:ok, []}
  end

  test "a reset drops commits still waiting for the coalesce window", %{broadcaster: b} do
    Broadcaster.commit(b, 110, [hobby_updated(@hobby_a)])
    Broadcaster.reset(b, 500)

    assert %{from: 500, to: 500, changes: []} = receive_batch()
    refute_receive {:realtime_changes, _batch}, @coalesce_ms * 4
    assert Broadcaster.head(b) == 500
  end
end
