defmodule ChurchAdmin.Dev.SeedGenerator.People.Linking do
  @moduledoc """
  Puts the accounts whose person lives in a family into a parent slot of a live
  family that passes every data check. The member editor also gets a child in
  the primary-school service, which the editor's service grant reaches.
  """

  @primary_school_study_year 4

  @spec link([map()], [map()]) :: [{map(), [map()]}]
  def link(families, users) do
    members_by_family_index =
      Map.new(families, &{&1.index, Enum.map(&1.members, fn type -> member(type) end)})

    candidates = for family <- families, family.live?, is_nil(family.failure), do: family.index
    family_users = Enum.filter(users, &(&1.kind.person in [:family_admin, :deleted]))

    {members, _used} =
      Enum.reduce(family_users, {members_by_family_index, MapSet.new()}, fn user,
                                                                            {members, used} ->
        index = Enum.find(candidates, &(&1 not in used and fits?(members[&1], user)))
        if index == nil, do: raise("no family fits the seeded user #{user.key}")
        {Map.update!(members, index, &place(&1, user)), MapSet.put(used, index)}
      end)

    Enum.map(families, &{&1, Map.fetch!(members, &1.index)})
  end

  defp member(type), do: %{type: type, user: nil, deleted?: false, force_study_year: nil}

  defp fits?(members, user) do
    parent_type = parent_type(user)

    Enum.any?(members, &(&1.type == parent_type)) and
      (user.key != "family_admin_member_editor" or Enum.any?(members, &child?/1)) and
      (user.kind.person != :deleted or Enum.count(members, &(&1.type in [:father, :mother])) >= 2)
  end

  defp place(members, user) do
    parent_type = parent_type(user)
    parent_position = Enum.find_index(members, &(&1.type == parent_type))

    members =
      List.update_at(
        members,
        parent_position,
        &%{&1 | user: user, deleted?: user.kind.person == :deleted}
      )

    if user.key == "family_admin_member_editor" do
      child_position = Enum.find_index(members, &child?/1)

      List.update_at(
        members,
        child_position,
        &%{&1 | force_study_year: @primary_school_study_year}
      )
    else
      members
    end
  end

  defp parent_type(%{male?: true}), do: :father
  defp parent_type(%{male?: false}), do: :mother

  defp child?(member), do: member.type in [:son, :daughter]
end
