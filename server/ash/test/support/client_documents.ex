defmodule ChurchAdmin.ClientDocuments do
  @moduledoc """
  The `.graphql` operations the client ships, each as the document it would
  send: the operation followed by every fragment it spreads.

  `queries_as_sent/0` adds what the generated code adds to each of them:
  `__typename` closing every selection set, the root's included.
  """

  alias Absinthe.Language

  @sources Path.expand("../../../../client/lib/**/*.graphql", __DIR__)
  @definition_start ~r/^(?=(?:query|mutation|subscription|fragment)\b)/m
  @definition_name ~r/\A(query|mutation|subscription|fragment)\s+(\w+)/
  @spread ~r/\.\.\.\s*(?!on\b)(\w+)/

  @spec queries() :: %{String.t() => String.t()}
  def queries do
    definitions = definitions()
    fragments = for {:fragment, name, text} <- definitions, into: %{}, do: {name, text}

    for {:query, name, text} <- definitions, into: %{} do
      {spread_fragments, _seen} = fragment_texts(text, fragments, MapSet.new())
      {name, Enum.join([text | spread_fragments], "\n")}
    end
  end

  @spec queries_as_sent() :: %{String.t() => String.t()}
  def queries_as_sent, do: Map.new(queries(), fn {name, text} -> {name, as_sent(text)} end)

  @doc "`text` as the client prints it: `__typename` closes every selection set."
  @spec as_sent(String.t()) :: String.t()
  def as_sent(text) do
    {:ok, %{input: parsed}} = Absinthe.Phase.Parse.run(%Language.Source{body: text}, [])

    parsed
    |> with_typenames()
    |> Language.Render.inspect(%{pretty: true})
  end

  defp with_typenames(%Language.SelectionSet{selections: selections} = selection_set) do
    selected = Enum.map(selections, &with_typenames/1)

    if Enum.any?(selected, &match?(%Language.Field{name: "__typename"}, &1)),
      do: %{selection_set | selections: selected},
      else: %{selection_set | selections: selected ++ [%Language.Field{name: "__typename"}]}
  end

  defp with_typenames(%Language.Document{definitions: definitions} = document),
    do: %{document | definitions: Enum.map(definitions, &with_typenames/1)}

  defp with_typenames(%{selection_set: %Language.SelectionSet{} = selection_set} = node),
    do: %{node | selection_set: with_typenames(selection_set)}

  defp with_typenames(leaf), do: leaf

  defp definitions do
    for path <- Path.wildcard(@sources),
        Path.basename(path) != "schema.graphql",
        text <- Regex.split(@definition_start, File.read!(path)),
        [_all, kind, name] <- [Regex.run(@definition_name, text)] do
      {String.to_existing_atom(kind), name, text}
    end
  end

  defp fragment_texts(text, fragments, seen) do
    @spread
    |> Regex.scan(text, capture: :all_but_first)
    |> List.flatten()
    |> Enum.uniq()
    |> Enum.reduce({[], seen}, fn name, {texts, seen} ->
      if MapSet.member?(seen, name) do
        {texts, seen}
      else
        fragment = Map.fetch!(fragments, name)
        {nested, seen} = fragment_texts(fragment, fragments, MapSet.put(seen, name))
        {texts ++ [fragment | nested], seen}
      end
    end)
  end
end
