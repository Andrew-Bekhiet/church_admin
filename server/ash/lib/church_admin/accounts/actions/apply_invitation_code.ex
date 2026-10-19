defmodule ChurchAdmin.Accounts.Actions.ApplyInvitationCode do
  @moduledoc """
  Claims the invited user for the signed-in Firebase account and gives the
  account that user's claims, marking its email verified. Every failure to
  claim is `invitation/not-claimable`, so the code is no oracle.

  A claim needs an unclaimed, unexpired invitation whose user has no
  Firebase account yet and either no email or the account's email, which it
  then keeps. The same account applying the code again gets the same user.
  The invitation and its user are locked while the claim is decided.
  """

  use Ash.Resource.Actions.Implementation

  import Ash.Expr

  alias ChurchAdmin.Accounts.{Claims, ClaimedAccount, Invitation, InvitationCode, User}
  alias ChurchAdmin.Accounts.Changes.CanonicalizeNameAndEmail
  alias ChurchAdmin.Errors.{Codes, DomainError}
  alias ChurchAdmin.Google.IdentityToolkit

  @impl true
  def run(input, _opts, %{actor: %{principal: principal} = actor}) do
    with {:ok, code} <- InvitationCode.normalize(input.arguments.code),
         {:ok, email} <- account_email(principal),
         {:ok, invitation} <- locked(Invitation, expr(code == ^code)),
         {:ok, user} <- locked(User, expr(uid == ^invitation.user_uid)),
         {:ok, uid} <- claim(invitation, user, principal.auth_id, email, actor),
         :ok <-
           IdentityToolkit.update(principal.auth_id,
             custom_claims: Claims.default_for(uid),
             email_verified: true
           ) do
      {:ok, %ClaimedAccount{uid: uid}}
    else
      :error -> {:error, not_claimable()}
      {:error, error} -> {:error, error}
    end
  end

  defp account_email(principal) do
    case CanonicalizeNameAndEmail.canonical_email(principal.email) do
      nil -> :error
      email -> {:ok, email}
    end
  end

  defp locked(resource, filter) do
    case resource
         |> Ash.Query.do_filter(filter)
         |> Ash.Query.lock(:for_update)
         |> Ash.read_one(authorize?: false) do
      {:ok, nil} -> :error
      {:ok, record} -> {:ok, record}
      {:error, error} -> {:error, error}
    end
  end

  defp claim(%Invitation{claimed_at: claimed_at}, user, auth_id, _email, _actor)
       when not is_nil(claimed_at) do
    if user.auth_id == auth_id, do: {:ok, user.uid}, else: :error
  end

  defp claim(invitation, user, auth_id, email, actor) do
    cond do
      DateTime.compare(invitation.expires_at, DateTime.utc_now()) != :gt -> :error
      not is_nil(user.auth_id) -> :error
      not is_nil(user.email) and user.email != email -> :error
      true -> link(invitation, user, auth_id, email, actor)
    end
  end

  defp link(invitation, user, auth_id, email, actor) do
    with {:ok, user} <-
           update(user, :claim_account, %{auth_id: auth_id, email: user.email || email}, actor),
         {:ok, _invitation} <- update(invitation, :mark_claimed, %{}, actor) do
      {:ok, user.uid}
    end
  end

  defp update(record, action, input, actor) do
    record
    |> Ash.Changeset.for_update(action, input, actor: actor, authorize?: false)
    |> Ash.update()
  end

  defp not_claimable,
    do: DomainError.exception(code: Codes.invitation_not_claimable(), fields: [:code])
end
