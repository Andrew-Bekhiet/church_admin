defmodule ChurchAdmin.Realtime.BroadcasterTest do
  use ExUnit.Case, async: true

  alias ChurchAdmin.Realtime.Broadcaster
  alias ChurchAdmin.Realtime.RowChange

  @hobby_a "8d4f3a10-2222-4c1e-9e0a-00000000000a"
  @hobby_b "8d4f3a10-2222-4c1e-9e0a-00000000000b"
  @user_uid "8d4f3a10-2222-4c1e-9e0a-00000000000c"
  @coalesce_ms 30

  setup context do
    topic = "realtime-test:#{inspect(context.test)}"
    name = {:global, {__MODULE__, System.unique_integer([:positive])}}

    start_supervised!({Broadcaster, name: name, topic: topic, coalesce_ms: @coalesce_ms})
    Phoenix.PubSub.subscribe(ChurchAdmin.PubSub, topic)
    Phoenix.PubSub.subscribe(ChurchAdmin.PubSub, Broadcaster.viewer_scope_topic(topic))
    {:ok, broadcaster: name}
  end

  defp hobby_inserted(id),
    do: %RowChange{relation: {"public", "hobbies"}, op: :insert, new: %{"id" => id}}

  defp hobby_updated(id),
    do: %RowChange{relation: {"public", "hobbies"}, op: :update, new: %{"id" => id}}

  defp hobby_renamed(id) do
    %RowChange{
      relation: {"public", "hobbies"},
      op: :update,
      old: %{"id" => id, "name" => "old"},
      new: %{"id" => id, "name" => "new"},
      old_complete?: true
    }
  end

  defp oban_job,
    do: %RowChange{relation: {"public", "oban_jobs"}, op: :insert, new: %{"id" => "1"}}

  defp table_without_a_graphql_type,
    do: %RowChange{relation: {"history", "internal_log"}, op: :insert, new: %{"id" => "1"}}

  defp permission_granted(uid) do
    %RowChange{
      relation: {"auth", "users_permissions"},
      op: :insert,
      new: %{"uid" => uid, "permission" => "readAllData"}
    }
  end

  defp linked_person_updated do
    %RowChange{
      relation: {"public", "persons"},
      op: :update,
      new: %{"id" => @hobby_a, "uid" => @user_uid, "family_id" => @hobby_b}
    }
  end

  defp receive_batch do
    assert_receive {:realtime_changes, batch}, 1_000
    batch
  end

  test "commits within the coalesce window go out as one deduplicated batch", %{broadcaster: b} do
    Broadcaster.commit(b, [hobby_updated(@hobby_a), hobby_inserted(@hobby_b)])
    Broadcaster.commit(b, [hobby_updated(@hobby_a)])

    assert %{changes: changes, rows: rows} = receive_batch()

    assert changes == [
             %{type: "Hobby", id: @hobby_a, op: "update"},
             %{type: "Hobby", id: @hobby_b, op: "insert"}
           ]

    assert rows == [
             %{relation: {"public", "hobbies"}, op: :update, columns: :all},
             %{relation: {"public", "hobbies"}, op: :insert, columns: :all}
           ]
  end

  test "a batch names the columns of an update whose old row replicated in full", %{
    broadcaster: b
  } do
    Broadcaster.commit(b, [hobby_renamed(@hobby_a)])

    assert %{rows: [%{op: :update, columns: columns}]} = receive_batch()
    assert columns == MapSet.new(["name"])
  end

  test "a commit to a table without a GraphQL type still reaches the batch", %{broadcaster: b} do
    Broadcaster.commit(b, [table_without_a_graphql_type()])

    assert %{changes: [], rows: [%{relation: {"history", "internal_log"}}]} = receive_batch()
  end

  test "a commit that touches only Oban's tables is not broadcast", %{broadcaster: b} do
    Broadcaster.commit(b, [oban_job()])

    refute_receive {:realtime_changes, _batch}, @coalesce_ms * 4
  end

  test "Oban's rows leave a batch that carries others", %{broadcaster: b} do
    Broadcaster.commit(b, [oban_job(), hobby_inserted(@hobby_a)])

    assert %{rows: [%{relation: {"public", "hobbies"}}]} = receive_batch()
  end

  test "a batch that changes any viewer's scope is announced", %{broadcaster: b} do
    Broadcaster.commit(b, [permission_granted(@user_uid), hobby_inserted(@hobby_a)])

    assert_receive :viewer_scope_changed, 1_000
  end

  test "a truncated permission table is announced", %{broadcaster: b} do
    Broadcaster.commit(b, [%RowChange{relation: {"auth", "users_permissions"}, op: :truncate}])

    assert_receive :viewer_scope_changed, 1_000
  end

  test "a linked person whose facts may have changed is announced", %{broadcaster: b} do
    Broadcaster.commit(b, [linked_person_updated()])

    assert_receive :viewer_scope_changed, 1_000
  end

  test "a batch without a scope change announces nothing", %{broadcaster: b} do
    Broadcaster.commit(b, [hobby_inserted(@hobby_a)])

    receive_batch()
    refute_received :viewer_scope_changed
  end

  test "a reset is announced at once, to live queries and to viewers", %{broadcaster: b} do
    :ok = Broadcaster.reset(b)

    assert_received :realtime_reset
    assert_received :viewer_scope_changed
  end

  test "a reset drops commits still waiting for the coalesce window", %{broadcaster: b} do
    Broadcaster.commit(b, [hobby_updated(@hobby_a)])
    Broadcaster.reset(b)

    refute_receive {:realtime_changes, _batch}, @coalesce_ms * 4
  end
end
