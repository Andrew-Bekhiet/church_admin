defmodule ChurchAdmin.PersonWrites do
  @moduledoc """
  The person writes the persons and contacts behaviour tests drive, as an
  actor: create and update with the desired memberships (`services`,
  `groups`, `tags`, `hobbies`: id lists), own `contacts` and the family's
  unclaimed `family_contacts` (maps; `id` optional), archive and hard delete.
  A list left out is not touched. Every call is one transaction whose
  deferred checks run at its end, and answers `{:ok, id}` or `{:error, code}`
  with a `ChurchAdmin.Errors.Codes` code, so a scenario reads the same
  whatever carries it out.
  """

  alias ChurchAdmin.Errors.{Codes, DomainError}
  alias ChurchAdmin.People.Person
  alias ChurchAdmin.Repo
  alias ChurchAdmin.Repo.HasuraSession

  @messages %{
    "Person must have at least one of (family, store, service, group, uid)" =>
      Codes.person_container_required(),
    "Person study_year does not match service study_year_range" =>
      Codes.person_study_year_outside_service(),
    "Person must be in the group parent service to be inserted in the group" =>
      Codes.person_group_outside_service(),
    "person/user-link-not-permitted" => Codes.person_user_link_not_permitted(),
    "Permission denies inserting person" => Codes.forbidden(),
    "You do not have permission to insert this address" => Codes.forbidden(),
    "users_data_name_key" => Codes.user_name_taken()
  }

  def create_person(actor, attrs) do
    transact(actor, fn ->
      Person
      |> Ash.Changeset.for_create(:create_person, attrs, actor: actor)
      |> Ash.create()
    end)
  end

  def update_person(actor, id, attrs) do
    transact(actor, fn ->
      Person
      |> Ash.get!(id, authorize?: false)
      |> Ash.Changeset.for_update(:update_person, attrs, actor: actor)
      |> Ash.update()
    end)
  end

  def delete_person(actor, id), do: destroy(actor, id, :destroy)
  def hard_delete_person(actor, id), do: destroy(actor, id, :hard_destroy)

  defp destroy(actor, id, action) do
    transact(actor, fn ->
      Person
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
        {:ok, person} ->
          Repo.query!("set constraints all immediate")
          Repo.query!("set constraints all deferred")
          person.id

        {:error, error} ->
          Repo.rollback(error)
      end
    end)
    |> case do
      {:ok, id} -> {:ok, id}
      {:error, error} -> {:error, code_of(error)}
    end
  rescue
    error in Postgrex.Error -> {:error, message_code(error.postgres)}
  end

  defp fire_fixtures_deferred_checks! do
    ChurchAdmin.DataCase.set_system_db_session()
    Repo.query!("set constraints all immediate")
    Repo.query!("set constraints all deferred")
    forget_fixture_rows_as_inserted_in_this_transaction!()
  end

  defp forget_fixture_rows_as_inserted_in_this_transaction! do
    Repo.query!(
      "select set_config('church_admin.inserted_families', '', true), set_config('church_admin.inserted_persons', '', true)"
    )
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
    end) || message_code(%{message: Exception.message(Ash.Error.to_error_class(error))})
  end

  defp leaf_errors(%{errors: [_ | _] = errors}), do: Enum.flat_map(errors, &leaf_errors/1)
  defp leaf_errors(error), do: [error]

  defp message_code(%{message: message} = postgres) do
    Enum.find_value(@messages, message, fn {text, code} ->
      if String.contains?(message, text) or postgres[:constraint] == text, do: code
    end)
  end
end
