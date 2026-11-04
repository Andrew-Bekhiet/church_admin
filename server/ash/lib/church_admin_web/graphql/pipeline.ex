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

  A query response that returned data and no errors carries
  `extensions.resultHash` (`ChurchAdminWeb.Graphql.Phase.PutResultHash`).
  """

  alias Absinthe.Adapter.LanguageConventions
  alias Absinthe.Language
  alias Absinthe.Phase.Document.Result
  alias Absinthe.Phase.Document.Validation.NoFragmentCycles
  alias Absinthe.Phase.Parse
  alias ChurchAdmin.Authz.Actor
  alias ChurchAdminWeb.Graphql.Phase.{LimitDepth, PutResultHash}

  @schema ChurchAdminWeb.GraphqlSchema
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
    |> Absinthe.Pipeline.insert_after(Result, PutResultHash)
    |> Absinthe.Pipeline.insert_after(Result, ChurchAdminWeb.Graphql.FillMissingErrorCodes)
  end

  @doc "The GraphQL type name of the rows of the keyset list at root field `name`, if it is one."
  @spec list_row_type(String.t() | nil) :: String.t() | nil
  def list_row_type(name) do
    with %{type: page_type} <- root_field(name),
         %{fields: %{results: %{type: rows}}} <- type(page_type),
         %{name: row_type} <- type(rows) do
      row_type
    else
      _not_a_keyset_list -> nil
    end
  end

  @doc "Whether the filter of the list at root field `name` takes `id`, which not every key is."
  @spec list_filters_by_id?(String.t() | nil) :: boolean()
  def list_filters_by_id?(name) do
    with %{args: %{filter: %{type: filter_type}}} <- root_field(name),
         %{fields: fields} <- type(filter_type) do
      field_named(fields, "id") != nil
    else
      _no_filter -> false
    end
  end

  @doc "Whether the rows of the list at root field `name` nest a field of their own type."
  @spec selects_type_inside_rows?(Language.Document.t(), String.t()) :: boolean()
  def selects_type_inside_rows?(%Language.Document{definitions: definitions}, name) do
    fragments =
      for %Language.Fragment{} = fragment <- definitions, into: %{}, do: {fragment.name, fragment}

    row_type = list_row_type(name)

    definitions
    |> Enum.flat_map(&selections_of_list(&1, name))
    |> Enum.any?(&nests_type?(&1, type_named(row_type), row_type, fragments))
  end

  defp selections_of_list(%Language.OperationDefinition{selection_set: root}, name) do
    for %Language.Field{name: ^name, selection_set: page} <- root.selections,
        %Language.Field{name: "results", selection_set: rows} <- page.selections,
        selection <- rows.selections,
        do: selection
  end

  defp selections_of_list(_fragment, _name), do: []

  defp nests_type?(%Language.Field{selection_set: nil}, _parent, _row_type, _fragments), do: false

  defp nests_type?(%Language.Field{} = field, parent, row_type, fragments) do
    child = parent.fields |> field_named(field.name) |> Map.fetch!(:type) |> type()

    child.name == row_type or
      Enum.any?(field.selection_set.selections, &nests_type?(&1, child, row_type, fragments))
  end

  defp nests_type?(%Language.FragmentSpread{name: name}, _parent, row_type, fragments) do
    %{type_condition: condition, selection_set: selection_set} = Map.fetch!(fragments, name)
    on_type = type_named(condition.name)

    Enum.any?(selection_set.selections, &nests_type?(&1, on_type, row_type, fragments))
  end

  defp nests_type?(%Language.InlineFragment{} = inline, parent, row_type, fragments) do
    on_type = if inline.type_condition, do: type_named(inline.type_condition.name), else: parent

    Enum.any?(inline.selection_set.selections, &nests_type?(&1, on_type, row_type, fragments))
  end

  defp type_named(name), do: Absinthe.Schema.lookup_type(@schema, name)

  defp field_named(fields, name) do
    fields
    |> Map.values()
    |> Enum.find(&(LanguageConventions.to_external_name(&1.name, :field) == name))
  end

  defp root_field(name) do
    @schema
    |> Absinthe.Schema.lookup_type(:query)
    |> Map.fetch!(:fields)
    |> field_named(name)
  end

  defp type(wrapped), do: Absinthe.Schema.lookup_type(@schema, Absinthe.Type.unwrap(wrapped))

  @doc "Runs an already parsed query outside a request, through the same phases as `/gql`."
  @spec run_parsed(Language.Document.t(), String.t() | nil, map(), Actor.t()) :: map()
  def run_parsed(%Language.Document{} = document, operation_name, variables, %Actor{} = actor) do
    phases =
      %{schema_mod: @schema, conn_private: %{http_method: "POST"}}
      |> pipeline(
        context: %{actor: actor, tenant: nil, context: %{}},
        operation_name: operation_name,
        variables: variables
      )
      |> Absinthe.Pipeline.without(Parse)

    {:ok, %{result: result}, _phases} = Absinthe.Pipeline.run(document, phases)
    result
  end
end
