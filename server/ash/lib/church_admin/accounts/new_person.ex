defmodule ChurchAdmin.Accounts.NewPerson do
  @moduledoc "The servant person `createUser` creates for the new user instead of linking one."

  use Ash.TypedStruct
  use AshGraphql.Type

  typed_struct do
    field :name, :string, allow_nil?: false
    field :gender, :boolean, allow_nil?: false
  end

  @impl AshGraphql.Type
  def graphql_type(_constraints), do: :new_person

  @impl AshGraphql.Type
  def graphql_input_type(_constraints), do: :new_person_input
end
