defmodule ChurchAdmin.Accounts.Validations.ExpiresWithinThirtyDays do
  @moduledoc """
  An invitation expires after it was created and at most 30 days later
  (`invitation/invalid-expiry`), the bounds of the
  `invitations_expiry_after_creation` and `_within_thirty_days` checks.
  """

  use Ash.Resource.Validation

  alias ChurchAdmin.Errors.{Codes, DomainError}

  @max_validity_seconds 30 * 24 * 60 * 60

  @impl Ash.Resource.Validation
  def validate(changeset, _opts, _context) do
    created_at = Ash.Changeset.get_attribute(changeset, :created_at) || DateTime.utc_now()

    case Ash.Changeset.get_attribute(changeset, :expires_at) do
      nil ->
        :ok

      expires_at ->
        seconds = DateTime.diff(expires_at, created_at, :microsecond) / 1_000_000

        if seconds > 0 and seconds <= @max_validity_seconds,
          do: :ok,
          else:
            {:error,
             DomainError.exception(code: Codes.invitation_invalid_expiry(), fields: [:expires_at])}
    end
  end
end
