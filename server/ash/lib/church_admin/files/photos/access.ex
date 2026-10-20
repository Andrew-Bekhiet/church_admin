defmodule ChurchAdmin.Files.Photos.Access do
  @moduledoc """
  Whether an actor may read or change a subject's photo, ported from the
  Firebase `_authenticateStorageRequest`. Only approved actors get in.
  Reading is open for the public subjects (areas, streets, services, users)
  and otherwise needs the record to be readable; changing needs the actor to
  edit the record, and a person's photo is changed only by the person's own
  user. A user's photo is the photo of their linked person, and only that
  user changes it. Every denial except the own-photo rule is `not_found`, so
  a record the actor cannot see stays hidden.
  """

  require Ash.Query

  alias ChurchAdmin.Authz.Actor
  alias ChurchAdmin.Errors.{Codes, DomainError}
  alias ChurchAdmin.Files.Photos.Target
  alias ChurchAdmin.People.{Family, Person}
  alias ChurchAdmin.Organization.{Class, Group, Service}
  alias ChurchAdmin.Places.{Area, Store, Street}

  @resources %{
    persons: Person,
    families: Family,
    areas: Area,
    streets: Street,
    services: Service,
    classes: Class,
    groups: Group,
    stores: Store
  }
  @public_subjects [:areas, :streets, :services]

  @spec resolve(Actor.t() | nil, atom(), String.t(), :read | :write) ::
          {:ok, Target.t()} | {:error, DomainError.t()}
  def resolve(%Actor{approved?: true} = actor, subject, id, mode),
    do: resolve_subject(actor, subject, id, mode)

  def resolve(_actor, _subject, _id, _mode), do: {:error, error(Codes.forbidden())}

  defp resolve_subject(actor, :users, id, mode) do
    with :ok <- own_user(actor, id, mode),
         {:ok, person_id} <- linked_person_id(id) do
      {:ok, Target.new(:users, id, Person, person_id)}
    end
  end

  defp resolve_subject(_actor, subject, id, :read) when subject in @public_subjects do
    resource = Map.fetch!(@resources, subject)

    if exists?(resource, id, authorize?: false),
      do: {:ok, Target.new(subject, id, resource, id)},
      else: not_found(subject, id)
  end

  defp resolve_subject(actor, subject, id, :read) do
    resource = Map.fetch!(@resources, subject)

    if exists?(resource, id, actor: actor),
      do: {:ok, Target.new(subject, id, resource, id)},
      else: not_found(subject, id)
  end

  defp resolve_subject(actor, subject, id, :write) do
    resource = Map.fetch!(@resources, subject)

    with {:ok, %{user_can_edit: true} = record} <- editable_record(resource, id, actor),
         :ok <- own_photo_only(record, actor) do
      {:ok, Target.new(subject, id, resource, id)}
    else
      {:ok, _not_editable_or_missing} -> not_found(subject, id)
      {:error, _error} = error -> error
    end
  end

  defp own_user(_actor, _id, :read), do: :ok
  defp own_user(%Actor{uid: uid}, uid, :write), do: :ok
  defp own_user(_actor, id, :write), do: not_found(:users, id)

  defp linked_person_id(user_uid) do
    person =
      Person
      |> Ash.Query.filter(uid == ^user_uid)
      |> Ash.Query.select([:id])
      |> Ash.read_one!(authorize?: false)

    case person do
      %Person{id: id} -> {:ok, id}
      nil -> not_found(:users, user_uid)
    end
  end

  defp editable_record(resource, id, actor) do
    resource
    |> Ash.Query.filter(id == ^id)
    |> Ash.Query.load(:user_can_edit)
    |> Ash.read_one(actor: actor)
  end

  defp exists?(resource, id, options) do
    resource |> Ash.Query.filter(id == ^id) |> Ash.exists?(options)
  end

  defp own_photo_only(%Person{uid: owner}, %Actor{uid: uid})
       when owner != nil and owner != uid,
       do: {:error, error(Codes.photo_own_photo_only(), "You can only upload your own photo")}

  defp own_photo_only(_record, _actor), do: :ok

  defp not_found(subject, id),
    do: {:error, error(Codes.not_found(), "Object with id #{id} in #{subject} was not found")}

  defp error(code, message \\ nil), do: DomainError.exception(code: code, message: message)
end
