defmodule ChurchAdmin.Realtime.Live.BoundedTableTest do
  use ExUnit.Case, async: true

  alias ChurchAdmin.Realtime.Live.BoundedTable

  defp table!(context) do
    name = :"#{inspect(context.test)}"
    BoundedTable.new(name)
    name
  end

  test "keeps what it is given", context do
    table = table!(context)

    BoundedTable.put(table, "key", :value, 2)

    assert BoundedTable.fetch(table, "key") == {:ok, :value}
    assert BoundedTable.fetch(table, "other") == :error
  end

  test "is emptied when it reaches its bound, then takes the new entry", context do
    table = table!(context)

    BoundedTable.put(table, "first", 1, 2)
    BoundedTable.put(table, "second", 2, 2)
    BoundedTable.put(table, "third", 3, 2)

    assert BoundedTable.fetch(table, "first") == :error
    assert BoundedTable.fetch(table, "third") == {:ok, 3}
  end

  test "a table whose owner crashed reads as empty and drops what it is given" do
    assert BoundedTable.fetch(:never_created, "key") == :error
    assert BoundedTable.put(:never_created, "key", :value, 2) == :ok
  end
end
