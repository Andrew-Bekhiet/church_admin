defmodule ChurchAdmin.Dev.SeedGenerator.People.Plan do
  @moduledoc """
  Grows or trims the families' child lists until the planned family members add
  up to the target, leaving the families that are built to fail a check intact.
  """

  @children [:son, :daughter]

  @spec fit([map()], integer()) :: [map()]
  def fit(families, target) do
    total = families |> Enum.map(&length(&1.members)) |> Enum.sum()

    cond do
      total < target -> grow(families, target - total)
      total > target -> shrink(families, total - target)
      true -> families
    end
  end

  defp grow(families, missing) do
    growable = for family <- families, family.failure != :no_non_admin_member, do: family.index
    extra = growable |> Stream.cycle() |> Enum.take(missing) |> Enum.frequencies()

    Enum.map(families, fn family ->
      count = Map.get(extra, family.index, 0)

      children =
        for position <- 1..count//1, do: Enum.at(@children, rem(family.index + position, 2))

      %{family | members: family.members ++ children}
    end)
  end

  defp shrink(families, 0), do: families

  defp shrink(families, excess) do
    removable = for family <- families, removable_children?(family), do: family.index
    if removable == [], do: raise("seed member plan cannot shrink by #{excess} more persons")

    dropping = removable |> Enum.take(excess) |> MapSet.new()

    families
    |> Enum.map(fn family ->
      if family.index in dropping,
        do: %{family | members: drop_last_child(family.members)},
        else: family
    end)
    |> shrink(excess - MapSet.size(dropping))
  end

  defp removable_children?(family) do
    family.failure != :no_non_admin_member and Enum.count(family.members, &(&1 in @children)) > 1
  end

  defp drop_last_child(members) do
    position = members |> Enum.reverse() |> Enum.find_index(&(&1 in @children))
    List.delete_at(members, length(members) - 1 - position)
  end
end
