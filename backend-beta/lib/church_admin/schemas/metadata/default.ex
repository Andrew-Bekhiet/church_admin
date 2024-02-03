defmodule ChurchAdmin.Schemas.Metadata.Default do
  # require ChurchAdmin.Schemas.Metadata.Default
  alias ChurchAdmin.Schemas

  defmacro metadata_schema(schema_name, do: block) when is_binary(schema_name) do
    quote do
      use Schemas.Default

      schema unquote(schema_name) do
        field :name, :string

        unquote(block)
      end
    end
  end

  defmacro metadata_schema(schema_name) when is_binary(schema_name) do
    quote do
      metadata_schema unquote(schema_name) do
      end
    end
  end
end
