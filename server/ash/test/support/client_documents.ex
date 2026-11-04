defmodule ChurchAdmin.ClientDocuments do
  @moduledoc """
  The `.graphql` operations the client ships, each as the document it would
  send: the operation followed by every fragment it spreads.
  """

  @sources Path.expand("../../../../client/lib/**/*.graphql", __DIR__)
  @definition_start ~r/^(?=(?:query|mutation|subscription|fragment)\b)/m
  @definition_name ~r/\A(query|mutation|subscription|fragment)\s+(\w+)/
  @spread ~r/\.\.\.\s*(?!on\b)(\w+)/

  @spec queries() :: %{String.t() => String.t()}
  def queries do
    definitions = definitions()
    fragments = for {:fragment, name, text} <- definitions, into: %{}, do: {name, text}

    for {:query, name, text} <- definitions, into: %{} do
      {name, Enum.join([text | fragment_texts(text, fragments, MapSet.new()) |> elem(0)], "\n")}
    end
  end

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
