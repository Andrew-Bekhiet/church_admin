defmodule ChurchAdmin.Realtime.ReplicationStreamTest do
  use ChurchAdmin.RealtimeCase, async: false

  alias ChurchAdmin.Realtime.Broadcaster

  defp insert_family_and_person(writer) do
    family = uuid()
    person = uuid()

    Postgrex.transaction(writer, fn conn ->
      Postgrex.query!(conn, "insert into families (id, name) values ($1, 'Realtime family')", [
        Ecto.UUID.dump!(family)
      ])

      Postgrex.query!(
        conn,
        "insert into persons (id, name, family_id) values ($1, 'Realtime person', $2)",
        [Ecto.UUID.dump!(person), Ecto.UUID.dump!(family)]
      )
    end)

    cleanup_sql([
      "delete from history.edit_history where record_id in ('#{person}', '#{family}')",
      "delete from persons where id = '#{person}'",
      "delete from families where id = '#{family}'"
    ])

    {family, person}
  end

  defp sql!(writer, statement, params \\ []) do
    Postgrex.query!(writer, statement, Enum.map(params, &Ecto.UUID.dump!/1))
  end

  defp insert_hobby(conn) do
    hobby = uuid()
    sql!(conn, "insert into hobbies (id, name) values ($1, 'Hobby ' || $1::uuid::text)", [hobby])
    cleanup_sql(["delete from hobbies where id = '#{hobby}'"])
    hobby
  end

  test "inserts, updates and deletes of persons emit Person with the operation", %{writer: writer} do
    {_family, person} = insert_family_and_person(writer)
    await_change(%{type: "Person", id: person, op: "insert"})

    sql!(writer, "update persons set name = 'Renamed' where id = $1", [person])
    await_change(%{type: "Person", id: person, op: "update"})

    sql!(writer, "delete from persons where id = $1", [person])
    await_change(%{type: "Person", id: person, op: "delete"})
  end

  test "a service membership emits Person with the person id", %{writer: writer} do
    {_family, person} = insert_family_and_person(writer)
    service = uuid()
    membership = uuid()
    sql!(writer, "insert into services (id, name) values ($1, 'Realtime service')", [service])
    cleanup_sql(["delete from services where id = '#{service}'"])

    sql!(
      writer,
      "insert into persons_services (rel_id, person_id, service_id) values ($1, $2, $3)",
      [membership, person, service]
    )

    await_change(%{type: "Person", id: person, op: "update"})

    sql!(writer, "delete from persons_services where rel_id = $1", [membership])
    {batch, _earlier} = await_change(%{type: "ServiceMembership", id: membership, op: "delete"})
    assert %{type: "Person", id: person, op: "update"} in batch.changes
  end

  test "an address emits its Family", %{writer: writer} do
    {family, _person} = insert_family_and_person(writer)
    [area, street, address] = [uuid(), uuid(), uuid()]

    Postgrex.transaction(writer, fn conn ->
      sql!(conn, "insert into areas (id, name) values ($1, 'Realtime area')", [area])
      sql!(conn, "insert into streets (id, name) values ($1, 'Realtime street')", [street])
      sql!(conn, "insert into areas_streets (area_id, street_id) values ($1, $2)", [area, street])

      sql!(
        conn,
        "insert into addresses (id, family_id, area_id, street_id) values ($1, $2, $3, $4)",
        [address, family, area, street]
      )
    end)

    cleanup_sql([
      "delete from addresses where id = '#{address}'",
      "delete from areas_streets where area_id = '#{area}'",
      "delete from streets where id = '#{street}'",
      "delete from areas where id = '#{area}'"
    ])

    {batch, _earlier} = await_change(%{type: "Address", id: address, op: "insert"})
    assert %{type: "Family", id: family, op: "update"} in batch.changes
  end

  test "a history row emits the Person it feeds and invalidates its latest-row view",
       %{writer: writer} do
    {_family, person} = insert_family_and_person(writer)
    sql!(writer, "insert into history.call_history (person_id) values ($1)", [person])
    cleanup_sql(["delete from history.call_history where person_id = '#{person}'"])

    {batch, _earlier} = await_change(%{type: "LatestCall", id: nil, op: "insert"})
    assert %{type: "Person", id: person, op: "update"} in batch.changes
  end

  test "a rolled-back transaction emits nothing", %{writer: writer} do
    rolled_back = uuid()

    Postgrex.transaction(writer, fn conn ->
      sql!(conn, "insert into hobbies (id, name) values ($1, 'Rolled back')", [rolled_back])
      Postgrex.rollback(conn, :discarded)
    end)

    marker = insert_hobby(writer)
    {batch, earlier} = await_change(%{type: "Hobby", id: marker, op: "insert"})

    emitted_ids = for %{changes: changes} <- [batch | earlier], %{id: id} <- changes, do: id
    refute rolled_back in emitted_ids
  end

  test "concurrent transactions come out in commit order" do
    first_begun = open_transaction()
    second_begun = open_transaction()

    second = commit(second_begun)
    first = commit(first_begun)

    {batch, earlier} = await_change(%{type: "Hobby", id: first, op: "insert"})

    hobby_ids =
      for %{changes: changes} <- earlier ++ [batch], %{type: "Hobby", id: id} <- changes, do: id

    assert hobby_ids == [second, first]

    versions = for %{from: from, to: to} <- earlier ++ [batch], do: {from, to}
    assert Enum.all?(versions, fn {from, to} -> to > from end)
  end

  @tag :capture_log
  test "a dropped connection restarts streaming on a new slot", %{writer: writer, broadcaster: b} do
    %{rows: [[old_slot]]} =
      sql!(
        writer,
        "select slot_name::text from pg_replication_slots where slot_name like 'church_admin_realtime_%'"
      )

    head_before = Broadcaster.head(b)

    sql!(
      writer,
      "select pg_terminate_backend(active_pid) from pg_replication_slots where slot_name = '#{old_slot}'"
    )

    await_reset(b, head_before)
    assert Broadcaster.head(b) > head_before

    hobby = insert_hobby(writer)
    await_change(%{type: "Hobby", id: hobby, op: "insert"})

    %{rows: [[new_slot]]} =
      sql!(
        writer,
        "select slot_name::text from pg_replication_slots where slot_name like 'church_admin_realtime_%'"
      )

    assert new_slot != old_slot
  end

  defp open_transaction do
    test = self()

    task =
      Task.async(fn ->
        {:ok, conn} = Postgrex.start_link(writer_options())

        {:ok, hobby} =
          Postgrex.transaction(conn, fn conn ->
            hobby = insert_hobby_without_cleanup(conn)
            send(test, {:inserted, self(), hobby})

            receive do
              :commit -> hobby
            end
          end)

        GenServer.stop(conn)
        hobby
      end)

    assert_receive {:inserted, pid, hobby}, 5_000
    cleanup_sql(["delete from hobbies where id = '#{hobby}'"])
    {task, pid}
  end

  defp commit({task, pid}) do
    send(pid, :commit)
    Task.await(task)
  end

  defp insert_hobby_without_cleanup(conn) do
    hobby = uuid()
    sql!(conn, "insert into hobbies (id, name) values ($1, 'Hobby ' || $1::uuid::text)", [hobby])
    hobby
  end
end
