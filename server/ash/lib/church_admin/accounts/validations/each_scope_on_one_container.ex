defmodule ChurchAdmin.Accounts.Validations.EachScopeOnOneContainer do
  @moduledoc "Every scope in the `admin_on` argument names exactly one service, group or area."

  use Ash.Resource.Validation

  alias ChurchAdmin.Accounts.GrantAuthority
  alias ChurchAdmin.Errors.{Codes, DomainError}

  @impl Ash.Resource.Validation
  def validate(changeset, _opts, _context) do
    scopes = Ash.Changeset.get_argument(changeset, :admin_on) || []

    if Enum.all?(
         scopes,
         &match?({:ok, _kind, _id}, GrantAuthority.container(Map.from_struct(&1)))
       ) do
      :ok
    else
      {:error,
       DomainError.exception(code: Codes.invitation_scope_required(), fields: [:admin_on])}
    end
  end

  @impl Ash.Resource.Validation
  def atomic(changeset, opts, context), do: validate(changeset, opts, context)
end
