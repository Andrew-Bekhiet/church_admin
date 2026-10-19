defmodule ChurchAdmin.Accounts.Changes.LinkPerson do
  @moduledoc """
  Links the user's person once the user row is written, in the same
  transaction:

    * `new_person` creates a servant person linked to the user;
    * `person_id` links that person when no user has it yet; an update first
      unlinks the person linked so far, so nil only unlinks. An absent
      argument leaves the link alone.

  `as: :system` links any person (`createUser` wrote with Hasura's admin
  secret); `as: :actor` reaches only persons the actor may edit, as Hasura's
  person update permission did. A person out of reach or already linked fails
  with `user/person-already-linked` and rolls the whole command back.
  """

  use Ash.Resource.Change

  import Ash.Expr

  alias ChurchAdmin.Authz.{Actor, Scope}
  alias ChurchAdmin.Changes.AfterActionFailure
  alias ChurchAdmin.Errors.{Codes, ConstraintCodes, DomainError}
  alias ChurchAdmin.People.Person

  @impl true
  def init(opts) do
    if opts[:as] in [:system, :actor],
      do: {:ok, opts},
      else: {:error, "`as` is :system or :actor"}
  end

  @impl true
  def change(changeset, opts, context) do
    Ash.Changeset.after_action(changeset, fn changeset, user ->
      writer = if opts[:as] == :system, do: Actor.system(), else: context.actor

      case link(changeset, user, writer) do
        :ok -> {:ok, user}
        {:error, error} -> AfterActionFailure.roll_back(changeset.resource, error)
      end
    end)
  end

  defp link(changeset, user, writer) do
    with :ok <- create_new_person(Ash.Changeset.get_argument(changeset, :new_person), user) do
      case Ash.Changeset.fetch_argument(changeset, :person_id) do
        {:ok, person_id} -> relink(changeset.action_type, person_id, user, writer)
        :error -> :ok
      end
    end
  end

  defp create_new_person(nil, _user), do: :ok

  defp create_new_person(new_person, user) do
    Person
    |> Ash.Changeset.for_create(
      :create_for_user,
      %{name: new_person.name, gender: new_person.gender, uid: user.uid},
      actor: Actor.system()
    )
    |> Ash.create(return_notifications?: true)
    |> case do
      {:ok, _person, _notifications} -> :ok
      {:error, error} -> {:error, error}
    end
  end

  defp relink(:create, person_id, user, writer), do: link_person(person_id, user, writer)

  defp relink(:update, person_id, user, writer) do
    with {:ok, _unlinked} <- set_user(expr(uid == ^user.uid), nil, writer) do
      link_person(person_id, user, writer)
    end
  end

  defp link_person(nil, _user, _writer), do: :ok

  defp link_person(person_id, user, writer) do
    case set_user(expr(id == ^person_id and is_nil(uid)), user.uid, writer) do
      {:ok, 1} -> :ok
      {:ok, 0} -> {:error, already_linked()}
      {:error, error} -> {:error, error}
    end
  end

  defp set_user(filter, uid, writer) do
    scope = Scope.person(writer, :edit)

    Person
    |> Ash.Query.do_filter(expr(^filter and ^scope))
    |> Ash.bulk_update(:set_user, %{uid: uid},
      actor: writer,
      authorize?: false,
      strategy: [:stream],
      return_records?: true,
      return_errors?: true,
      stop_on_error?: true
    )
    |> case do
      %Ash.BulkResult{status: :success, records: records} ->
        {:ok, length(records)}

      %Ash.BulkResult{errors: errors} ->
        error =
          errors |> Ash.Error.to_error_class() |> ConstraintCodes.translate(constraint_codes())

        {:error, error}
    end
  end

  defp constraint_codes, do: %{"persons_uid_key" => Codes.user_person_already_linked()}

  defp already_linked,
    do: DomainError.exception(code: Codes.user_person_already_linked(), fields: [:person_id])
end
