defmodule ChurchAdminWeb.Graphql.Pipeline do
  @moduledoc """
  The Absinthe.Plug pipeline for `/gql`. Errors are spec-compliant: `code`,
  `fields`, `vars` and `short_message` sit under `errors[].extensions`, where
  GraphQL clients (Dart's `gql_link` among them) read them. An error that still
  has no code afterwards (a document that failed to parse or validate) gets one
  from `ChurchAdminWeb.Graphql.FillMissingErrorCodes`.

  A document is rejected before it runs when its selections nest deeper than
  `max_depth/0` or its complexity exceeds `max_complexity/0`. Complexity is
  Absinthe's: a field costs 1 plus its children, and AshGraphql multiplies a
  list field's children by its `first`, `last` or `limit` argument.
  `ChurchAdminWeb.Graphql.ClientDocumentsTest` runs every document the client
  sends through both limits.
  """

  alias Absinthe.Phase.Document.Result
  alias Absinthe.Phase.Document.Validation.NoFragmentCycles
  alias ChurchAdminWeb.Graphql.Phase.LimitDepth

  @max_complexity 150_000
  @max_depth 10

  @spec max_complexity() :: pos_integer()
  def max_complexity, do: @max_complexity

  @spec max_depth() :: pos_integer()
  def max_depth, do: @max_depth

  @spec pipeline(map(), keyword()) :: Absinthe.Pipeline.t()
  def pipeline(config, pipeline_opts) do
    pipeline_opts =
      Keyword.merge(pipeline_opts, analyze_complexity: true, max_complexity: @max_complexity)

    depth_options = Absinthe.Pipeline.options(pipeline_opts) ++ [max_depth: @max_depth]

    config
    |> Absinthe.Plug.default_pipeline(pipeline_opts)
    |> Absinthe.Pipeline.insert_after(NoFragmentCycles, {LimitDepth, depth_options})
    |> Absinthe.Pipeline.replace(Result, {Result, spec_compliant_errors: true})
    |> Absinthe.Pipeline.insert_after(Result, ChurchAdminWeb.Graphql.FillMissingErrorCodes)
  end
end
