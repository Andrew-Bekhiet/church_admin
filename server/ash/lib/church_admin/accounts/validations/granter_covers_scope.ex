defmodule ChurchAdmin.Accounts.Validations.GranterCoversScope do
  @moduledoc """
  The actor may hand out the scope it grants
  (`invitation/scope-not-manageable`, rules in
  `ChurchAdmin.Accounts.GrantAuthority`).
  """

  use Ash.Resource.Validation

  alias ChurchAdmin.Accounts.{AdminOn, GrantAuthority}
  alias ChurchAdmin.Errors.{Codes, DomainError}

  @impl true
  def validate(changeset, _opts, %{actor: actor}) do
    scope = Map.new(AdminOn.field_names(), &{&1, Ash.Changeset.get_attribute(changeset, &1)})

    if not is_nil(actor) and GrantAuthority.scope_manageable?(actor, scope) do
      :ok
    else
      {:error,
       DomainError.exception(code: Codes.invitation_scope_not_manageable(), fields: [:admin_on])}
    end
  end
end
