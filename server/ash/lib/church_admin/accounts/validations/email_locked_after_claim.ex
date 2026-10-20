defmodule ChurchAdmin.Accounts.Validations.EmailLockedAfterClaim do
  @moduledoc """
  A user whose Firebase account is linked keeps its email
  (`user/email-locked`): claiming compares that email, and the account owns
  it from then on.
  """

  use Ash.Resource.Validation

  alias ChurchAdmin.Errors.{Codes, DomainError}

  @impl Ash.Resource.Validation
  def validate(changeset, _opts, _context) do
    if changing_email?(changeset) and not is_nil(changeset.data.auth_id) do
      {:error, DomainError.exception(code: Codes.user_email_locked(), fields: [:email])}
    else
      :ok
    end
  end

  @impl Ash.Resource.Validation
  def atomic(changeset, opts, context) do
    if changing_email?(changeset),
      do: {:not_atomic, "the email is checked against the stored claim"},
      else: validate(changeset, opts, context)
  end

  defp changing_email?(changeset) do
    case Ash.Changeset.fetch_change(changeset, :email) do
      {:ok, email} -> email != changeset.data.email
      :error -> false
    end
  end
end
