defmodule ChurchAdmin.Type.Color do
  use Ash.Type

  @impl Ash.Type
  def storage_type(_), do: :int8

  @impl Ash.Type
  def cast_input(nil, _), do: {:ok, nil}

  def cast_input(value, _) do
    Ecto.Type.cast(:integer, value)
  end

  @impl Ash.Type
  def cast_stored(nil, _), do: {:ok, nil}

  def cast_stored(value, _) do
    Ecto.Type.load(:integer, value)
  end

  @impl Ash.Type
  def dump_to_native(nil, _), do: {:ok, nil}

  def dump_to_native(value, _) do
    Ecto.Type.dump(:integer, value)
  end

  def graphql_input_type(_), do: :integer

  def graphql_type(_), do: :integer
end
