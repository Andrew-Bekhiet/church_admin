defmodule ChurchAdmin.People.Person.Validations.CallerMayRelinkUser do
  @moduledoc """
  Changing which user a person is linked to touches both the user it was
  linked to and the user it gets: each of them other than the actor must be
  one the actor may edit, or the write fails with
  `person/user-link-not-permitted`. The system actor relinks freely.
  """

  use Ash.Resource.Validation

  alias ChurchAdmin.Accounts.User
  alias ChurchAdmin.Authz.{Actor, Scope}
  alias ChurchAdmin.Errors.{Codes, DomainError}

  require Ash.Query

  @impl Ash.Resource.Validation
  def validate(changeset, _opts, context) do
    old_uid = changeset.data.uid
    new_uid = Ash.Changeset.get_attribute(changeset, :uid)

    if old_uid == new_uid or may_edit_users?(context.actor, [old_uid, new_uid]),
      do: :ok,
      else:
        {:error,
         DomainError.exception(code: Codes.person_user_link_not_permitted(), fields: [:uid])}
  end

  defp may_edit_users?(%Actor{system?: true}, _uids), do: true

  defp may_edit_users?(actor, uids) do
    others =
      uids
      |> Enum.reject(&(is_nil(&1) or &1 == actor_uid(actor)))
      |> Enum.uniq()

    others == [] or editable_count(actor, others) == length(others)
  end

  defp editable_count(actor, uids) do
    User
    |> Ash.Query.filter(uid in ^uids)
    |> Ash.Query.do_filter(Scope.user(actor, :edit))
    |> Ash.count!(authorize?: false)
  end

  defp actor_uid(%Actor{uid: uid}), do: uid
  defp actor_uid(_actor), do: nil
end
