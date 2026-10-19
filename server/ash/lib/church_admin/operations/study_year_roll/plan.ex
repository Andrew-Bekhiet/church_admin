defmodule ChurchAdmin.Operations.StudyYearRoll.Plan do
  @moduledoc """
  What one roll changes, worked out from a `Snapshot` without touching the
  database: every graded person's next study year, what happens to the
  service memberships they outgrow, the group memberships that leaves
  stranded, each single-year class cohort and each graded servant scope.

  The one domain rule shared by memberships, classes and scopes is
  `outgrows_service?/2`: a cohort whose next study year is past a bounded
  service's last year, or that has no next year at all, leaves that service.
  """

  alias ChurchAdmin.Operations.StudyYearRoll.Snapshot

  defstruct persons: [],
            leaving: [],
            memberships_after_roll: MapSet.new(),
            stranded_group_memberships: [],
            classes: [],
            scopes: []

  @type t :: %__MODULE__{}

  @spec build(Snapshot.t()) :: t()
  def build(%Snapshot{} = snapshot) do
    persons = persons_rolling(snapshot)
    next_year_by_person = Map.new(persons, &{&1.id, &1.next_study_year})
    leaving = memberships_leaving(snapshot, next_year_by_person)
    memberships_after_roll = memberships_after_roll(snapshot, leaving)

    %__MODULE__{
      persons: persons,
      leaving: leaving,
      memberships_after_roll: memberships_after_roll,
      stranded_group_memberships:
        stranded_group_memberships(snapshot, leaving, memberships_after_roll),
      classes: classes_rolling(snapshot),
      scopes: scopes_rolling(snapshot)
    }
  end

  @spec outgrows_service?(integer() | nil, integer() | nil) :: boolean()
  def outgrows_service?(_next_study_year, nil), do: false
  def outgrows_service?(nil, _service_last_study_year), do: true
  def outgrows_service?(next_study_year, last), do: next_study_year > last

  defp persons_rolling(snapshot) do
    for person <- snapshot.persons do
      next_study_year = Map.fetch!(snapshot.ladder, person.study_year_id)

      Map.merge(person, %{
        next_study_year: next_study_year,
        graduating?: is_nil(next_study_year)
      })
    end
  end

  defp memberships_leaving(snapshot, next_year_by_person) do
    leaving =
      for membership <- snapshot.service_memberships,
          Map.has_key?(next_year_by_person, membership.person_id),
          service <- [Map.fetch!(snapshot.services, membership.service_id)],
          outgrows_service?(Map.fetch!(next_year_by_person, membership.person_id), service.to) do
        %{
          rel_id: membership.rel_id,
          person_id: membership.person_id,
          source_service_id: membership.service_id,
          destination_service_id: service.next_service_id
        }
      end

    leaving_rel_ids = MapSet.new(leaving, & &1.rel_id)

    held_after_leaving =
      for membership <- snapshot.service_memberships,
          not MapSet.member?(leaving_rel_ids, membership.rel_id),
          into: MapSet.new(),
          do: {membership.person_id, membership.service_id}

    leaving
    |> Enum.group_by(&{&1.person_id, &1.destination_service_id})
    |> Enum.flat_map(fn {destination, arrivals} ->
      already_held? = MapSet.member?(held_after_leaving, destination)

      arrivals
      |> Enum.sort_by(& &1.rel_id)
      |> Enum.with_index(1)
      |> Enum.map(fn {arrival, rank} ->
        Map.put(arrival, :action, leaving_action(arrival, already_held? or rank > 1))
      end)
    end)
  end

  defp leaving_action(%{destination_service_id: nil}, _converges?), do: :drop
  defp leaving_action(_arrival, true), do: :dedupe
  defp leaving_action(_arrival, false), do: :move

  defp memberships_after_roll(snapshot, leaving) do
    leaving_rel_ids = MapSet.new(leaving, & &1.rel_id)

    staying =
      for membership <- snapshot.service_memberships,
          not MapSet.member?(leaving_rel_ids, membership.rel_id),
          do: {membership.person_id, membership.service_id}

    moved =
      for %{action: :move} = moving <- leaving,
          do: {moving.person_id, moving.destination_service_id}

    MapSet.new(staying ++ moved)
  end

  defp stranded_group_memberships(snapshot, leaving, memberships_after_roll) do
    left = MapSet.new(leaving, &{&1.person_id, &1.source_service_id})

    for membership <- snapshot.group_memberships,
        key <- [{membership.person_id, membership.group_service_id}],
        MapSet.member?(left, key),
        not MapSet.member?(memberships_after_roll, key),
        do: membership
  end

  defp classes_rolling(snapshot) do
    for class <- snapshot.classes,
        service <- [Map.fetch!(snapshot.services, class.service_id)],
        next_study_year <- [Map.fetch!(snapshot.ladder, class.study_year)],
        next_service_first_study_year <- [first_study_year(snapshot, service.next_service_id)],
        action <- [
          class_action(
            outgrows_service?(next_study_year, service.to),
            service.next_service_id,
            next_service_first_study_year,
            next_study_year
          )
        ],
        action != nil do
      %{
        id: class.id,
        action: action,
        next_study_year: next_study_year,
        next_service_id: service.next_service_id,
        next_service_first_study_year: next_service_first_study_year
      }
    end
  end

  defp first_study_year(_snapshot, nil), do: nil
  defp first_study_year(snapshot, service_id), do: Map.fetch!(snapshot.services, service_id).from

  defp class_action(true, next_service_id, nil, _next_study_year)
       when not is_nil(next_service_id),
       do: :delete

  defp class_action(true, next_service_id, _first, next_study_year)
       when not is_nil(next_service_id) and not is_nil(next_study_year),
       do: :relocate

  defp class_action(false, _next_service_id, _first, next_study_year)
       when not is_nil(next_study_year),
       do: :advance

  defp class_action(_outgrows?, _next_service_id, _first, _next_study_year), do: nil

  defp scopes_rolling(snapshot) do
    for scope <- snapshot.scope_grants do
      service = Map.fetch!(snapshot.services, scope.service_id)
      next_study_year = Map.fetch!(snapshot.ladder, scope.study_year)

      study_year_after_roll =
        if not is_nil(next_study_year) and not outgrows_service?(next_study_year, service.to),
          do: next_study_year,
          else: service.from

      %{permission_id: scope.permission_id, study_year_after_roll: study_year_after_roll}
    end
  end
end
