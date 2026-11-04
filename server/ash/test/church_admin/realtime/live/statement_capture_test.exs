defmodule ChurchAdmin.Realtime.Live.StatementCaptureTest do
  use ChurchAdmin.DataCase, async: false

  alias ChurchAdmin.Factory
  alias ChurchAdmin.People.Person
  alias ChurchAdmin.Realtime.Live.StatementCapture

  require Ash.Query

  @query_event [:church_admin, :repo, :query]

  defp select(number), do: "SELECT #{number}"

  defp run(number), do: number |> select() |> Repo.query!()

  test "returns the function's result with the SQL of the Repo queries it ran, in order" do
    assert {:done, [select(1), select(2)]} ==
             StatementCapture.capture(fn ->
               run(1)
               run(2)
               :done
             end)
  end

  test "captures nothing when the function runs no query" do
    assert {:ok, []} == StatementCapture.capture(fn -> :ok end)
  end

  test "does not capture queries issued before or after the capture" do
    run(1)
    {_, captured} = StatementCapture.capture(fn -> run(2) end)
    run(3)

    assert [select(2)] == captured
  end

  test "captures the queries of tasks started by the capturing process" do
    {_, captured} =
      StatementCapture.capture(fn ->
        [3, 4]
        |> Task.async_stream(&run/1, ordered: true)
        |> Enum.to_list()
      end)

    assert Enum.sort([select(3), select(4)]) == Enum.sort(captured)
  end

  test "ignores queries from processes that are not descendants of the capturer" do
    test_pid = self()

    {_, captured} =
      StatementCapture.capture(fn ->
        spawn_link(fn ->
          Ecto.Adapters.SQL.Sandbox.allow(Repo, test_pid, self())
          run(5)
          send(test_pid, :stranger_done)
        end)

        assert_receive :stranger_done
        run(6)
      end)

    assert [select(6)] == captured
  end

  test "keeps concurrent captures apart" do
    capture_in_task = fn number ->
      Task.async(fn ->
        StatementCapture.capture(fn ->
          run(number)
          Process.sleep(30)
          run(number)
        end)
      end)
    end

    results = Task.await_many([capture_in_task.(7), capture_in_task.(8)])

    assert [[select(7), select(7)], [select(8), select(8)]] == Enum.map(results, &elem(&1, 1))
  end

  test "an enclosing capture also sees what a nested capture saw" do
    {{_, inner}, outer} =
      StatementCapture.capture(fn ->
        run(9)
        result = StatementCapture.capture(fn -> run(10) end)
        run(11)
        result
      end)

    assert [select(10)] == inner
    assert [select(9), select(10), select(11)] == outer
  end

  test "re-raises what the function raised and leaves no capture behind" do
    assert_raise RuntimeError, "boom", fn ->
      StatementCapture.capture(fn ->
        run(12)
        raise "boom"
      end)
    end

    {_, captured} = StatementCapture.capture(fn -> run(13) end)
    assert [select(13)] == captured
  end

  test "attaches one handler for the Repo's query event and keeps it across captures" do
    handlers = fn -> :telemetry.list_handlers(@query_event) end
    before_captures = handlers.()

    for number <- 1..3, do: StatementCapture.capture(fn -> run(number) end)

    assert before_captures == handlers.()
    assert [_one] = Enum.filter(before_captures, &(&1.id == StatementCapture))
  end

  describe "with Ash running relationship loads in tasks" do
    setup do
      Application.put_env(:ash, :disable_async?, false)
      on_exit(fn -> Application.put_env(:ash, :disable_async?, true) end)
    end

    test "captures the statements of the processes Ash started" do
      family = Factory.family!()
      store = Factory.store!()
      person = Factory.person!(%{family_id: family.id, store_id: store.id})
      test_pid = self()
      handler_id = {__MODULE__, make_ref()}

      :telemetry.attach(
        handler_id,
        @query_event,
        fn _event, _measurements, %{query: query}, _config ->
          send(test_pid, {:ran_in, self(), query})
        end,
        nil
      )

      on_exit(fn -> :telemetry.detach(handler_id) end)

      {[read], captured} =
        StatementCapture.capture(fn ->
          Person
          |> Ash.Query.filter(id == ^person.id)
          |> Ash.Query.load([:family, :store, :person_type])
          |> Ash.read!(authorize?: false)
        end)

      assert read.id == person.id
      assert Enum.any?(captured, &(&1 =~ ~s("families")))
      assert Enum.any?(captured, &(&1 =~ ~s("stores")))

      ran_in = for {:ran_in, pid, _query} <- drain_messages(), do: pid
      assert Enum.any?(ran_in, &(&1 != test_pid))
    end
  end

  defp drain_messages do
    {:messages, messages} = Process.info(self(), :messages)
    messages
  end
end
