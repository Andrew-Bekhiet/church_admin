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
  alias ChurchAdmin.Errors.DomainError
  alias ChurchAdmin.Places.{Area, Store, Street}
  alias ChurchAdmin.Repo
  alias ChurchAdmin.Repo.HasuraSession

  @messages %{
    "Street must belong to at least one area" => Codes.street_area_required(),
    "Address must belong to the same area as the street" => Codes.address_street_outside_area(),
    "Store must belong to an admin family or have an address" =>
      Codes.store_admin_family_or_address_required()
  }

  def create_area(actor, attrs), do: create(actor, Area, :create_area, attrs)
  def update_area(actor, id, attrs), do: update(actor, Area, :update_area, id, attrs)
  def delete_area(actor, id), do: destroy(actor, Area, :destroy, id)
  def hard_delete_area(actor, id), do: destroy(actor, Area, :hard_destroy, id)

  def create_street(actor, attrs), do: create(actor, Street, :create_street, attrs)
  def update_street(actor, id, attrs), do: update(actor, Street, :update_street, id, attrs)
  def delete_street(actor, id), do: destroy(actor, Street, :destroy, id)
  def hard_delete_street(actor, id), do: destroy(actor, Street, :hard_destroy, id)

  def create_store(actor, attrs), do: create(actor, Store, :create_store, attrs)
  def update_store(actor, id, attrs), do: update(actor, Store, :update_store, id, attrs)
  def delete_store(actor, id), do: destroy(actor, Store, :destroy, id)
  def hard_delete_store(actor, id), do: destroy(actor, Store, :hard_destroy, id)

  defp create(actor, resource, action, attrs) do
    transact(actor, fn ->
      resource
      |> Ash.Changeset.for_create(action, attrs, actor: actor)
      |> Ash.create()
      |> id_or_code()
    end)
  end

  defp update(actor, resource, action, id, attrs) do
    transact(actor, fn ->
      resource
      |> Ash.get!(id, authorize?: false)
      |> Ash.Changeset.for_update(action, attrs, actor: actor)
      |> Ash.update()
      |> id_or_code()
    end)
  end

  defp destroy(actor, resource, action, id) do
    transact(actor, fn ->
      resource
      |> Ash.get!(id, authorize?: false)
      |> Ash.Changeset.for_destroy(action, %{}, actor: actor)
      |> Ash.destroy!()

      {:ok, id}
    end)
  end

  defp id_or_code({:ok, record}), do: {:ok, record.id}

  defp id_or_code({:error, %{errors: errors}}) do
    code =
      Enum.find_value(errors, fn
        %DomainError{code: code} -> code
        %Ash.Error.Forbidden.Policy{} -> Codes.forbidden()
        _error -> nil
      end)

    {:error, code || inspect(errors)}
  end

  defp transact(actor, fun) do
    Repo.transaction(fn ->
      HasuraSession.set_for_transaction(Repo, actor)

      case fun.() do
        {:ok, _id} = ok ->
          Repo.query!("set constraints all immediate")
          Repo.query!("set constraints all deferred")
          ok

        {:error, _code} = error ->
          Repo.rollback(error)
      end
    end)
    |> case do
      {:ok, result} -> result
      {:error, {:error, _code} = error} -> error
    end
  rescue
    error in Postgrex.Error ->
      {:error, Map.get(@messages, error.postgres.message, error.postgres.message)}
  end
end
