defmodule ChurchAdmin.People.ContactInput do
  @moduledoc "One of a person's own contacts as the person command's desired state; `id` names a contact the person already has."

  use Ash.TypedStruct
  use AshGraphql.Type

  typed_struct do
    field :id, :uuid
    field :phone, ChurchAdmin.Types.Text, allow_nil?: false
    field :label, ChurchAdmin.Types.Text
    field :is_main_phone, :boolean, allow_nil?: false, default: false
  end

  @impl true
  def graphql_type(_constraints), do: :contact_value

  @impl true
  def graphql_input_type(_constraints), do: :contact_input
end
