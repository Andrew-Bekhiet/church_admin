defmodule ChurchAdmin.Files.Photos.Record do
  @moduledoc """
  Writes a photo's `photo_updated_at` and `blurhash` to the row that stores
  them, as the system actor, through its `:record_photo` action. A person's
  linked user shows the same photo, so the user row is written with it.
  `write/3` joins the caller's transaction; `record/3` opens its own.
  """

  alias ChurchAdmin.Accounts.User
  alias ChurchAdmin.Authz.Actor
  alias ChurchAdmin.Files.Photos.Target
  alias ChurchAdmin.People.Person

  @spec record(Target.t(), DateTime.t() | nil, String.t() | nil) :: :ok | {:error, term()}
  def record(%Target{} = target, photo_updated_at, blurhash) do
    resources = transaction_resources(target)

    resources
    |> Ash.transaction(fn ->
      with :ok <- write(target, photo_updated_at, blurhash) do
        :ok
      else
        {:error, error} -> Ash.DataLayer.rollback(resources, error)
      end
    end)
    |> case do
      {:ok, :ok} -> :ok
      {:error, error} -> {:error, error}
    end
  end

  @spec transaction_resources(Target.t()) :: [module()]
  def transaction_resources(%Target{resource: resource}), do: [resource, User]

  @spec write(Target.t(), DateTime.t() | nil, String.t() | nil) :: :ok | {:error, term()}
  def write(%Target{resource: resource, record_id: record_id}, photo_updated_at, blurhash) do
    fields = %{photo_updated_at: photo_updated_at, blurhash: blurhash}

    with {:ok, record} <- Ash.get(resource, record_id, actor: Actor.system()),
         {:ok, record} <- record_photo(record, fields) do
      write_to_linked_user(record, fields)
    end
  end

  defp write_to_linked_user(%Person{uid: uid}, fields) when is_binary(uid) do
    with {:ok, user} <- Ash.get(User, uid, actor: Actor.system()),
         {:ok, _user} <- record_photo(user, fields) do
      :ok
    end
  end

  defp write_to_linked_user(_record, _fields), do: :ok

  defp record_photo(record, fields),
    do: Ash.update(record, fields, action: :record_photo, actor: Actor.system())
end
