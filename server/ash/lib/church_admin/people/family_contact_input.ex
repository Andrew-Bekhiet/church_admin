defmodule ChurchAdmin.People.FamilyContactInput do
  @moduledoc "One of a family's unclaimed contacts, for one person type, as a command's desired state; `id` names a contact the family already has."

  use Ash.TypedStruct
  use AshGraphql.Type

  typed_struct do
    field :id, :uuid
    field :phone, ChurchAdmin.Types.Text, allow_nil?: false
    field :label, ChurchAdmin.Types.Text
    field :is_main_phone, :boolean, allow_nil?: false, default: false
    field :person_type_id, :uuid, allow_nil?: false
  end

  @impl true
  def graphql_type(_constraints), do: :family_contact_value

  @impl true
  def graphql_input_type(_constraints), do: :family_contact_input
end
