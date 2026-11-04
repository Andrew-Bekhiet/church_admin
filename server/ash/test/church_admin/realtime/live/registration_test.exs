defmodule ChurchAdmin.Realtime.Live.RegistrationTest do
  use ExUnit.Case, async: true

  alias ChurchAdmin.Realtime.Live.Registration

  @list "query areas($first: Int, $after: String, $filter: AreaFilterInput) { areas(first: $first, after: $after, filter: $filter) { results { id } } }"
  @no_after "query dayKodases($first: Int) { kodases(first: $first) { results { id } } }"

  defp payload(overrides \\ %{}) do
    Map.merge(
      %{
        "ref" => "r1",
        "document" => @list,
        "operationName" => "areas",
        "variables" => %{},
        "window" => %{"rows" => 100, "chunk" => 50},
        "resultHashes" => ["a"]
      },
      overrides
    )
  end

  test "reads a windowed registration" do
    assert {:ok, registration} = Registration.from_payload(payload())

    assert registration.ref == "r1"
    assert registration.window == %{rows: 100, chunk: 50}
    assert registration.known_hashes == ["a"]
  end

  test "a window owns first and after" do
    variables = %{"first" => 5, "after" => "x", "filter" => %{}}

    assert {:ok, %{variables: kept}} =
             %{"variables" => variables} |> payload() |> Registration.from_payload()

    assert kept == %{"filter" => %{}}
  end

  test "without a window the variables stay as sent, first included" do
    assert {:ok, %{variables: variables, window: nil}} =
             %{
               "document" => @no_after,
               "operationName" => "dayKodases",
               "variables" => %{"first" => 1000}
             }
             |> payload()
             |> Map.delete("window")
             |> Registration.from_payload()

    assert variables == %{"first" => 1000}
  end

  test "null hashes and absent variables are allowed" do
    assert {:ok, %{known_hashes: nil, variables: %{}}} =
             %{"resultHashes" => nil}
             |> payload()
             |> Map.delete("variables")
             |> Registration.from_payload()
  end

  test "a window needs a document that declares first and after" do
    assert {:error, :invalid} =
             %{"document" => @no_after, "operationName" => nil}
             |> payload()
             |> Registration.from_payload()
  end

  test "malformed fields are invalid" do
    for overrides <- [
          %{"ref" => 1},
          %{"ref" => ""},
          %{"document" => nil},
          %{"operationName" => 1},
          %{"variables" => []},
          %{"window" => %{"rows" => 0, "chunk" => 10}},
          %{"window" => %{"rows" => 10, "chunk" => 1001}},
          %{"window" => %{"rows" => 20_001, "chunk" => 10}},
          %{"window" => %{"rows" => 10}},
          %{"window" => 10},
          %{"resultHashes" => "a"},
          %{"resultHashes" => [1]}
        ] do
      assert {:error, :invalid} = overrides |> payload() |> Registration.from_payload()
    end
  end

  test "document refusals come through" do
    assert {:error, :not_a_query} =
             %{"document" => "mutation m { x }", "operationName" => nil}
             |> payload()
             |> Registration.from_payload()

    assert {:error, :too_large} =
             %{"document" => String.duplicate(" ", 70_000)}
             |> payload()
             |> Registration.from_payload()
  end
end
