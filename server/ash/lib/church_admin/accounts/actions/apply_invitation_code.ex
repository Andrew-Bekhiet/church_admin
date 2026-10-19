defmodule ChurchAdmin.Accounts.Actions.ApplyInvitationCode do
  @moduledoc """
  Claims the invited user for the signed-in Firebase account and gives the
  account that user's claims, marking its email verified. Every failure to
  claim is `invitation/not-claimable`, so the code is no oracle.
  """

  use Ash.Resource.Actions.Implementation

  alias ChurchAdmin.Accounts.{Claims, ClaimedAccount, InvitationCode}
  alias ChurchAdmin.Errors.{Codes, DomainError}
  alias ChurchAdmin.Google.IdentityToolkit

  @impl true
  def run(input, _opts, %{actor: %{principal: principal}}) do
    with {:ok, code} <- InvitationCode.normalize(input.arguments.code),
         {:ok, uid} <- claim(code, principal),
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

  defp claim(_code, %{email: nil}), do: :error

  defp claim(code, principal) do
    case ChurchAdmin.Repo.query!(
           "select uid::text from auth.claim_invitation($1, $2, $3)",
           [code, principal.auth_id, principal.email]
         ) do
      %{rows: [[uid]]} -> {:ok, uid}
      %{rows: []} -> :error
    end
  end

  defp not_claimable,
    do: DomainError.exception(code: Codes.invitation_not_claimable(), fields: [:code])
end
