defmodule ChurchAdminWeb.Graphql.ClientDocumentsTest do
  use ExUnit.Case, async: true

  import Plug.Test

  alias Absinthe.{Blueprint, Phase}
  alias ChurchAdminWeb.Graphql.Phase.LimitDepth
  alias ChurchAdminWeb.Graphql.Pipeline

  @schema ChurchAdminWeb.GraphqlSchema
  @client_documents Path.expand("../../../../../client/lib/**/*.graphql", __DIR__)
  @maximum_page_size 1_000
  @page_size_variables %{
    "first" => @maximum_page_size,
    "last" => @maximum_page_size,
    "limit" => @maximum_page_size
  }

  @absinthe_opts Absinthe.Plug.init(schema: @schema, pipeline: {Pipeline, :pipeline})

  defp client_documents do
    for path <- Path.wildcard(@client_documents),
        Path.basename(path) != "schema.graphql",
        do: File.read!(path)
  end

  defp client_operation_names(bodies) do
    {:ok, parsed} = Phase.Parse.run(%Absinthe.Language.Source{body: Enum.join(bodies, "\n")}, [])
    for %Absinthe.Language.OperationDefinition{name: name} <- parsed.input.definitions, do: name
  end

  defp measure(body, operation_name) do
    phases =
      @schema
      |> Absinthe.Pipeline.for_document(
        analyze_complexity: true,
        max_complexity: :infinity,
        variables: @page_size_variables,
        operation_name: operation_name,
        jump_phases: false
      )
      |> Absinthe.Pipeline.without(Phase.Document.Validation.NoUnusedFragments)
      |> Absinthe.Pipeline.without(Phase.Document.Validation.Result)
      |> Absinthe.Pipeline.upto(Phase.Document.Complexity.Analysis)

    {:ok, blueprint, _phases} =
      Absinthe.Pipeline.run(%Absinthe.Language.Source{body: body}, phases)

    %{
      name: operation_name,
      complexity: Blueprint.current_operation(blueprint).complexity,
      depth: LimitDepth.depth(blueprint)
    }
  end

  defp run_document(document) do
    conn =
      :post
      |> conn("/", %{"query" => document})
      |> Ash.PlugHelpers.set_actor(nil)
      |> AshGraphql.Plug.call(AshGraphql.Plug.init([]))
      |> Absinthe.Plug.call(@absinthe_opts)

    Jason.decode!(conn.resp_body)
  end

  defp error_messages(document) do
    %{"errors" => errors} = run_document(document)
    Enum.map(errors, & &1["message"])
  end

  setup_all do
    bodies = client_documents()
    all = Enum.join(bodies, "\n")
    {:ok, measured: Enum.map(client_operation_names(bodies), &measure(all, &1))}
  end

  describe "the documents the client sends" do
    test "are found", %{measured: measured} do
      assert length(measured) > 50
    end

    test "stay within the complexity limit at the maximum page size", %{measured: measured} do
      costly = Enum.filter(measured, &(&1.complexity > Pipeline.max_complexity()))

      assert costly == [],
             "raise Pipeline.max_complexity/0 or slim these documents: #{inspect(costly)}"
    end

    test "stay within the depth limit", %{measured: measured} do
      deep = Enum.filter(measured, &(&1.depth > Pipeline.max_depth()))

      assert deep == [],
             "raise Pipeline.max_depth/0 or flatten these documents: #{inspect(deep)}"
    end
  end

  describe "a document over the limits" do
    @fan_out """
    { persons(first: 1000) { results { family { persons(limit: 1000) { id family { persons(limit: 1000) { id } } } } } } }
    """

    test "is rejected for its complexity before it runs" do
      assert Enum.any?(
               error_messages(@fan_out),
               &(&1 =~
                   ~r/\AOperation is too complex: complexity is \d+ and maximum is #{Pipeline.max_complexity()}\z/)
             )
    end

    test "is rejected for its depth before it runs" do
      nested =
        String.duplicate("a { ", Pipeline.max_depth() + 1) <>
          "id" <> String.duplicate(" }", Pipeline.max_depth() + 1)

      assert [message] = error_messages("{ " <> nested <> " }")
      assert message =~ "is too deep: depth is #{Pipeline.max_depth() + 2}"
    end

    test "counts the fields of fragment spreads towards the depth" do
      chain =
        for level <- 1..Pipeline.max_depth(), into: "" do
          next = if level == Pipeline.max_depth(), do: "id", else: "...F#{level + 1}"
          "fragment F#{level} on Person { family { id #{next} } }\n"
        end

      assert [message] = error_messages("{ persons { results { ...F1 } } }\n" <> chain)
      assert message =~ "is too deep"
    end

    test "is rejected with a code the client can read" do
      assert %{"errors" => [_ | _] = errors} = run_document(@fan_out)
      assert Enum.all?(errors, &(&1["extensions"]["code"] == "invalid_document"))
    end
  end

  test "a document within the depth limit is not rejected for its depth" do
    nested =
      String.duplicate("a { ", Pipeline.max_depth() - 1) <>
        "id" <> String.duplicate(" }", Pipeline.max_depth() - 1)

    refute Enum.any?(error_messages("{ " <> nested <> " }"), &(&1 =~ "too deep"))
  end

  test "introspection is exempt from the depth limit" do
    levels = Pipeline.max_depth() + 3
    nested = String.duplicate("ofType { ", levels) <> "name" <> String.duplicate(" }", levels)

    response = run_document("{ __schema { types { kind #{nested} } } }")

    assert %{"data" => %{"__schema" => %{"types" => [_ | _]}}} = response
    refute Map.has_key?(response, "errors")
  end
end
