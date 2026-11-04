defmodule ChurchAdmin.Realtime.Live.Document do
  @moduledoc """
  A document a client registers: at most `@max_bytes` long and selecting a
  `query` operation, the one check `ChurchAdminWeb.Graphql.Pipeline`'s limits
  do not make. Parsed documents are cached by the sha256 of their text.
  `selected_fields` names every field at every depth, fragments included,
  whatever the client called its operation or aliased the field to.
  """

  alias Absinthe.Language
  alias ChurchAdmin.Realtime.Live.Document.Cache
  alias ChurchAdmin.Realtime.Live.ResultHash

  @enforce_keys [:hash, :parsed, :operation_name, :variables]
  defstruct [:hash, :parsed, :operation_name, :variables, :root_field, :selected_fields]

  @max_bytes 64 * 1024

  @type t :: %__MODULE__{
          hash: String.t(),
          parsed: Language.Document.t(),
          operation_name: String.t() | nil,
          variables: MapSet.t(String.t()),
          root_field: String.t() | nil,
          selected_fields: MapSet.t(String.t())
        }

  @spec prepare(String.t(), String.t() | nil) ::
          {:ok, t()} | {:error, :too_large | :invalid | :not_a_query}
  def prepare(text, _operation_name) when byte_size(text) > @max_bytes, do: {:error, :too_large}

  def prepare(text, operation_name) do
    hash = ResultHash.of(text)

    with {:ok, parsed} <- parsed(hash, text),
         {:ok, operation} <- select_operation(parsed, operation_name) do
      {:ok,
       %__MODULE__{
         hash: hash,
         parsed: parsed,
         operation_name: operation.name,
         variables: MapSet.new(operation.variable_definitions, & &1.variable.name),
         root_field: root_field(operation),
         selected_fields: selected_fields(parsed)
       }}
    end
  end

  defp root_field(%{selection_set: %{selections: selections}}) do
    case Enum.reject(selections, &match?(%Language.Field{name: "__typename"}, &1)) do
      [%Language.Field{name: name}] -> name
      _several_or_a_spread_or_none -> nil
    end
  end

  defp selected_fields(%Language.Document{definitions: definitions}),
    do: definitions |> Enum.flat_map(&fields_under/1) |> MapSet.new()

  defp fields_under(%{selection_set: %Language.SelectionSet{selections: selections}}),
    do: Enum.flat_map(selections, &field_names/1)

  defp fields_under(_leaf_or_spread), do: []

  defp field_names(%Language.Field{name: name} = field), do: [name | fields_under(field)]
  defp field_names(spread_or_inline_fragment), do: fields_under(spread_or_inline_fragment)

  defp parsed(hash, text) do
    with :error <- Cache.fetch(hash),
         {:ok, %{input: parsed}} <- Absinthe.Phase.Parse.run(%Language.Source{body: text}, []) do
      Cache.put(hash, parsed)
      {:ok, parsed}
    else
      {:ok, parsed} -> {:ok, parsed}
      {:error, _blueprint} -> {:error, :invalid}
    end
  end

  defp select_operation(%Language.Document{definitions: definitions}, operation_name) do
    operations = for %Language.OperationDefinition{} = operation <- definitions, do: operation

    case {operations, operation_name} do
      {[%{operation: :query} = operation], nil} -> {:ok, operation}
      {[%{operation: _not_a_query}], nil} -> {:error, :not_a_query}
      {_none_or_several, nil} -> {:error, :invalid}
      {_operations, name} -> find_query(operations, name)
    end
  end

  defp find_query(operations, name) do
    case Enum.find(operations, &(&1.name == name)) do
      nil -> {:error, :invalid}
      %{operation: :query} = operation -> {:ok, operation}
      _mutation_or_subscription -> {:error, :not_a_query}
    end
  end
end
