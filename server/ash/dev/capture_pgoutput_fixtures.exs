# Records the raw pgoutput messages Postgres streams for a few transactions
# into test/support/fixtures/pgoutput.etf, the decoder tests' input.
# Run against a migrated dev database: mix run --no-start dev/capture_pgoutput_fixtures.exs

defmodule CapturePgoutput do
  use Postgrex.ReplicationConnection

  @slot "church_admin_fixture_capture"

  def start_link(opts),
    do: Postgrex.ReplicationConnection.start_link(__MODULE__, opts[:recorder], opts)

  def init(recorder), do: {:ok, %{recorder: recorder, step: :create_slot}}

  def handle_connect(state) do
    {:query, "CREATE_REPLICATION_SLOT #{@slot} TEMPORARY LOGICAL pgoutput NOEXPORT_SNAPSHOT",
     state}
  end

  def handle_result([_slot], %{step: :create_slot} = state) do
    send(state.recorder, :slot_ready)

    {:stream,
     "START_REPLICATION SLOT #{@slot} LOGICAL 0/0 (proto_version '1', publication_names 'church_admin_changes')",
     [], %{state | step: :streaming}}
  end

  def handle_data(<<?w, _start::64, _end::64, _clock::64, message::binary>>, state) do
    send(state.recorder, {:message, message})
    {:noreply, state}
  end

  def handle_data(<<?k, _wal_end::64, _clock::64, _reply>>, state), do: {:noreply, state}
end

{:ok, _} = Application.ensure_all_started(:postgrex)

connection =
  ChurchAdmin.Repo.config()
  |> Keyword.take([:hostname, :port, :username, :password, :database])

{:ok, _} = CapturePgoutput.start_link(connection ++ [recorder: self()])

receive do
  :slot_ready -> :ok
after
  10_000 -> raise "the capture slot was not created"
end

{:ok, sql} = Postgrex.start_link(connection)
person = "0a7e2c1e-5d2b-4a0e-9a59-6f3c1b2d4e01"
service = "0a7e2c1e-5d2b-4a0e-9a59-6f3c1b2d4e02"
membership = "0a7e2c1e-5d2b-4a0e-9a59-6f3c1b2d4e03"
family = "0a7e2c1e-5d2b-4a0e-9a59-6f3c1b2d4e04"

run_as_system = fn statements ->
  Postgrex.transaction(sql, fn conn ->
    Postgrex.query!(conn, "select set_config('hasura.user', $1, true)", [
      ~s({"x-hasura-role":"admin"})
    ])
    Enum.each(statements, &Postgrex.query!(conn, &1, []))
  end)
end

scenarios = [
  insert_person: [
    "insert into families (id, name) values ('#{family}', 'Fixture family')",
    "insert into persons (id, name, family_id) values ('#{person}', 'Fixture person', '#{family}')"
  ],
  update_person: ["update persons set name = 'Renamed fixture person' where id = '#{person}'"],
  insert_membership: [
    "insert into services (id, name) values ('#{service}', 'Fixture service')",
    "insert into persons_services (rel_id, person_id, service_id) values ('#{membership}', '#{person}', '#{service}')"
  ],
  delete_membership: ["delete from persons_services where rel_id = '#{membership}'"],
  delete_person: [
    "delete from persons where id = '#{person}'",
    "delete from families where id = '#{family}'"
  ],
  truncate_kodas: ["truncate history.kodas_history"],
  cleanup: ["delete from services where id = '#{service}'"]
]

collect = fn collect, acc ->
  receive do
    {:message, <<?C, _::binary>> = commit} -> Enum.reverse([commit | acc])
    {:message, message} -> collect.(collect, [message | acc])
  after
    10_000 -> raise "no commit arrived; collected #{length(acc)} messages"
  end
end

fixtures =
  for {name, statements} <- scenarios, into: %{} do
    {:ok, :ok} = run_as_system.(statements)
    {name, collect.(collect, [])}
  end

path = Path.expand("../test/support/fixtures/pgoutput.etf", __DIR__)
File.mkdir_p!(Path.dirname(path))
File.write!(path, :erlang.term_to_binary(Map.delete(fixtures, :cleanup)))
IO.puts("wrote #{map_size(fixtures) - 1} scenarios to #{path}")
