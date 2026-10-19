defmodule ChurchAdmin.FamilyWrites do
  @moduledoc """
  The family and store writes the families behaviour tests drive, as an
  actor: create and update a family with its `address` (a map) and its
  desired `parents` and `children` (id lists), archive and hard delete it,
  and create a store with its address. A list or address left out is not
  touched. Every call is one transaction whose deferred checks run at its
  end, and answers `{:ok, id}` or `{:error, code}` with a
  `ChurchAdmin.Errors.Codes` code, so a scenario reads the same whatever
  carries it out.
  """

  alias ChurchAdmin.Errors.{Codes, DomainError}
  alias ChurchAdmin.People.Family
  alias ChurchAdmin.Places.Store
  alias ChurchAdmin.Repo
  alias ChurchAdmin.Repo.HasuraSession

  def create_family(actor, attrs) do
    transact(actor, fn ->
      Family
      |> Ash.Changeset.for_create(:create_family, attrs, actor: actor)
      |> Ash.create()
    end)
  end

  def update_family(actor, id, attrs) do
    transact(actor, fn ->
      Family
      |> Ash.get!(id, authorize?: false)
      |> Ash.Changeset.for_update(:update_family, attrs, actor: actor)
      |> Ash.update()
    end)
  end

  def delete_family(actor, id), do: destroy(actor, id, :destroy)
  def hard_delete_family(actor, id), do: destroy(actor, id, :hard_destroy)

  def create_store(actor, attrs) do
    transact(actor, fn ->
      Store
      |> Ash.Changeset.for_create(:create_store, attrs, actor: actor)
      |> Ash.create()
    end)
  end

  defp destroy(actor, id, action) do
    transact(actor, fn ->
      Family
      |> Ash.get!(id, authorize?: false)
      |> Ash.Changeset.for_destroy(action, %{}, actor: actor)
      |> Ash.destroy(return_destroyed?: true)
    end)
  end

  defp transact(actor, fun) do
    fire_fixtures_deferred_checks!()

    Repo.transaction(fn ->
      HasuraSession.set_for_transaction(Repo, actor)

      case fun.() do
        {:ok, record} ->
          Repo.query!("set constraints all immediate")
          Repo.query!("set constraints all deferred")
          record.id

        {:error, error} ->
          Repo.rollback(error)
      end
    end)
    |> case do
      {:ok, id} -> {:ok, id}
      {:error, error} -> {:error, code_of(error)}
    end
  end

  defp fire_fixtures_deferred_checks! do
    ChurchAdmin.DataCase.set_system_db_session()
    Repo.query!("set constraints all immediate")
    Repo.query!("set constraints all deferred")
  end

  defp code_of(error) do
    error
    |> Ash.Error.to_error_class()
    |> leaf_errors()
    |> Enum.find_value(fn
      %DomainError{code: code} -> code
      %Ash.Error.Forbidden.Policy{} -> Codes.forbidden()
      %Ash.Error.Forbidden{} -> Codes.forbidden()
      _error -> nil
    end) || Exception.message(Ash.Error.to_error_class(error))
  end

  defp leaf_errors(%{errors: [_ | _] = errors}), do: Enum.flat_map(errors, &leaf_errors/1)
  defp leaf_errors(error), do: [error]
end
