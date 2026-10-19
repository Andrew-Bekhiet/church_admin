defmodule ChurchAdmin.Places.Types.AddressInput do
  @moduledoc """
  The address a command sets on the store or family it writes: the desired
  state of the owner's one address, without the ids the command owns
  (`family_id`, `store_id`). A command that gets `nil` leaves the address
  alone; keys left out of the map are not touched. `house_number` is not an
  input: the legacy column is no longer kept in step with `house_code`.
  """

  use Ash.Type.NewType,
    subtype_of: :map,
    constraints: [
      fields: [
        country_iso_code: [type: ChurchAdmin.Types.Text],
        district_id: [type: :uuid],
        area_id: [type: :uuid],
        street_id: [type: :uuid],
        substreet_name: [type: ChurchAdmin.Types.Text],
        geolocation: [type: ChurchAdmin.Types.Geography],
        storey_number: [type: :integer],
        house_code: [type: ChurchAdmin.Types.Text, constraints: [max_length: 5]],
        apartment_number: [type: :integer],
        special_landmark: [type: ChurchAdmin.Types.Text]
      ]
    ]

  def graphql_input_type(_), do: :address_input
end
