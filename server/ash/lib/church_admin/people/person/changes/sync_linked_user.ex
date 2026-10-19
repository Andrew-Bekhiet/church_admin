defmodule ChurchAdmin.People.Person.Changes.SyncLinkedUser do
  @moduledoc """
  A written person linked to a user passes its name, photo time and blurhash
  to that user, in the same transaction; a user that already shows them is
  not written. A name another user holds fails with `user/name-taken`.
  """

  use Ash.Resource.Change

  alias ChurchAdmin.Accounts.User
  alias ChurchAdmin.Authz.Actor
  alias ChurchAdmin.Changes.AfterActionFailure
  alias ChurchAdmin.Errors.{Codes, ConstraintCodes}

  require Ash.Query

  @shown [:name, :photo_updated_at, :blurhash]

  @impl true
  def change(changeset, _opts, _context) do
    Ash.Changeset.after_action(changeset, fn changeset, person ->
      case sync([person]) do
        :ok -> {:ok, person}
        {:error, error} -> AfterActionFailure.roll_back(changeset.resource, error)
      end
    end)
  end

  @impl true
  def batch_callbacks?(%Ash.Query{}, _opts, _context), do: false
  def batch_callbacks?(_changesets, _opts, _context), do: true

  @impl true
  def batch_change(changesets, _opts, _context), do: changesets

  @impl true
  def after_batch(changesets_and_results, _opts, _context) do
    case sync(Enum.map(changesets_and_results, &elem(&1, 1))) do
      :ok -> :ok
      {:error, error} -> [{:error, error}]
    end
  end

  defp sync(persons) do
    by_uid = for %{uid: uid} = person <- persons, is_binary(uid), into: %{}, do: {uid, person}

    by_uid
    |> stale_users()
    |> Enum.reduce_while(:ok, fn user, :ok ->
      case show(user, Map.take(by_uid[user.uid], @shown)) do
        {:ok, _user} -> {:cont, :ok}
        {:error, error} -> {:halt, {:error, error}}
      end
    end)
  end

  defp stale_users(by_uid) when by_uid == %{}, do: []

  defp stale_users(by_uid) do
    User
    |> Ash.Query.filter(uid in ^Map.keys(by_uid))
    |> Ash.read!(authorize?: false, page: false)
    |> Enum.reject(&(Map.take(&1, @shown) == Map.take(by_uid[&1.uid], @shown)))
  end

  defp show(user, fields) do
    user
    |> Ash.Changeset.for_update(:sync_from_person, fields, actor: Actor.system())
    |> Ash.update()
    |> case do
      {:ok, user} ->
        {:ok, user}

      {:error, error} ->
        {:error,
         ConstraintCodes.translate(error, %{"users_data_name_key" => Codes.user_name_taken()})}
    end
  end
end
