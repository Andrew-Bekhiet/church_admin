defmodule ChurchAdmin.Realtime.TypeMapTest do
  use ExUnit.Case, async: true

  alias ChurchAdmin.Realtime.RowChange
  alias ChurchAdmin.Realtime.TypeMap

  @person_id "6b0c1f7e-1111-4c1e-9e0a-000000000001"
  @family_id "6b0c1f7e-1111-4c1e-9e0a-000000000002"
  @store_id "6b0c1f7e-1111-4c1e-9e0a-000000000003"
  @row_id "6b0c1f7e-1111-4c1e-9e0a-000000000004"
  @uid "6b0c1f7e-1111-4c1e-9e0a-000000000005"
  @street_id "6b0c1f7e-1111-4c1e-9e0a-000000000006"

  setup_all do
    {:ok, type_map: TypeMap.build()}
  end

  defp changes(type_map, relation, op, row) do
    {old, new} = if op == :delete, do: {row, nil}, else: {nil, row}
    TypeMap.changes_for(type_map, %RowChange{relation: relation, op: op, old: old, new: new})
  end

  test "a row emits its own type and id with the row's operation", %{type_map: type_map} do
    for op <- [:insert, :update, :delete] do
      assert %{type: "Person", id: @person_id, op: Atom.to_string(op)} in changes(
               type_map,
               {"public", "persons"},
               op,
               %{"id" => @person_id}
             )
    end
  end

  test "a composite key joins its values the way AshGraphql encodes the id", %{type_map: type_map} do
    row = %{"area_id" => @row_id, "street_id" => @street_id}

    assert %{type: "AreaStreet", id: "#{@row_id}~#{@street_id}", op: "insert"} in changes(
             type_map,
             {"public", "areas_streets"},
             :insert,
             row
           )
  end

  test "a street link written by the geography sync updates its area and its street", %{
    type_map: type_map
  } do
    row = %{"area_id" => @row_id, "street_id" => @street_id}

    for op <- [:insert, :delete] do
      emitted = changes(type_map, {"public", "areas_streets"}, op, row)

      assert %{type: "Area", id: @row_id, op: "update"} in emitted
      assert %{type: "Street", id: @street_id, op: "update"} in emitted
    end
  end

  test "a join row also updates its declared parent", %{type_map: type_map} do
    row = %{"rel_id" => @row_id, "person_id" => @person_id, "service_id" => @store_id}

    emitted = changes(type_map, {"public", "persons_services"}, :delete, row)

    assert %{type: "ServiceMembership", id: @row_id, op: "delete"} in emitted
    assert %{type: "Person", id: @person_id, op: "update"} in emitted
  end

  test "an address updates its family and its store", %{type_map: type_map} do
    row = %{"id" => @row_id, "family_id" => @family_id, "store_id" => @store_id}
    emitted = changes(type_map, {"public", "addresses"}, :insert, row)

    assert %{type: "Family", id: @family_id, op: "update"} in emitted
    assert %{type: "Store", id: @store_id, op: "update"} in emitted
  end

  test "a parent column left null emits no parent", %{type_map: type_map} do
    row = %{"id" => @row_id, "family_id" => @family_id, "store_id" => nil}

    refute Enum.any?(
             changes(type_map, {"public", "addresses"}, :insert, row),
             &(&1.type == "Store")
           )
  end

  test "an update that moves a child emits both the old and the new parent", %{type_map: type_map} do
    old_family = "6b0c1f7e-1111-4c1e-9e0a-0000000000ff"

    emitted =
      TypeMap.changes_for(type_map, %RowChange{
        relation: {"public", "contacts"},
        op: :update,
        old: %{"id" => @row_id, "family_id" => old_family, "person_id" => nil},
        new: %{"id" => @row_id, "family_id" => @family_id, "person_id" => nil}
      })

    assert %{type: "Family", id: old_family, op: "update"} in emitted
    assert %{type: "Family", id: @family_id, op: "update"} in emitted
  end

  test "a history row updates the person whose derived fields it feeds", %{type_map: type_map} do
    row = %{"id" => @row_id, "person_id" => @person_id, "day_id" => "2026-10-19"}
    emitted = changes(type_map, {"history", "confession_history"}, :insert, row)

    assert %{type: "Person", id: @person_id, op: "update"} in emitted
  end

  test "a visit updates the visited record's type", %{type_map: type_map} do
    for {table, type} <- [{"families", "Family"}, {"persons", "Person"}, {"streets", "Street"}] do
      row = %{"visit_id" => @row_id, "table" => table, "record_id" => @family_id}
      emitted = changes(type_map, {"history", "visit_history"}, :insert, row)

      assert %{type: type, id: @family_id, op: "update"} in emitted
    end
  end

  test "a data check override updates its family", %{type_map: type_map} do
    emitted =
      changes(type_map, {"public", "data_check_overrides"}, :update, %{"family_id" => @family_id})

    assert %{type: "Family", id: @family_id, op: "update"} in emitted
  end

  test "a change to a table a view reads invalidates the view's list", %{type_map: type_map} do
    row = %{"id" => @row_id, "person_id" => @person_id}
    emitted = changes(type_map, {"history", "kodas_history"}, :insert, row)

    assert %{type: "LatestKodas", id: nil, op: "insert"} in emitted
  end

  test "a permission change emits ViewerScope for the affected uid", %{type_map: type_map} do
    for {relation, row} <- [
          {{"auth", "users_permissions"}, %{"uid" => @uid, "permission" => "manage_users"}},
          {{"auth", "users_admin_on"}, %{"permission_id" => @row_id, "uid" => @uid}},
          {{"auth", "users_data"}, %{"uid" => @uid}}
        ] do
      assert %{type: "ViewerScope", id: @uid, op: "update"} in changes(
               type_map,
               relation,
               :insert,
               row
             )
    end
  end

  test "a new meeting updates the service or group whose meetings it joins", %{
    type_map: type_map
  } do
    for {owner_column, type} <- [{"service_id", "Service"}, {"group_id", "Group"}] do
      row = %{"id" => @row_id, owner_column => @family_id}
      emitted = changes(type_map, {"history", "meetings"}, :insert, row)

      assert %{type: type, id: @family_id, op: "update"} in emitted
    end
  end

  test "a new admin grant updates the service or group whose admins it joins", %{
    type_map: type_map
  } do
    for {owner_column, type} <- [{"admin_on_service", "Service"}, {"admin_on_group", "Group"}] do
      row = %{"permission_id" => @row_id, "uid" => @uid, owner_column => @family_id}
      emitted = changes(type_map, {"auth", "users_admin_on"}, :insert, row)

      assert %{type: type, id: @family_id, op: "update"} in emitted
    end
  end

  test "a table without a GraphQL type emits nothing", %{type_map: type_map} do
    assert changes(type_map, {"public", "oban_jobs"}, :insert, %{"id" => "1"}) == []
  end

  test "a truncate invalidates every list the table feeds", %{type_map: type_map} do
    emitted =
      TypeMap.changes_for(type_map, %RowChange{
        relation: {"history", "kodas_history"},
        op: :truncate
      })

    assert %{type: "Kodas", id: nil, op: "delete"} in emitted
    assert %{type: "Person", id: nil, op: "update"} in emitted
    assert %{type: "LatestKodas", id: nil, op: "delete"} in emitted
  end
end
