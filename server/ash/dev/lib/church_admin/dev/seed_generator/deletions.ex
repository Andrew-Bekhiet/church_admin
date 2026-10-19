defmodule ChurchAdmin.Dev.SeedGenerator.Deletions do
  @moduledoc """
  Soft-deletes persons up to the scale's target, starting with members of a group
  and of the primary-school service so deleted persons sit inside services,
  groups, families and area families alike. Persons linked to an account stay
  live, except the one account seeded with a deleted person. A family built to
  pass every data check keeps a live family admin and a live other member.
  """

  alias ChurchAdmin.Dev.SeedGenerator.Clock

  @forced_per_collection 2
  @admin_types [:father, :mother]

  @spec soft_delete([map()], [map()], map(), map(), map(), String.t()) :: [map()]
  def soft_delete(persons, families, service_members, members_by_group, spec, deleted_by) do
    protected =
      MapSet.new(for family <- families, family.live?, is_nil(family.failure), do: family.index)

    eligible = persons |> Enum.filter(&eligible?/1) |> MapSet.new(& &1.id)
    wanted = spec.soft_deleted_persons - Enum.count(persons, &Map.get(&1.row, :deleted_at))

    ordered =
      (forced(members_by_group, service_members, eligible) ++ spaced(persons, eligible, wanted))
      |> Enum.concat(for person <- persons, person.id in eligible, do: person.id)
      |> Enum.uniq()

    by_id = Map.new(persons, &{&1.id, &1})
    deleted_ids = choose(ordered, by_id, live_counts(persons), protected, wanted)

    Enum.map(persons, fn person ->
      case Enum.find_index(deleted_ids, &(&1 == person.id)) do
        nil -> person
        position -> delete(person, position, deleted_by)
      end
    end)
  end

  defp forced(members_by_group, service_members, eligible) do
    in_groups = members_by_group |> Enum.sort() |> Enum.flat_map(&elem(&1, 1))
    in_service = Map.get(service_members, :ebtedaey, [])

    for candidates <- [in_groups, in_service],
        person <-
          candidates |> Enum.filter(&(&1.id in eligible)) |> Enum.take(@forced_per_collection),
        do: person.id
  end

  defp spaced(persons, eligible, wanted) do
    candidates = for person <- persons, person.id in eligible, do: person.id
    candidates |> Enum.take_every(max(div(length(candidates), wanted), 1)) |> Enum.take(wanted)
  end

  defp choose(ordered, by_id, counts, protected, wanted) do
    {chosen, _counts} =
      Enum.reduce_while(ordered, {[], counts}, fn id, {chosen, counts} ->
        person = Map.fetch!(by_id, id)

        cond do
          length(chosen) == wanted -> {:halt, {chosen, counts}}
          not safe?(person, counts, protected) -> {:cont, {chosen, counts}}
          true -> {:cont, {chosen ++ [id], without(counts, person)}}
        end
      end)

    if length(chosen) < wanted,
      do: raise("not enough deletable persons for #{wanted} soft deletions")

    chosen
  end

  defp live_counts(persons) do
    persons
    |> Enum.filter(&(&1.family_index != nil and Map.get(&1.row, :deleted_at) == nil))
    |> Enum.frequencies_by(&{&1.family_index, role(&1)})
  end

  defp safe?(%{family_index: nil}, _counts, _protected), do: true

  defp safe?(person, counts, protected) do
    not MapSet.member?(protected, person.family_index) or
      Map.get(counts, {person.family_index, role(person)}, 0) > 1
  end

  defp without(counts, %{family_index: nil}), do: counts

  defp without(counts, person),
    do: Map.update!(counts, {person.family_index, role(person)}, &(&1 - 1))

  defp role(person), do: if(person.type in @admin_types, do: :admin, else: :member)

  defp eligible?(person) do
    person.user_key == nil and Map.get(person.row, :deleted_at) == nil and
      (person.family_index != nil or person.store_index != nil)
  end

  defp delete(person, position, deleted_by) do
    row =
      Map.merge(person.row, %{deleted_at: Clock.days_ago(position + 1), deleted_by: deleted_by})

    %{person | row: row}
  end
end
