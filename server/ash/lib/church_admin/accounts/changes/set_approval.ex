defmodule ChurchAdmin.Accounts.Changes.SetApproval do
  @moduledoc """
  Grants (`approved?: true`) or revokes the user's `approved` permission.
  Granting one the user already holds keeps the row.
  """

  use Ash.Resource.Change

  import Ash.Expr

  alias ChurchAdmin.Accounts.UserPermission
  alias ChurchAdmin.Changes.AfterActionFailure

  @impl true
  def init(opts) do
    if is_boolean(opts[:approved?]), do: {:ok, opts}, else: {:error, "`approved?` is a boolean"}
  end

  @impl true
  def change(changeset, opts, context) do
    Ash.Changeset.after_action(changeset, fn changeset, user ->
      case set_approval(user, opts[:approved?], context.actor) do
        :ok -> {:ok, user}
        {:error, error} -> AfterActionFailure.roll_back(changeset.resource, error)
      end
    end)
  end

  defp set_approval(user, true, actor) do
    UserPermission
    |> Ash.Changeset.for_create(:create, %{uid: user.uid, permission: "approved"},
      actor: actor,
      authorize?: false,
      upsert?: true,
      upsert_fields: [:permission]
    )
    |> Ash.create()
    |> case do
      {:ok, _permission} -> :ok
      {:error, error} -> {:error, error}
    end
  end

  defp set_approval(user, false, actor) do
    UserPermission
    |> Ash.Query.do_filter(expr(uid == ^user.uid and permission == "approved"))
    |> Ash.bulk_destroy(:destroy, %{}, actor: actor, authorize?: false, return_errors?: true)
    |> case do
      %Ash.BulkResult{status: :success} -> :ok
      %Ash.BulkResult{errors: errors} -> {:error, Ash.Error.to_error_class(errors)}
    end
  end
end
