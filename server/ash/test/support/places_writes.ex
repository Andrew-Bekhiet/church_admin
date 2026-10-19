defmodule ChurchAdmin.PlacesWrites do
  @moduledoc """
  The writes the places behaviour tests drive: create, update and delete of
  areas, streets and stores (a store with its address, a street with its
  explicit areas), as an actor. Every call is one transaction whose deferred
  invariants are checked at its end, and answers `{:ok, id}` or
  `{:error, code}` with a `ChurchAdmin.Errors.Codes` code, so a scenario reads
  the same whatever carries it out.
  """

  alias ChurchAdmin.Errors.Codes
  alias ChurchAdmin.Repo
  alias ChurchAdmin.Repo.HasuraSession

  @uuid_columns ~w(id admin_family area_id street_id district_id family_id store_id)a
  @geography_columns ~w(bounds line geolocation)a
  @column_names %{admin_family_id: :admin_family}

  @messages %{
    "Street must belong to at least one area" => Codes.street_area_required(),
    "Address must belong to the same area as the street" => Codes.address_street_outside_area(),
    "Store must belong to an admin family or have an address" =>
      Codes.store_admin_family_or_address_required()
  }

  def create_area(actor, attrs), do: create(actor, "areas", attrs)
  def update_area(actor, id, attrs), do: update(actor, "areas", id, attrs)
  def delete_area(actor, id), do: delete(actor, "areas", id)
  def hard_delete_area(actor, id), do: delete(actor, "areas", id)

  def create_street(actor, attrs) do
    {areas, attrs} = Map.pop(attrs, :areas, [])

    transact(actor, fn ->
      id = insert!("streets", attrs)
      Enum.each(areas, &insert_pair!(&1, id))
      id
    end)
  end

  def update_street(actor, id, attrs) do
    {areas, attrs} = Map.pop(attrs, :areas)

    transact(actor, fn ->
      before = if areas, do: pairs_of_street(id), else: []
      update!("streets", id, attrs)

      if areas do
        Enum.each(areas -- before, &insert_pair!(&1, id))
        Enum.each(before -- areas, &delete_pair!(&1, id))
      end

      id
    end)
  end

  def delete_street(actor, id), do: delete(actor, "streets", id)
  def hard_delete_street(actor, id), do: delete(actor, "streets", id)

  def create_store(actor, attrs) do
    {address, attrs} = Map.pop(attrs, :address)

    transact(actor, fn ->
      id = insert!("stores", attrs)
      if address, do: insert!("addresses", Map.put(address, :store_id, id))
      id
    end)
  end

  def update_store(actor, id, attrs) do
    {address, attrs} = Map.pop(attrs, :address)

    transact(actor, fn ->
      update!("stores", id, attrs)
      if address, do: update_where!("addresses", :store_id, id, address)
      id
    end)
  end

  def delete_store(actor, id), do: delete(actor, "stores", id)
  def hard_delete_store(actor, id), do: delete(actor, "stores", id)

  defp create(actor, table, attrs), do: transact(actor, fn -> insert!(table, attrs) end)

  defp update(actor, table, id, attrs) do
    transact(actor, fn ->
      update!(table, id, attrs)
      id
    end)
  end

  defp delete(actor, table, id) do
    transact(actor, fn ->
      Repo.query!("delete from #{table} where id = $1::text::uuid", [id])
      id
    end)
  end

  defp transact(actor, fun) do
    Repo.transaction(fn ->
      HasuraSession.set_for_transaction(Repo, actor)
      result = fun.()
      Repo.query!("set constraints all immediate")
      Repo.query!("set constraints all deferred")
      result
    end)
  rescue
    error in Postgrex.Error ->
      {:error, Map.get(@messages, error.postgres.message, error.postgres.message)}
  end

  defp insert!(table, attrs) do
    attrs = Map.put_new_lazy(attrs, :id, &Ash.UUID.generate/0)
    columns = Enum.map(attrs, fn {name, _value} -> column(name) end)

    placeholders =
      attrs
      |> Enum.with_index(1)
      |> Enum.map(fn {{name, _value}, position} -> placeholder(column(name), position) end)

    Repo.query!(
      "insert into #{table} (#{Enum.join(columns, ", ")}) values (#{Enum.join(placeholders, ", ")})",
      Enum.map(attrs, fn {_name, value} -> param(value) end)
    )

    attrs.id
  end

  defp update!(table, id, attrs), do: update_where!(table, :id, id, attrs)

  defp update_where!(table, key, id, attrs) when attrs == %{} do
    Repo.query!("update #{table} set id = id where #{key} = $1::text::uuid", [id])
  end

  defp update_where!(table, key, id, attrs) do
    assignments =
      attrs
      |> Enum.with_index(2)
      |> Enum.map_join(", ", fn {{name, _value}, position} ->
        column = column(name)
        "#{column} = #{placeholder(column, position)}"
      end)

    Repo.query!(
      "update #{table} set #{assignments} where #{key} = $1::text::uuid",
      [id | Enum.map(attrs, fn {_name, value} -> param(value) end)]
    )
  end

  defp insert_pair!(area_id, street_id) do
    Repo.query!(
      "insert into areas_streets (area_id, street_id) values ($1::text::uuid, $2::text::uuid) on conflict do nothing",
      [area_id, street_id]
    )
  end

  defp delete_pair!(area_id, street_id) do
    Repo.query!(
      "delete from areas_streets where area_id = $1::text::uuid and street_id = $2::text::uuid",
      [area_id, street_id]
    )
  end

  defp pairs_of_street(street_id) do
    %{rows: rows} =
      Repo.query!("select area_id::text from areas_streets where street_id = $1::text::uuid", [
        street_id
      ])

    List.flatten(rows)
  end

  defp column(name), do: Map.get(@column_names, name, name)

  defp placeholder(column, position) when column in @uuid_columns, do: "$#{position}::text::uuid"

  defp placeholder(column, position) when column in @geography_columns,
    do: "ST_GeomFromGeoJSON($#{position}::text)::geography"

  defp placeholder(_column, position), do: "$#{position}"

  defp param(value) when is_map(value), do: Jason.encode!(value)
  defp param(value), do: value
end
