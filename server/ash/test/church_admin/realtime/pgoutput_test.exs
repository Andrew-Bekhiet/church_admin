defmodule ChurchAdmin.Realtime.PgoutputTest do
  use ExUnit.Case, async: true

  alias ChurchAdmin.Realtime.Pgoutput

  @fixtures_path Path.expand("../../support/fixtures/pgoutput.etf", __DIR__)
  @external_resource @fixtures_path
  @fixtures @fixtures_path |> File.read!() |> :erlang.binary_to_term()

  @person_id "0a7e2c1e-5d2b-4a0e-9a59-6f3c1b2d4e01"
  @membership_id "0a7e2c1e-5d2b-4a0e-9a59-6f3c1b2d4e03"

  defp decoded(scenario), do: Enum.map(@fixtures[scenario], &Pgoutput.decode/1)

  defp relation_named(messages, table) do
    Enum.find_value(messages, fn
      {:relation, %{table: ^table} = relation} -> relation
      _ -> nil
    end)
  end

  defp row(relation, values) do
    relation.columns |> Enum.map(& &1.name) |> Enum.zip(values) |> Map.new()
  end

  test "a transaction is framed by begin and a commit carrying its LSNs" do
    messages = decoded(:insert_person)

    assert {:begin, final_lsn, xid} = List.first(messages)
    assert {:commit, commit_lsn, end_lsn} = List.last(messages)
    assert is_integer(xid)
    assert commit_lsn == final_lsn
    assert end_lsn > commit_lsn
  end

  test "commits of later transactions carry larger LSNs" do
    commit_lsns =
      for scenario <- [:insert_person, :update_person, :insert_membership, :delete_person] do
        {:commit, commit_lsn, _end_lsn} = scenario |> decoded() |> List.last()
        commit_lsn
      end

    assert commit_lsns == Enum.sort(commit_lsns)
  end

  test "a relation names its schema, table, columns and key columns" do
    persons = :insert_person |> decoded() |> relation_named("persons")

    assert persons.schema == "public"
    assert "name" in Enum.map(persons.columns, & &1.name)
    assert for(%{key?: true, name: name} <- persons.columns, do: name) == ["id"]
  end

  test "an insert carries the new row as text" do
    messages = decoded(:insert_person)
    persons = relation_named(messages, "persons")

    assert [values] = for({:insert, id, values} <- messages, id == persons.id, do: values)
    assert %{"id" => @person_id, "name" => "Fixture person"} = row(persons, values)
  end

  test "an update of a default-identity table carries only the new row" do
    messages = decoded(:update_person)

    assert [{:update, _relation_id, nil, new_values}] =
             for({:update, _, _, _} = update <- messages, do: update)

    assert "Renamed fixture person" in new_values
  end

  test "a delete from a full-identity table carries the whole old row" do
    memberships = :insert_membership |> decoded() |> relation_named("persons_services")

    assert [{:delete, relation_id, {:full, values}}] =
             decoded(:delete_membership) -- framing(:delete_membership)

    assert relation_id == memberships.id
    assert %{"rel_id" => @membership_id, "person_id" => @person_id} = row(memberships, values)
  end

  test "a delete from a default-identity table carries only the key" do
    persons = :insert_person |> decoded() |> relation_named("persons")

    assert [{:key, values} | _] =
             for({:delete, id, old} <- decoded(:delete_person), id == persons.id, do: old)

    assert %{"id" => @person_id, "name" => nil} = row(persons, values)
  end

  test "a truncate names its relations" do
    messages = decoded(:truncate_kodas)
    kodas = relation_named(messages, "kodas_history")

    assert {:truncate, [kodas.id]} in messages
  end

  test "null and unchanged TOAST columns decode to nil and :unchanged_toast" do
    tuple = <<3::16, ?n, ?u, ?t, 2::32, "ab">>

    assert Pgoutput.decode(<<?I, 7::32, ?N, tuple::binary>>) ==
             {:insert, 7, [nil, :unchanged_toast, "ab"]}
  end

  test "messages the stream does not use decode to :ignored" do
    assert Pgoutput.decode(<<?O, 1::64, "origin", 0>>) == {:ignored, ?O}
    assert Pgoutput.decode(<<?Y, 1::32, "public", 0, "mood", 0>>) == {:ignored, ?Y}
  end

  defp framing(scenario) do
    for {tag, _, _} = message <- decoded(scenario), tag in [:begin, :commit], do: message
  end
end
