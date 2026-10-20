defmodule ChurchAdmin.Accounts.Validations.GrantsWithinActorAuthority do
  @moduledoc """
  The checks the old `createUser` function ran before writing, in its order:
  the actor holds every requested permission (`user/permission-not-grantable`);
  unless it holds `manageAllUsers`, it hands out at least one scope
  (`invitation/scope-required`) and manages every one of them
  (`invitation/scope-not-manageable`, rules in
  `ChurchAdmin.Accounts.GrantAuthority`).
  """

  use Ash.Resource.Validation

  alias ChurchAdmin.Accounts.GrantAuthority
  alias ChurchAdmin.Authz.Actor
  alias ChurchAdmin.Errors.{Codes, DomainError}

  @impl Ash.Resource.Validation
  def validate(changeset, _opts, %{actor: actor}) do
    permissions = Ash.Changeset.get_argument(changeset, :permissions) || []

    scopes =
      (Ash.Changeset.get_argument(changeset, :admin_on) || []) |> Enum.map(&Map.from_struct/1)

    cond do
      not Enum.all?(permissions, &GrantAuthority.permission_grantable?(actor, &1)) ->
        error(Codes.user_permission_not_grantable(), :permissions)

      manages_all_users?(actor) ->
        :ok

      scopes == [] ->
        error(Codes.invitation_scope_required(), :admin_on)

      not Enum.all?(scopes, &GrantAuthority.scope_manageable?(actor, &1)) ->
        error(Codes.invitation_scope_not_manageable(), :admin_on)

      true ->
        :ok
    end
  end

  defp manages_all_users?(%Actor{system?: true}), do: true
  defp manages_all_users?(actor), do: Actor.holds?(actor, "manageAllUsers")

  defp error(code, field), do: {:error, DomainError.exception(code: code, fields: [field])}
end
