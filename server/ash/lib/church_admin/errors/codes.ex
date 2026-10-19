defmodule ChurchAdmin.Errors.Codes do
  @moduledoc """
  The machine-readable error codes clients handle (`errors[].extensions.code`).
  Each code is a function named after it, `/` and `-` read as `_`
  (`Codes.user_email_taken()` is `"user/email-taken"`), so a mistyped code
  fails to compile. Raise or return them through
  `ChurchAdmin.Errors.DomainError`:

      {:error, DomainError.exception(code: Codes.user_email_taken(), fields: [:email])}

  A new code is added here first.
  """

  @generic_codes ~w(forbidden not_found invalid rate_limited unauthenticated)

  @resources_with_lifecycle_codes ~w(area street store service class group)

  @domain_codes ~w(
    person/not-found person/forbidden person/user-link-not-permitted
    family/not-found family/forbidden family/relation-cycle
    contact/phone-taken contact/main-phone-taken contact/not-owned
    relation/not-found
    validation/invalid
    service/name-taken service/default-meeting-mismatch service/default-meeting-archived
    group/default-meeting-mismatch group/default-meeting-archived
    meeting/service-study-year-mismatch
    street/area-required address/street-outside-area store/admin-family-or-address-required
    attendance/already-recorded attendance/meeting-not-found attendance/meeting-archived
    attendance/audience-mismatch attendance/not-a-servant-of-meeting attendance/not-in-meeting
    user/email-taken user/name-taken user/person-already-linked user/permission-not-grantable
    user/permission-levels-inconsistent user/duplicate-scope user/email-locked
    invitation/scope-required invitation/scope-not-manageable invitation/invalid-expiry
    invitation/not-claimable
    account/already-claimed account/not-claimable
    photo/own-photo-only
    export/forbidden
    person-type/order-taken
  )

  @lifecycle_codes for resource <- @resources_with_lifecycle_codes,
                       reason <- ~w(not-found forbidden in-use),
                       do: "#{resource}/#{reason}"

  @codes @generic_codes ++ @domain_codes ++ @lifecycle_codes

  @spec all() :: [String.t()]
  def all, do: @codes

  for code <- @codes do
    name = code |> String.replace(["/", "-"], "_") |> String.to_atom()

    @spec unquote(name)() :: String.t()
    def unquote(name)(), do: unquote(code)
  end
end
