defmodule ChurchAdmin.Accounts.Validations.GranterHoldsPermission do
  @moduledoc "The actor holds the permission it grants (`user/permission-not-grantable`); the system grants any."

  use Ash.Resource.Validation

  alias ChurchAdmin.Accounts.GrantAuthority
  alias ChurchAdmin.Errors.{Codes, DomainError}

  @impl true
  def validate(changeset, _opts, %{actor: actor}) do
    permission = Ash.Changeset.get_attribute(changeset, :permission)

    if not is_nil(actor) and GrantAuthority.permission_grantable?(actor, permission) do
      :ok
    else
      {:error,
       DomainError.exception(code: Codes.user_permission_not_grantable(), fields: [:permission])}
    end
  end
end
