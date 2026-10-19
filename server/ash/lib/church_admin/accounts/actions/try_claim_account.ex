defmodule ChurchAdmin.Accounts.Actions.TryClaimAccount do
  @moduledoc """
  Claims the user seeded with the signed-in account's verified email, when
  claiming by email is enabled (`:account_claiming_by_email?` config), and
  gives the account that user's claims. The email and its verification come
  fresh from Firebase, since the ID token's can be stale.
  """

  use Ash.Resource.Actions.Implementation

  import Ash.Expr

  alias ChurchAdmin.Accounts.{Claims, ClaimedAccount, User}
  alias ChurchAdmin.Accounts.Changes.CanonicalizeNameAndEmail
  alias ChurchAdmin.Errors.{Codes, DomainError}
  alias ChurchAdmin.Google.IdentityToolkit
  alias ChurchAdmin.Google.IdentityToolkit.Account

  @impl true
  def run(_input, _opts, %{actor: %{principal: principal} = actor}) do
    with :ok <- claiming_enabled(),
         {:ok, email} <- verified_email(principal.auth_id),
         :ok <- not_claimed_yet(principal),
         {:ok, user} <- claimable_user(email),
         {:ok, user} <- link(user, principal.auth_id, actor),
         :ok <-
           IdentityToolkit.update(principal.auth_id, custom_claims: Claims.default_for(user.uid)) do
      {:ok, %ClaimedAccount{uid: user.uid}}
    end
  end

  defp claiming_enabled do
    if Application.get_env(:church_admin, :account_claiming_by_email?, false),
      do: :ok,
      else: error(Codes.account_not_claimable())
  end

  defp verified_email(auth_id) do
    case IdentityToolkit.lookup_by_uid(auth_id) do
      {:ok, %Account{email_verified: true, email: email}} when is_binary(email) -> {:ok, email}
      {:ok, %Account{email_verified: true}} -> error(Codes.account_not_claimable())
      {:ok, %Account{}} -> error(Codes.unauthenticated())
      {:error, error} -> {:error, error}
    end
  end

  defp not_claimed_yet(%{uid: uid}) when is_binary(uid),
    do: error(Codes.account_already_claimed())

  defp not_claimed_yet(%{auth_id: auth_id}) do
    if User |> Ash.Query.do_filter(expr(auth_id == ^auth_id)) |> Ash.exists?(authorize?: false),
      do: error(Codes.account_already_claimed()),
      else: :ok
  end

  defp claimable_user(email) do
    canonical = CanonicalizeNameAndEmail.canonical_email(email)

    User
    |> Ash.Query.do_filter(expr(email == ^canonical))
    |> Ash.Query.lock(:for_update)
    |> Ash.read_one(authorize?: false)
    |> case do
      {:ok, %User{auth_id: nil} = user} -> {:ok, user}
      {:ok, _none_or_linked_elsewhere} -> error(Codes.account_not_claimable())
      {:error, error} -> {:error, error}
    end
  end

  defp link(user, auth_id, actor) do
    user
    |> Ash.Changeset.for_update(:claim_account, %{auth_id: auth_id},
      actor: actor,
      authorize?: false
    )
    |> Ash.update()
  end

  defp error(code), do: {:error, DomainError.exception(code: code)}
end
