defmodule ChurchAdmin.Accounts.Changes.ManageGrants do
  @moduledoc """
  Makes the user's permissions and scopes what the `permissions` and
  `admin_on` arguments say. A create inserts them all; an update keeps the
  rows the user already holds, inserts the new ones and deletes the rest. A
  nil argument leaves that side untouched.

  A requested scope keeps a held row with the same container, restrictions
  and flags (an unset flag reads as false), so an unchanged scope keeps its
  `permission_id` and writes no edit history.

  The child writes skip policies (the command's policy covers them) but run
  their own validations with the actor.
  """

  use Ash.Resource.Change

  alias ChurchAdmin.Accounts.AdminOn

  @restrictions [
    :admin_on_service,
    :admin_on_group,
    :admin_on_area,
    :service_study_year,
    :service_gender
  ]

  @impl true
  def change(changeset, _opts, _context) do
    changeset
    |> manage(:permissions, Ash.Changeset.get_argument(changeset, :permissions))
    |> manage(:scope_grants, Ash.Changeset.get_argument(changeset, :admin_on))
  end

  defp manage(changeset, _relationship, nil), do: changeset

  defp manage(%{action_type: :create} = changeset, relationship, requested) do
    Ash.Changeset.manage_relationship(
      changeset,
      relationship,
      new_rows(relationship, requested),
      type: :create,
      authorize?: false
    )
  end

  defp manage(changeset, relationship, requested) do
    Ash.Changeset.manage_relationship(
      changeset,
      relationship,
      keyed_rows(relationship, requested, changeset.data),
      type: :direct_control,
      on_match: :ignore,
      use_identities: [:_primary_key],
      authorize?: false
    )
  end

  defp new_rows(:permissions, names), do: names |> Enum.uniq() |> Enum.map(&%{permission: &1})

  defp new_rows(:scope_grants, scopes) do
    Enum.map(scopes, fn scope ->
      scope |> Map.from_struct() |> Map.reject(fn {_field, value} -> is_nil(value) end)
    end)
  end

  defp keyed_rows(:permissions, names, user),
    do: names |> Enum.uniq() |> Enum.map(&%{uid: user.uid, permission: &1})

  defp keyed_rows(:scope_grants, scopes, user) do
    held = Ash.load!(user, :scope_grants, authorize?: false).scope_grants

    {rows, _unmatched} =
      Enum.map_reduce(new_rows(:scope_grants, scopes), held, fn scope, unmatched ->
        case Enum.split_with(unmatched, &same_scope?(&1, scope)) do
          {[match | others], rest} ->
            {Map.put(scope, :permission_id, match.permission_id), others ++ rest}

          {[], _} ->
            {scope, unmatched}
        end
      end)

    rows
  end

  defp same_scope?(grant, scope) do
    Enum.all?(AdminOn.field_names(), fn field ->
      if field in @restrictions do
        Map.get(grant, field) == Map.get(scope, field)
      else
        (Map.get(grant, field) || false) == (Map.get(scope, field) || false)
      end
    end)
  end
end
