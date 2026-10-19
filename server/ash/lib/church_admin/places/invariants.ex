defmodule ChurchAdmin.Places.Invariants do
  @moduledoc """
  The rules a written street, address or store must satisfy once its command
  has finished writing, as the queries `ChurchAdmin.Validations.InvariantHolds`
  runs: each takes the written records and returns a query for those that
  break the rule.
  """

  alias ChurchAdmin.Places.{Address, Store, Street}

  require Ash.Query

  @doc "A street linked to no area and touching none."
  @spec street_without_area([Street.t()]) :: Ash.Query.t()
  def street_without_area(streets) do
    ids = Enum.map(streets, & &1.id)

    Street
    |> Ash.Query.filter(
      id in ^ids and not exists(area_streets, true) and
        not fragment("exists (select 1 from areas a where ST_DWithin(a.bounds, ?, 0))", line)
    )
  end

  @doc "An address whose street is not linked to its area, or that lacks either."
  @spec address_outside_street_area([Address.t()]) :: Ash.Query.t()
  def address_outside_street_area(addresses) do
    ids = Enum.map(addresses, & &1.id)

    Address
    |> Ash.Query.filter(id in ^ids and not exists(area_links, street_id == parent(street_id)))
  end

  @doc "A store with neither an admin family nor an address."
  @spec store_without_admin_family_or_address([Store.t()]) :: Ash.Query.t()
  def store_without_admin_family_or_address(stores) do
    ids = Enum.map(stores, & &1.id)

    Store
    |> Ash.Query.filter(id in ^ids and is_nil(admin_family_id) and not exists(address, true))
  end
end
