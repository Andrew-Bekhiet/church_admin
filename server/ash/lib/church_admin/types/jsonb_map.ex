defmodule ChurchAdmin.Types.JsonbMap do
  @moduledoc """
  A jsonb object. An atomic update can rewrite it with a database expression,
  which `:map` refuses, and GraphQL carries it as the `Json` scalar (an
  object, not a string of JSON text).
  """
  use Ash.Type.NewType, subtype_of: :map

  def graphql_type(_), do: :json

  def graphql_input_type(_), do: :json

  @impl Ash.Type
  def cast_atomic(expression, _constraints), do: {:atomic, expression}
end
