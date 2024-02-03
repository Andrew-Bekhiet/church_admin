defmodule ChurchAdmin.Schemas.Default do
  defmacro __using__(_) do
    quote do
      use Ecto.Schema
      import ChurchAdmin.Schemas.Default

      @primary_key {:id, :binary_id, autogenerate: true}
      @foreign_key_type :binary_id
      @derive {Jason.Encoder, except: [:__meta__]}
    end
  end

  defmacro photo_object_fields() do
    quote do
      field :photo_updated_at, :utc_datetime
      field :blurhash, :string
    end
  end
end
