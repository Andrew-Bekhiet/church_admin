defmodule ChurchAdmin.Operations.StudyYearRoll.Invariants do
  @moduledoc """
  The person invariants a roll must leave intact, checked as set-based
  violation queries after the plan is applied and inside its transaction, so
  a violation rolls every step back. They are the checks the deferred
  `persons_container_check` and `check_persons_service_rel` triggers made at
  the end of the roll, with the same messages:

    * every person keeps a family, store, uid, service or group;
    * every service membership of a person the roll advanced fits the
      service's study year range (an ungraded person or service always fits).
  """

  alias ChurchAdmin.Authz.Actor
  alias ChurchAdmin.Operations.StudyYearRoll.{Failure, Plan}
  alias ChurchAdmin.People.{Person, ServiceMembership}

  require Ash.Query

  @spec check(Plan.t()) :: :ok | {:error, Failure.t()}
  def check(%Plan{} = plan) do
    with :ok <- every_person_has_a_container() do
      memberships_fit_service_ranges(Enum.map(plan.persons, & &1.id))
    end
  end

  defp every_person_has_a_container do
    uncontained? =
      Person
      |> Ash.Query.filter(
        is_nil(family_id) and is_nil(store_id) and is_nil(uid) and
          not exists(service_memberships, true) and not exists(group_memberships, true)
      )
      |> Ash.exists?(actor: Actor.system())

    if uncontained? do
      {:error,
       Failure.exception(
         message: "Person must have at least one of (family, store, service, group, uid)"
       )}
    else
      :ok
    end
  end

  defp memberships_fit_service_ranges([]), do: :ok

  defp memberships_fit_service_ranges(person_ids) do
    ServiceMembership
    |> Ash.Query.filter(
      person_id in ^person_ids and not is_nil(person.study_year_id) and
        not (is_nil(service.study_year_from_id) and is_nil(service.study_year_to_id)) and
        not (not is_nil(service.study_year_from_id) and not is_nil(service.study_year_to_id) and
               service.study_year_from_id <= person.study_year_id and
               service.study_year_to_id >= person.study_year_id)
    )
    |> Ash.Query.sort(person_id: :asc, service_id: :asc)
    |> Ash.read!(actor: Actor.system(), page: false)
    |> case do
      [] ->
        :ok

      violations ->
        {:error,
         Failure.exception(
           message: "Person study_year does not match service study_year_range",
           detail:
             Enum.map_join(
               violations,
               "\n",
               &"person_id: #{&1.person_id} service_id: #{&1.service_id}"
             )
         )}
    end
  end
end
