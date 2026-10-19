defmodule ChurchAdmin.Dev.SeedGenerator.Memberships do
  @moduledoc """
  Which persons belong to which services and groups. Children go to the service
  covering their study year; a few are then moved to a study year outside their
  service's range, a state the insertion check rejects but a later year roll
  leaves behind.
  """

  alias ChurchAdmin.Dev.SeedGenerator.{Ids, Rng, Services}

  @enrolment_probability 0.92
  @second_service_probability 0.12

  @type t :: %{
          persons: [map()],
          persons_services: [map()],
          service_members: %{atom() => [map()]},
          outside_range_person_ids: MapSet.t()
        }

  @spec services([map()], map()) :: t()
  def services(persons, spec) do
    enrolments = Enum.map(persons, &{&1, enrolled_services(&1)})
    outsiders = outside_range_person_ids(enrolments, spec.persons_outside_service_range)
    persons = Enum.map(persons, &move_outside_range(&1, outsiders))
    by_id = Map.new(persons, &{&1.id, &1})

    pairs =
      for {person, slugs} <- enrolments, slug <- slugs, do: {Map.fetch!(by_id, person.id), slug}

    %{
      persons: persons,
      persons_services: Enum.map(pairs, &persons_service/1),
      service_members: pairs |> Enum.group_by(&elem(&1, 1), &elem(&1, 0)),
      outside_range_person_ids: outsiders
    }
  end

  @spec groups([map()], t()) :: %{rows: [map()], by_group: %{String.t() => [map()]}}
  def groups(groups, memberships) do
    by_group =
      Map.new(groups, fn group ->
        candidates =
          memberships.service_members
          |> Map.get(group.service_slug, [])
          |> Enum.reject(&MapSet.member?(memberships.outside_range_person_ids, &1.id))
          |> Enum.shuffle()

        {group.id, Enum.take(candidates, Rng.int(10, 25))}
      end)

    rows =
      for {group_id, members} <- by_group, member <- members do
        %{
          person_id: member.id,
          group_id: group_id,
          rel_id: Ids.uuid("persons_group", "#{member.id}:#{group_id}")
        }
      end

    %{rows: Enum.sort_by(rows, & &1.rel_id), by_group: by_group}
  end

  defp enrolled_services(%{user_key: user_key} = person) when user_key != nil do
    if Rng.chance?(0.5) or person.type == nil, do: [:ebtedaey, :edad_khodam], else: [:ebtedaey]
  end

  defp enrolled_services(%{type: type} = person) when type in [:son, :daughter] do
    cond do
      person.study_year == nil ->
        if Rng.chance?(0.3), do: [Rng.pick(Services.bounded()).slug], else: []

      not Rng.chance?(@enrolment_probability) ->
        []

      true ->
        child_services(person.study_year)
    end
  end

  defp enrolled_services(%{store_index: store_index}) when store_index != nil, do: []

  defp enrolled_services(%{row: %{is_servant: true}}),
    do: [Rng.pick(Services.bounded()).slug | if(Rng.chance?(0.5), do: [:edad_khodam], else: [])]

  defp enrolled_services(_adult), do: if(Rng.chance?(0.08), do: [:gam3a_wa_khrigeen], else: [])

  defp child_services(study_year) do
    first = if study_year >= 13, do: :gam3a, else: Services.containing_study_year(study_year).slug
    if Rng.chance?(@second_service_probability), do: [first, :gam3a_wa_khrigeen], else: [first]
  end

  defp outside_range_person_ids(enrolments, count) do
    eligible =
      for {person, [slug | _]} <- enrolments,
          person.study_year != nil,
          Services.fetch!(slug).range != nil,
          do: person.id

    step = div(length(eligible), count)
    eligible |> Enum.take_every(step) |> Enum.take(count) |> MapSet.new()
  end

  defp move_outside_range(person, outsiders) do
    if MapSet.member?(outsiders, person.id) do
      study_year =
        if person.study_year + 8 <= 17, do: person.study_year + 8, else: person.study_year - 8

      %{person | study_year: study_year, row: %{person.row | study_year_id: study_year}}
    else
      person
    end
  end

  defp persons_service({person, slug}) do
    service_id = Ids.seed_service(slug)

    %{
      person_id: person.id,
      service_id: service_id,
      rel_id: Ids.uuid("persons_service", "#{person.id}:#{service_id}")
    }
  end
end
