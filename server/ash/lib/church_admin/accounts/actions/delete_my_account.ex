defmodule ChurchAdmin.Accounts.Actions.DeleteMyAccount do
  @moduledoc """
  Deletes the signed-in Firebase account. Its user, if any, is released
  first in the same transaction: its permissions and scopes are deleted and
  its `auth_id` cleared, while the user row and its person stay, because
  permissions hang off the uid. A Firebase failure rolls the release back;
  an account Firebase no longer knows counts as deleted.
  """

  use Ash.Resource.Actions.Implementation

  import Ash.Expr

  alias ChurchAdmin.Accounts.{ScopeGrant, User, UserPermission}
  alias ChurchAdmin.Google.{Error, IdentityToolkit}

  @impl true
  def run(_input, _opts, %{actor: %{principal: principal} = actor}) do
    with :ok <- release(principal.auth_id, actor),
         :ok <- delete_firebase_account(principal.auth_id) do
      {:ok, true}
    end
  end

  defp release(auth_id, actor) do
    case User
         |> Ash.Query.do_filter(expr(auth_id == ^auth_id))
         |> Ash.read_one(authorize?: false) do
      {:ok, nil} -> :ok
      {:ok, user} -> release_user(user, actor)
      {:error, error} -> {:error, error}
    end
  end

  defp release_user(user, actor) do
    with :ok <- destroy_all(UserPermission, user.uid, actor),
         :ok <- destroy_all(ScopeGrant, user.uid, actor),
         {:ok, _user} <-
           user
           |> Ash.Changeset.for_update(:release_account, %{}, actor: actor, authorize?: false)
           |> Ash.update() do
      :ok
    end
  end

  defp destroy_all(resource, uid, actor) do
    resource
    |> Ash.Query.do_filter(expr(uid == ^uid))
    |> Ash.bulk_destroy(:destroy, %{},
      actor: actor,
      authorize?: false,
      return_errors?: true,
      notify?: true
    )
    |> case do
      %Ash.BulkResult{status: :success} -> :ok
      %Ash.BulkResult{errors: errors} -> {:error, Ash.Error.to_error_class(errors)}
    end
  end

  defp delete_firebase_account(auth_id) do
    case IdentityToolkit.delete(auth_id) do
      :ok -> :ok
      {:error, %Error{reason: :not_found}} -> :ok
      {:error, error} -> {:error, error}
    end
  end
end
