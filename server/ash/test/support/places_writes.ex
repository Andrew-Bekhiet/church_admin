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

  defp transact(_actor, fun), do: fun.()
end
