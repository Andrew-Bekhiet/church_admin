defmodule ChurchAdmin.Accounts.Changes.PermissionLevelsConsistent do
  @moduledoc """
  Permissions granted by the command keep their prerequisites
  (`user/permission-levels-inconsistent`): `manageAllUsers` needs
  `writeAllData` and `readAllData`, `writeAllData` needs `readAllData`.
  Checked on the user's permissions once the command wrote them, and only
  for permissions it added, so a user already holding a broken set can still
  be edited.
  """

  use Ash.Resource.Change

  import Ash.Expr

  alias ChurchAdmin.Accounts.UserPermission
  alias ChurchAdmin.Changes.AfterActionFailure
  alias ChurchAdmin.Errors.{Codes, DomainError}

  @prerequisites %{
    "manageAllUsers" => ["writeAllData", "readAllData"],
    "writeAllData" => ["readAllData"]
  }

  @impl true
  def change(changeset, _opts, _context) do
    held_before = if changeset.action_type == :create, do: [], else: names(changeset.data.uid)

    Ash.Changeset.after_action(changeset, fn changeset, user ->
      held = names(user.uid)

      if consistent?(held -- held_before, held) do
        {:ok, user}
      else
        AfterActionFailure.roll_back(changeset.resource, inconsistent())
      end
    end)
  end

  defp consistent?(granted, held) do
    Enum.all?(granted, fn permission ->
      Enum.all?(Map.get(@prerequisites, permission, []), &(&1 in held))
    end)
  end

  defp names(uid) do
    UserPermission
    |> Ash.Query.do_filter(expr(uid == ^uid))
    |> Ash.read!(authorize?: false, page: false)
    |> Enum.map(& &1.permission)
  end

  defp inconsistent,
    do:
      DomainError.exception(
        code: Codes.user_permission_levels_inconsistent(),
        fields: [:permissions]
      )
end
