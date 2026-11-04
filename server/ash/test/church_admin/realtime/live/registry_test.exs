defmodule ChurchAdmin.Realtime.Live.RegistryTest do
  use ExUnit.Case, async: true

  import ExUnit.CaptureLog

  alias ChurchAdmin.Authz.Actor
  alias ChurchAdmin.Realtime.Live.Delta
  alias ChurchAdmin.Realtime.Live.Document
  alias ChurchAdmin.Realtime.Live.Registration
  alias ChurchAdmin.Realtime.Live.Registry
  alias ChurchAdmin.Realtime.Live.Result

  @areas {"public", "areas"}
  @streets {"public", "streets"}
  @reads_areas %{@areas => MapSet.new(["name"])}
  @reads_streets %{@streets => MapSet.new(["name"])}

  setup context do
    test_pid = self()
    topic = "live-registry-test:#{inspect(context.test)}"

    start_supervised!(
      {Task.Supervisor, name: {:global, {__MODULE__, context.test, :tasks}}},
      id: :tasks
    )

    registry =
      start_supervised!(
        {Registry,
         name: {:global, {__MODULE__, context.test}},
         topic: topic,
         task_supervisor: {:global, {__MODULE__, context.test, :tasks}},
         max_concurrent_runs: Map.get(context, :max_concurrent_runs, 4),
         refresh: fn input ->
           send(test_pid, {:run, input, self()})

           receive do
             {:finish, outcome} -> outcome
           end
         end}
      )

    {:ok, registry: registry, topic: topic}
  end

  defp document do
    {:ok, document} =
      Document.prepare(
        "query areas($first: Int, $after: String, $name: String) { __typename }",
        nil
      )

    document
  end

  defp actor(uid \\ "uid-a"), do: %Actor{uid: uid, approved?: true}

  defp registration(overrides \\ []) do
    id = Keyword.get(overrides, :id, make_ref())

    struct!(
      %Registration{
        id: id,
        ref: "ref",
        pid: self(),
        actor: actor(),
        document: document(),
        variables: %{},
        window: %{rows: 10, chunk: 10},
        known_hashes: nil
      },
      overrides
    )
  end

  defp list_result(rows, hash \\ nil) do
    data = %{
      "areas" => %{"count" => length(rows), "endKeyset" => "end", "results" => rows}
    }

    {:ok, result} = Result.from_chunks([%{hash: hash || inspect(rows), data: data}])
    result
  end

  defp row(id, name \\ "a"), do: %{"id" => id, "keyset" => "k#{id}", "name" => name}

  defp success(rows, dependencies \\ @reads_areas),
    do: {:ok, %{result: list_result(rows), dependencies: dependencies}}

  defp unchanged(dependencies \\ @reads_areas),
    do: {:ok, %{result: :unchanged, dependencies: dependencies}}

  defp await_run do
    assert_receive {:run, input, task}, 1_000
    {input, task}
  end

  defp finish_next_run(outcome) do
    {input, task} = await_run()
    send(task, {:finish, outcome})
    input
  end

  defp finish_next_run_and_settle(registry, outcome) do
    {_input, task} = await_run()
    await_exit(task, fn -> send(task, {:finish, outcome}) end)
    settle(registry)
  end

  defp await_exit(pid, trigger) do
    ref = Process.monitor(pid)
    trigger.()
    assert_receive {:DOWN, ^ref, :process, ^pid, _reason}, 1_000
  end

  defp touched(relation \\ @areas, columns \\ MapSet.new(["name"]), op \\ :update),
    do: [%{relation: relation, op: op, columns: columns}]

  defp batch(topic, rows) do
    Phoenix.PubSub.broadcast(
      ChurchAdmin.PubSub,
      topic,
      {:realtime_changes, %{changes: [], rows: rows}}
    )
  end

  defp settle(registry), do: :sys.get_state(registry)

  defp register_and_settle(registry, rows, overrides \\ []) do
    registration = registration(overrides)
    :ok = Registry.register(registry, registration)
    finish_next_run(success(rows))
    id = registration.id
    assert_receive {:live_ready, ^id}, 1_000
    registration
  end

  defp socket(fun \\ fn -> Process.sleep(:infinity) end) do
    pid = spawn(fun)
    on_exit(fn -> Process.exit(pid, :kill) end)
    pid
  end

  describe "registering" do
    test "the first run answers, and pushes the full result when no hashes were sent", %{
      registry: registry
    } do
      %{id: id} = registration = registration()
      :ok = Registry.register(registry, registration)

      refute_received {:live_ready, ^id}
      finish_next_run(success([row("1")]))

      assert_receive {:live_ready, ^id}
      assert_receive {:live_result, ^id, payload}
      assert payload == Delta.full(list_result([row("1")]))
    end

    test "hashes that match push nothing", %{registry: registry} do
      rows = [row("1")]
      %{chunk_hashes: hashes} = list_result(rows)

      %{id: id} = register_and_settle(registry, rows, known_hashes: hashes)

      refute_receive {:live_result, ^id, _payload}, 50
    end

    test "hashes that differ push the full result", %{registry: registry} do
      %{id: id} = register_and_settle(registry, [row("1")], known_hashes: ["stale"])

      assert_received {:live_result, ^id, %{full: true}}
    end

    test "matching hashes seed the sent set, so the first delta holds only changed rows", %{
      registry: registry,
      topic: topic
    } do
      rows = [row("1"), row("2")]
      %{chunk_hashes: hashes} = list_result(rows)
      %{id: id} = register_and_settle(registry, rows, known_hashes: hashes)

      batch(topic, touched())
      renamed = row("2", "renamed")
      finish_next_run(success([row("1"), renamed]))

      assert_receive {:live_result, ^id, %{full: false, rows: [^renamed]} = payload}
      refute Map.has_key?(payload, :order)
    end

    test "a second member of the group is served from the stored result, with no run", %{
      registry: registry
    } do
      rows = [row("1")]
      register_and_settle(registry, rows)
      %{id: id} = second = registration(known_hashes: list_result(rows).chunk_hashes)

      :ok = Registry.register(registry, second)

      assert_receive {:live_ready, ^id}
      refute_receive {:run, _input, _task}, 50
      assert Registry.group_count(registry) == 1
    end

    test "a member that joins during the first run is answered by that run", %{
      registry: registry
    } do
      first = registration()
      second = registration()
      :ok = Registry.register(registry, first)
      :ok = Registry.register(registry, second)

      finish_next_run(success([row("1")]))

      {first_id, second_id} = {first.id, second.id}
      assert_receive {:live_ready, ^first_id}
      assert_receive {:live_ready, ^second_id}
      assert_receive {:live_result, ^second_id, %{full: true}}
      refute_receive {:run, _input, _task}, 50
    end

    test "different variables make different groups", %{registry: registry} do
      :ok = Registry.register(registry, registration())
      :ok = Registry.register(registry, registration(variables: %{"name" => "x"}))

      assert Registry.group_count(registry) == 2
    end

    test "a first run with errors is refused and leaves no group", %{registry: registry} do
      %{id: id} = registration = registration()
      :ok = Registry.register(registry, registration)

      log =
        capture_log(fn ->
          finish_next_run({:error, [%{message: "boom"}]})
          assert_receive {:live_refused, ^id}
          settle(registry)
        end)

      assert log =~ "boom"
      assert Registry.group_count(registry) == 0
    end

    test "a refused registration leaves nothing behind for its socket to clean up", %{
      registry: registry
    } do
      socket = socket()
      :ok = Registry.register(registry, registration(pid: socket))

      capture_log(fn ->
        finish_next_run_and_settle(registry, {:error, [%{message: "boom"}]})
        await_exit(socket, fn -> Process.exit(socket, :kill) end)
        settle(registry)
      end)

      assert Process.alive?(registry)
      assert Registry.group_count(registry) == 0
    end

    test "a first run that crashes is refused and leaves no group", %{registry: registry} do
      %{id: id} = registration = registration()
      :ok = Registry.register(registry, registration)
      {_input, task} = await_run()

      capture_log(fn ->
        Process.exit(task, :kill)
        assert_receive {:live_refused, ^id}
        settle(registry)
      end)

      assert Registry.group_count(registry) == 0
    end
  end

  describe "a batch" do
    test "re-runs a group that reads a touched column, once", %{registry: registry, topic: topic} do
      register_and_settle(registry, [row("1")])

      batch(topic, touched() ++ touched(@areas, MapSet.new(["name", "color"])))

      await_run()
      refute_receive {:run, _input, _task}, 50
    end

    test "leaves alone a group that does not read the column or table", %{
      registry: registry,
      topic: topic
    } do
      register_and_settle(registry, [row("1")])

      batch(topic, touched(@areas, MapSet.new(["color"])))
      batch(topic, touched(@streets))

      refute_receive {:run, _input, _task}, 50
    end

    test "re-runs a group that depends on everything for any row", %{
      registry: registry,
      topic: topic
    } do
      :ok = Registry.register(registry, registration())
      finish_next_run(success([row("1")], :everything))

      batch(topic, touched(@streets, MapSet.new(["anything"])))

      await_run()
    end

    test "that arrives during a run coalesces into one more run", %{
      registry: registry,
      topic: topic
    } do
      register_and_settle(registry, [row("1")])
      batch(topic, touched())
      {_input, task} = await_run()

      batch(topic, touched())
      batch(topic, touched())
      settle(registry)
      send(task, {:finish, unchanged()})

      await_run()
      refute_receive {:run, _input, _task}, 50
    end

    test "during a run counts against the dependencies that run discovers", %{
      registry: registry,
      topic: topic
    } do
      register_and_settle(registry, [row("1")])
      batch(topic, touched())
      {_input, task} = await_run()

      batch(topic, touched(@streets))
      settle(registry)
      send(task, {:finish, unchanged(Map.merge(@reads_areas, @reads_streets))})

      await_run()
    end

    test "during a first run re-runs the group when the run read that table", %{
      registry: registry,
      topic: topic
    } do
      :ok = Registry.register(registry, registration())
      {_input, task} = await_run()

      batch(topic, touched())
      settle(registry)
      send(task, {:finish, success([row("1")])})

      await_run()
    end

    test "that the finished run does not read is forgotten", %{registry: registry, topic: topic} do
      register_and_settle(registry, [row("1")])
      batch(topic, touched())
      {_input, task} = await_run()

      batch(topic, touched(@streets))
      settle(registry)
      send(task, {:finish, unchanged()})

      refute_receive {:run, _input, _task}, 50
    end
  end

  describe "a run that follows a batch" do
    setup %{registry: registry, topic: topic} do
      rows = [row("1"), row("2")]
      %{id: id} = register_and_settle(registry, rows)
      assert_received {:live_result, ^id, %{full: true}}
      batch(topic, touched())
      {:ok, id: id, rows: rows}
    end

    test "pushes nothing when the result did not change", %{id: id} do
      finish_next_run(unchanged())

      refute_receive {:live_result, ^id, _payload}, 50
    end

    test "with errors keeps the stored result and pushes nothing", %{
      registry: registry,
      topic: topic,
      id: id
    } do
      log =
        capture_log(fn ->
          finish_next_run_and_settle(registry, {:error, [%{message: "boom"}]})
        end)

      assert log =~ "boom"
      refute_received {:live_result, ^id, _payload}

      batch(topic, touched())
      renamed = row("2", "renamed")
      finish_next_run(success([row("1"), renamed]))

      assert_receive {:live_result, ^id, %{full: false, rows: [^renamed]}}
    end

    test "that crashes keeps the stored result", %{registry: registry, id: id} do
      {_input, task} = await_run()

      capture_log(fn ->
        await_exit(task, fn -> Process.exit(task, :kill) end)
        settle(registry)
      end)

      refute_received {:live_result, ^id, _payload}
      assert Registry.group_count(registry) == 1
    end

    test "that shrinks the window and grows it again sends the row again", %{
      id: id,
      topic: topic
    } do
      finish_next_run(success([row("1")]))
      assert_receive {:live_result, ^id, %{rows: [], order: ["1"]}}

      batch(topic, touched())
      finish_next_run(success([row("1"), row("2")]))
      back = row("2")

      assert_receive {:live_result, ^id, %{rows: [^back], order: ["1", "2"]}}
    end
  end

  describe "a reset" do
    test "re-runs every group", %{registry: registry, topic: topic} do
      register_and_settle(registry, [row("1")])
      register_and_settle(registry, [row("2")], variables: %{"name" => "x"})

      Phoenix.PubSub.broadcast(ChurchAdmin.PubSub, topic, :realtime_reset)

      await_run()
      await_run()
    end

    test "during a run runs the group once more", %{registry: registry, topic: topic} do
      :ok = Registry.register(registry, registration())
      {_input, task} = await_run()

      Phoenix.PubSub.broadcast(ChurchAdmin.PubSub, topic, :realtime_reset)
      settle(registry)
      send(task, {:finish, success([row("1")])})

      await_run()
    end
  end

  describe "bounded concurrency" do
    @tag max_concurrent_runs: 1
    test "runs wait for a slot and start in order", %{registry: registry} do
      :ok = Registry.register(registry, registration(variables: %{"name" => "first"}))
      :ok = Registry.register(registry, registration(variables: %{"name" => "second"}))

      {%{variables: %{"name" => "first"}}, task} = await_run()
      refute_receive {:run, _input, _task}, 50

      send(task, {:finish, success([])})
      {%{variables: %{"name" => "second"}}, _task} = await_run()
    end

    @tag max_concurrent_runs: 1
    test "a crashed run frees its slot", %{registry: registry} do
      :ok = Registry.register(registry, registration(variables: %{"name" => "first"}))
      :ok = Registry.register(registry, registration(variables: %{"name" => "second"}))
      {_input, task} = await_run()

      capture_log(fn ->
        Process.exit(task, :kill)
        {%{variables: %{"name" => "second"}}, _task} = await_run()
      end)
    end
  end

  describe "a socket that dies" do
    test "takes its registrations along and drops the empty group", %{registry: registry} do
      socket = socket()
      :ok = Registry.register(registry, registration(pid: socket))
      finish_next_run(success([row("1")]))
      settle(registry)
      assert Registry.group_count(registry) == 1

      Process.exit(socket, :kill)
      ref = Process.monitor(socket)
      assert_receive {:DOWN, ^ref, :process, ^socket, _reason}
      settle(registry)

      assert Registry.group_count(registry) == 0
    end

    test "leaves a group that has another member", %{registry: registry, topic: topic} do
      socket = socket()
      :ok = Registry.register(registry, registration(pid: socket))
      finish_next_run(success([row("1")]))
      %{id: id} = survivor = registration()
      :ok = Registry.register(registry, survivor)
      assert_receive {:live_ready, ^id}

      Process.exit(socket, :kill)
      ref = Process.monitor(socket)
      assert_receive {:DOWN, ^ref, :process, ^socket, _reason}
      settle(registry)
      assert Registry.group_count(registry) == 1

      batch(topic, touched())
      finish_next_run(success([row("1", "renamed")]))

      assert_receive {:live_result, ^id, %{full: false}}
    end
  end

  describe "replacing a registration" do
    test "moves the member atomically: no result of the old group reaches it", %{
      registry: registry,
      topic: topic
    } do
      %{id: old} = register_and_settle(registry, [row("1")])
      assert_received {:live_result, ^old, _full}
      stays = registration()
      :ok = Registry.register(registry, stays)
      stays_id = stays.id
      assert_receive {:live_ready, ^stays_id}

      batch(topic, touched())
      {_input, old_group_run} = await_run()

      %{id: new} = replacement = registration(variables: %{"name" => "x"}, replaces: old)
      :ok = Registry.register(registry, replacement)
      send(old_group_run, {:finish, success([row("1", "renamed")])})
      finish_next_run(success([row("9")]))

      assert_receive {:live_ready, ^new}
      assert_receive {:live_result, ^new, %{full: true}}
      assert_receive {:live_result, ^stays_id, %{full: false}}
      refute_received {:live_result, ^old, _payload}
    end

    test "drops the old group when it empties", %{registry: registry} do
      %{id: old} = register_and_settle(registry, [row("1")])

      :ok = Registry.register(registry, registration(variables: %{"name" => "x"}, replaces: old))

      assert Registry.group_count(registry) == 1
    end
  end

  describe "unregistering" do
    test "drops an emptied group and ignores its running run", %{registry: registry} do
      %{id: id} = registration = registration()
      :ok = Registry.register(registry, registration)
      {_input, task} = await_run()

      :ok = Registry.unregister(registry, id)
      assert Registry.group_count(registry) == 0

      send(task, {:finish, success([row("1")])})
      settle(registry)
      refute_received {:live_ready, ^id}
    end

    test "of an unknown id is a no-op", %{registry: registry} do
      assert Registry.unregister(registry, make_ref()) == :ok
    end

    test "frees the group key for a new group while the old run finishes", %{registry: registry} do
      %{id: id} = registration = registration()
      :ok = Registry.register(registry, registration)
      {_input, old_run} = await_run()
      :ok = Registry.unregister(registry, id)

      %{id: new} = fresh = registration()
      :ok = Registry.register(registry, fresh)
      {_input, new_run} = await_run()

      send(old_run, {:finish, success([row("old")])})
      settle(registry)
      refute_received {:live_ready, ^new}

      send(new_run, {:finish, success([row("new")])})
      assert_receive {:live_ready, ^new}
      assert_receive {:live_result, ^new, %{data: data}}
      assert [%{"id" => "new"}] = data["areas"]["results"]
    end
  end

  describe "resync" do
    test "pushes the stored result in full", %{registry: registry} do
      rows = [row("1")]

      %{id: id} =
        register_and_settle(registry, rows, known_hashes: list_result(rows).chunk_hashes)

      :ok = Registry.resync(registry, id)

      assert_receive {:live_result, ^id, %{full: true}}
    end

    test "during the first run makes the baseline a full push", %{registry: registry} do
      rows = [row("1")]
      %{id: id} = registration = registration(known_hashes: list_result(rows).chunk_hashes)
      :ok = Registry.register(registry, registration)

      :ok = Registry.resync(registry, id)
      finish_next_run(success(rows))

      assert_receive {:live_result, ^id, %{full: true}}
    end

    test "of an unknown id is a no-op", %{registry: registry} do
      assert Registry.resync(registry, make_ref()) == :ok
    end
  end

  describe "a registration whose scoped actor changed" do
    test "waits for a run under the new actor, and discards a run under the old one", %{
      registry: registry
    } do
      register_and_settle(registry, [row("1")])

      regranted = %Actor{actor() | permissions: MapSet.new(["approved", "x"])}
      %{id: id} = registration = registration(actor: regranted)
      :ok = Registry.register(registry, registration)

      {%{actor: ^regranted}, task} = await_run()
      refute_received {:live_ready, ^id}

      send(task, {:finish, success([row("1"), row("2")])})
      assert_receive {:live_ready, ^id}
      assert_receive {:live_result, ^id, %{full: true}}
    end

    test "does not serve a run that started under the old actor", %{
      registry: registry,
      topic: topic
    } do
      register_and_settle(registry, [row("1")])
      batch(topic, touched())
      {%{actor: stale}, stale_run} = await_run()
      assert stale == actor()

      regranted = %Actor{actor() | permissions: MapSet.new(["approved", "x"])}
      %{id: id} = registration = registration(actor: regranted)
      :ok = Registry.register(registry, registration)

      send(stale_run, {:finish, success([row("leaked")])})
      {%{actor: ^regranted}, fresh_run} = await_run()
      refute_received {:live_ready, ^id}

      send(fresh_run, {:finish, success([row("1")])})
      assert_receive {:live_ready, ^id}
      assert_receive {:live_result, ^id, %{data: data}}
      assert [%{"id" => "1"}] = data["areas"]["results"]
    end

    test "that fails keeps the old actor's result from later members", %{registry: registry} do
      register_and_settle(registry, [row("old scope")])
      regranted = %Actor{actor() | permissions: MapSet.new(["approved", "x"])}
      %{id: refused} = registration(actor: regranted) |> tap(&Registry.register(registry, &1))

      capture_log(fn ->
        finish_next_run({:error, [%{message: "boom"}]})
        assert_receive {:live_refused, ^refused}
      end)

      refute_receive {:run, _input, _task}, 50

      %{id: later} = registration(actor: regranted) |> tap(&Registry.register(registry, &1))

      refute_received {:live_ready, ^later}
      finish_next_run(success([row("new scope")]))

      assert_receive {:live_ready, ^later}
      assert_receive {:live_result, ^later, %{data: data}}
      assert [%{"id" => "new scope"}] = data["areas"]["results"]
    end

    test "a second device with the same facts shares the group without a run", %{
      registry: registry
    } do
      register_and_settle(registry, [row("1")])
      principal = %ChurchAdmin.Auth.Principal{uid: "uid-a", auth_id: "a", claims: %{}}
      %{id: id} = second = registration(actor: %Actor{actor() | principal: principal})

      :ok = Registry.register(registry, second)

      assert_receive {:live_ready, ^id}
      refute_receive {:run, _input, _task}, 50
    end
  end

  test "a registration without a window is kept whole and pushed full on every change", %{
    registry: registry,
    topic: topic
  } do
    rows = [row("1")]
    first_data = %{"kodases" => %{"results" => rows}}
    {:ok, first} = Result.from_entity(%{hash: "a", data: first_data})
    %{id: id} = registration = registration(window: nil, variables: %{"first" => 1000})
    :ok = Registry.register(registry, registration)

    assert {%{variables: %{"first" => 1000}}, task} = await_run()
    send(task, {:finish, {:ok, %{result: first, dependencies: @reads_areas}}})
    assert_receive {:live_result, ^id, %{full: true, data: ^first_data}}

    batch(topic, touched())
    next_data = %{"kodases" => %{"results" => [row("1", "renamed")]}}
    {:ok, next} = Result.from_entity(%{hash: "b", data: next_data})
    finish_next_run({:ok, %{result: next, dependencies: @reads_areas}})

    assert_receive {:live_result, ^id, %{full: true, data: ^next_data}}
  end

  test "a batch is what the refresh seam receives", %{registry: registry, topic: topic} do
    register_and_settle(registry, [row("1")])
    rows = touched()

    batch(topic, rows)

    assert {%{touched: ^rows, known_hashes: [_hash]}, _task} = await_run()
  end

  test "an entity registration has no window", %{registry: registry} do
    :ok = Registry.register(registry, registration(window: nil))

    assert {%{window: nil}, _task} = await_run()
  end
end
