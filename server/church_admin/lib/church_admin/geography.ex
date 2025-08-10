defmodule ChurchAdmin.Geography do
  alias ChurchAdmin.Geography.{Area, Street, Store, Address, District, AreasStreets}

  use Ash.Domain,
    extensions: [AshGraphql.Domain]

  @moduledoc """
  Geography context: areas, streets, stores, addresses and related spatial data.
  """

  resources do
    resource Area
    resource Street
    resource Store
    resource Address
    resource District
    resource AreasStreets
  end
end
