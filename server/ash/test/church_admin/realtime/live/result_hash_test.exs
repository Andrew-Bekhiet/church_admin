defmodule ChurchAdmin.Realtime.Live.ResultHashTest do
  use ExUnit.Case, async: true

  alias ChurchAdmin.Realtime.Live.ResultHash

  @data %{"churches" => %{"count" => 2, "results" => [%{"id" => "a"}, %{"id" => "b"}]}}

  test "is 64 lowercase hex digits" do
    assert ResultHash.of(@data) =~ ~r/\A[0-9a-f]{64}\z/
  end

  test "is the same for equal data built in a different order" do
    keys = for n <- 1..60, do: "field#{n}"
    forward = Map.new(keys, &{&1, 1})
    backward = keys |> Enum.reverse() |> Map.new(&{&1, 1})

    assert ResultHash.of(%{"rows" => forward}) == ResultHash.of(%{"rows" => backward})
  end

  test "differs when a value differs" do
    changed = put_in(@data, ["churches", "count"], 3)

    refute ResultHash.of(changed) == ResultHash.of(@data)
  end

  test "differs when the order of a list differs" do
    reordered = update_in(@data, ["churches", "results"], &Enum.reverse/1)

    refute ResultHash.of(reordered) == ResultHash.of(@data)
  end
end
