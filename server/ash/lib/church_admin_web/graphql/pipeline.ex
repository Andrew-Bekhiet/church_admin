defmodule ChurchAdminWeb.Graphql.Pipeline do
  @moduledoc """
  The Absinthe.Plug pipeline for `/gql`. Errors are spec-compliant: `code`,
  `fields`, `vars` and `short_message` sit under `errors[].extensions`, where
  GraphQL clients (Dart's `gql_link` among them) read them. An error that still
  has no code afterwards (a document that failed to parse or validate) gets one
  from `ChurchAdminWeb.Graphql.FillMissingErrorCodes`.
  """

  alias Absinthe.Phase.Document.Result

  @spec pipeline(map(), keyword()) :: Absinthe.Pipeline.t()
  def pipeline(config, pipeline_opts) do
    config
    |> Absinthe.Plug.default_pipeline(pipeline_opts)
    |> Absinthe.Pipeline.replace(Result, {Result, spec_compliant_errors: true})
    |> Absinthe.Pipeline.insert_after(Result, ChurchAdminWeb.Graphql.FillMissingErrorCodes)
  end
end
