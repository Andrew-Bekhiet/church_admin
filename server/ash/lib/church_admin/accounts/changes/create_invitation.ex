defmodule ChurchAdmin.Accounts.Changes.CreateInvitation do
  @moduledoc """
  Invites the created user when the `invitation_expires_at` argument is set:
  an `auth.invitations` row created by the actor, in the same transaction.
  """

  use Ash.Resource.Change

  alias ChurchAdmin.Accounts.Invitation
  alias ChurchAdmin.Changes.AfterActionFailure

  @impl true
  def change(changeset, _opts, context) do
    case Ash.Changeset.get_argument(changeset, :invitation_expires_at) do
      nil ->
        changeset

      expires_at ->
        Ash.Changeset.after_action(changeset, fn changeset, user ->
          Invitation
          |> Ash.Changeset.for_create(
            :create_invitation,
            %{user_uid: user.uid, expires_at: expires_at},
            actor: context.actor,
            authorize?: false
          )
          |> Ash.create(return_notifications?: true)
          |> case do
            {:ok, _invitation, _notifications} -> {:ok, user}
            {:error, error} -> AfterActionFailure.roll_back(changeset.resource, error)
          end
        end)
    end
  end
end
