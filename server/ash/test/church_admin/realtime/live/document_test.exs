defmodule ChurchAdmin.Realtime.Live.DocumentTest do
  use ExUnit.Case, async: true

  alias ChurchAdmin.Realtime.Live.Document
  alias ChurchAdmin.Realtime.Live.ResultHash

  @areas """
  query areas($first: Int, $after: String) {
    areas(first: $first, after: $after) { endKeyset results { keyset id } }
  }
  """

  defp document_with_size(bytes) do
    "query q { __typename }" |> String.pad_trailing(bytes, " ")
  end

  test "a query is accepted, named and known by the hash of its text" do
    assert {:ok, document} = Document.prepare(@areas, "areas")

    assert document.hash == ResultHash.of(@areas)
    assert document.operation_name == "areas"
    assert document.variables == MapSet.new(["first", "after"])
  end

  test "the operation name may be left out when the document holds one operation" do
    assert {:ok, %{operation_name: "areas"}} = Document.prepare(@areas, nil)
  end

  test "an anonymous operation has no name" do
    assert {:ok, %{operation_name: nil}} = Document.prepare("{ __typename }", nil)
  end

  test "the named operation of several is the one checked" do
    both = "query reads { __typename } mutation writes { __typename }"

    assert {:ok, %{operation_name: "reads"}} = Document.prepare(both, "reads")
    assert {:error, :not_a_query} = Document.prepare(both, "writes")
  end

  test "several operations without a name, or an unknown name, are invalid" do
    both = "query one { __typename } query two { __typename }"

    assert {:error, :invalid} = Document.prepare(both, nil)
    assert {:error, :invalid} = Document.prepare(both, "three")
  end

  test "mutations and subscriptions are refused" do
    assert {:error, :not_a_query} = Document.prepare("mutation m { __typename }", nil)
    assert {:error, :not_a_query} = Document.prepare("subscription s { __typename }", "s")
  end

  test "a document that does not parse is invalid" do
    assert {:error, :invalid} = Document.prepare("query {", nil)
    assert {:error, :invalid} = Document.prepare("fragment F on Person { id }", nil)
  end

  test "a document of 64 KB is accepted and a larger one refused" do
    assert {:ok, _document} = Document.prepare(document_with_size(64 * 1024), nil)
    assert {:error, :too_large} = Document.prepare(document_with_size(64 * 1024 + 1), nil)
  end

  test "a document that was parsed once comes from the cache" do
    text = "query cached_#{System.unique_integer([:positive])} { __typename }"
    {:ok, first} = Document.prepare(text, nil)

    assert Document.Cache.fetch(first.hash) == {:ok, first.parsed}
    assert {:ok, ^first} = Document.prepare(text, nil)
  end
end
