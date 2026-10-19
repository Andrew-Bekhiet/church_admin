defmodule ChurchAdmin.Operations.StudyYearRoll.Blockers do
  @moduledoc """
  The problems that stop a roll before it changes anything, one entry per
  problem, in report order: `next_service_id` cycles [E7], routes into a
  soft-deleted service that something would take [E14], persons who would
  lose their last connection [C8], class relocations onto the wrong grade
  [C9] [E8], and memberships moving into a service whose study year range
  excludes the person's next year.
  """

  alias ChurchAdmin.Operations.StudyYearRoll.{Plan, Snapshot}

  @type blocker :: %{issue_code: String.t(), detail: String.t()}

  @spec find(Snapshot.t(), Plan.t()) :: [blocker()]
  def find(%Snapshot{} = snapshot, %Plan{} = plan) do
    Enum.concat([
      next_service_cycles(snapshot),
      routes_into_deleted_services(snapshot, plan),
      persons_losing_last_connection(snapshot, plan),
      class_placement_mismatches(plan),
      person_placement_mismatches(snapshot, plan)
    ])
  end

  defp next_service_cycles(snapshot) do
    limit = map_size(snapshot.services)

    for {service_id, %{next_service_id: next}} <- snapshot.services,
        not is_nil(next),
        returns_to_start?(snapshot.services, service_id, next, limit) do
      blocker("next_service_cycle", "service #{service_id} is part of a next_service_id cycle")
    end
  end

  defp returns_to_start?(_services, start, start, _steps_left), do: true
  defp returns_to_start?(_services, _start, nil, _steps_left), do: false
  defp returns_to_start?(_services, _start, _current, 0), do: false

  defp returns_to_start?(services, start, current, steps_left) do
    case Map.fetch(services, current) do
      {:ok, %{next_service_id: next}} -> returns_to_start?(services, start, next, steps_left - 1)
      :error -> false
    end
  end

  defp routes_into_deleted_services(snapshot, plan) do
    sources_leaving = MapSet.new(plan.leaving, & &1.source_service_id)

    relocation_targets =
      for %{action: :relocate} = class <- plan.classes,
          into: MapSet.new(),
          do: class.next_service_id

    for {source_id, %{next_service_id: destination_id}} <- snapshot.services,
        not is_nil(destination_id),
        snapshot.services[destination_id].deleted?,
        MapSet.member?(sources_leaving, source_id) or
          MapSet.member?(relocation_targets, destination_id) do
      blocker(
        "next_service_deleted",
        "service #{source_id} routes to soft-deleted service #{destination_id}"
      )
    end
  end

  defp persons_losing_last_connection(snapshot, plan) do
    persons_with_service_after_roll = MapSet.new(plan.memberships_after_roll, &elem(&1, 0))
    stranded = MapSet.new(plan.stranded_group_memberships, & &1.rel_id)

    persons_keeping_a_group =
      for membership <- snapshot.group_memberships,
          not MapSet.member?(stranded, membership.rel_id),
          into: MapSet.new(),
          do: membership.person_id

    for person <- plan.persons,
        is_nil(person.family_id) and is_nil(person.store_id) and is_nil(person.uid),
        not MapSet.member?(persons_with_service_after_roll, person.id),
        not MapSet.member?(persons_keeping_a_group, person.id) do
      blocker(
        "person_loses_last_connection",
        "person #{person.id} would keep no service, group, family, store or uid"
      )
    end
  end

  defp class_placement_mismatches(plan) do
    for %{action: :relocate} = class <- plan.classes,
        class.next_service_first_study_year != class.next_study_year do
      blocker(
        "class_placement_mismatch",
        "class #{class.id} moves to service #{class.next_service_id} whose first year " <>
          "#{class.next_service_first_study_year} does not match its cohort year #{class.next_study_year}"
      )
    end
  end

  defp person_placement_mismatches(snapshot, plan) do
    next_year_by_person = Map.new(plan.persons, &{&1.id, &1.next_study_year})

    plan.leaving
    |> Enum.filter(&(&1.action == :move))
    |> Enum.map(fn moving ->
      destination = Map.fetch!(snapshot.services, moving.destination_service_id)
      {moving.destination_service_id, destination, next_year_by_person[moving.person_id]}
    end)
    |> Enum.filter(fn {_id, destination, next_study_year} ->
      outside_range?(next_study_year, destination.from, destination.to)
    end)
    |> Enum.frequencies()
    |> Enum.map(fn {{destination_id, destination, next_study_year}, count} ->
      blocker(
        "person_placement_mismatch",
        "#{count} person(s) move to service #{destination_id} whose study year range " <>
          "#{destination.from}-#{destination.to} excludes year #{next_study_year}"
      )
    end)
  end

  defp outside_range?(nil, _from, _to), do: false
  defp outside_range?(_next_study_year, nil, _to), do: false
  defp outside_range?(next_study_year, from, _to) when next_study_year < from, do: true
  defp outside_range?(_next_study_year, _from, nil), do: false
  defp outside_range?(next_study_year, _from, to), do: next_study_year > to

  defp blocker(issue_code, detail), do: %{issue_code: issue_code, detail: detail}
end
