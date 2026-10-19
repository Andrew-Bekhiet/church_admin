defmodule ChurchAdmin.Dev.SeedGenerator.Contacts do
  @moduledoc """
  Phone contacts: a main phone per adult or teenager, secondary phones, and
  unclaimed family-owned contacts for a parent role the family has no member in.
  The insertion triggers claim an unclaimed contact for a family's only member of
  a role, so unclaimed ones are only written where the live count is not one.
  """

  alias ChurchAdmin.Dev.SeedGenerator.{Ids, Sql}

  @unclaimed_share 0.1
  @prefixes ~w(10 11 12 15)
  @labels [nil, "موبايل", "واتساب", "المنزل", "العمل"]
  @parent_types [{:father, "أب"}, {:mother, "أم"}]

  @spec build([map()], [map()], map()) :: [map()]
  def build(persons, families, spec) do
    contactable = Enum.filter(persons, &contactable?/1)

    mains =
      contactable
      |> Enum.with_index()
      |> Enum.map(fn {person, number} -> owned(person, number, true) end)

    unclaimed =
      persons
      |> unclaimed_targets(families)
      |> Enum.take(trunc(spec.contacts * @unclaimed_share))
      |> Enum.with_index()
      |> Enum.map(fn {{family, {_type, name}}, number} ->
        unclaimed(family, name, number, mains)
      end)

    extras_needed = spec.contacts - length(mains) - length(unclaimed)

    if extras_needed < 0,
      do: raise("seed contacts target #{spec.contacts} is below the mandatory contacts")

    extras = extras(contactable, extras_needed, length(mains))

    (mains ++ unclaimed ++ extras)
    |> Enum.with_index()
    |> Enum.map(fn {contact, number} -> Map.put(contact, :id, Ids.uuid("contact", number)) end)
  end

  defp contactable?(person),
    do:
      person.type in [nil, :father, :mother, :grandfather, :grandmother] or
        (person.study_year || 0) >= 9

  defp owned(person, number, main?) do
    %{
      person_id: person.id,
      label: Enum.at(@labels, rem(number, length(@labels))),
      phone: phone(number),
      is_main_phone: main?
    }
  end

  defp extras(_contactable, 0, _offset), do: []

  defp extras(contactable, count, offset) do
    contactable
    |> Stream.cycle()
    |> Enum.take(count)
    |> Enum.with_index()
    |> Enum.map(fn {person, position} -> owned(person, offset + position + 1, false) end)
  end

  defp unclaimed_targets(persons, families) do
    live_counts =
      persons
      |> Enum.filter(&(&1.family_index != nil and Map.get(&1.row, :deleted_at) == nil))
      |> Enum.frequencies_by(&{&1.family_index, &1.type})

    for family <- families,
        family.live?,
        {type, name} <- @parent_types,
        Map.get(live_counts, {family.index, type}, 0) != 1 do
      {family, {type, name}}
    end
  end

  defp unclaimed(family, type_name, number, mains) do
    duplicate = if rem(number, 4) == 0, do: Enum.at(mains, rem(number * 3, length(mains)))

    %{
      family_id: family.id,
      person_type_id: Sql.person_type(type_name),
      label: Enum.at(@labels, rem(number, length(@labels))),
      phone: if(duplicate, do: duplicate.phone, else: phone(50_000_000 + number)),
      is_main_phone: true
    }
  end

  defp phone(number) do
    prefix = Enum.at(@prefixes, rem(number, length(@prefixes)))

    digits =
      number
      |> Kernel.*(7919)
      |> rem(100_000_000)
      |> Integer.to_string()
      |> String.pad_leading(8, "0")

    "+20#{prefix}#{digits}"
  end
end
