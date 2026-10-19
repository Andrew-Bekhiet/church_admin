defmodule ChurchAdminWeb.Graphql.JsonScalar do
  @moduledoc """
  The `Json` scalar the Flutter client sends GeoJSON and other documents as:
  an object, list or scalar given as GraphQL input arrives as the same JSON
  value. A string is decoded as JSON, which is all AshGraphql's own `Json`
  accepts, so existing callers keep working. Output is the stored value as is.
  """

  use Absinthe.Schema.Notation

  alias Absinthe.Blueprint.Input

  scalar :json, name: "Json", open_ended: true do
    description("""
    Arbitrary JSON. Objects and lists are passed as they are; a string must
    hold JSON text, which is decoded.
    """)

    serialize(& &1)
    parse(&decode/1)
  end

  def decode(%Input.String{value: text}) do
    case Jason.decode(text) do
      {:ok, decoded} -> {:ok, decoded}
      {:error, _reason} -> :error
    end
  end

  def decode(%Input.Object{} = object), do: {:ok, plain(object)}
  def decode(%Input.List{} = list), do: {:ok, plain(list)}
  def decode(%Input.Null{}), do: {:ok, nil}
  def decode(%{value: value}) when is_number(value) or is_boolean(value), do: {:ok, value}
  def decode(_input), do: :error

  defp plain(%Input.Object{fields: fields}),
    do: Map.new(fields, &{&1.name, plain(&1.input_value.normalized)})

  defp plain(%Input.List{items: items}), do: Enum.map(items, &plain(&1.normalized))
  defp plain(%Input.Null{}), do: nil
  defp plain(%{value: value}), do: value
end
