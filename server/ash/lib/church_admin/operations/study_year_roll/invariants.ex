defmodule ChurchAdmin.Operations.StudyYearRoll.Invariants do
  @moduledoc """
  The person invariants a roll must leave intact on the rows it writes,
  checked as set-based violation queries after the plan is applied and
  inside its transaction, so a violation rolls every step back. They are the
  checks the deferred `persons_container_check` and `check_persons_service_rel`
  triggers made on the roll's own writes, with the same messages:

    * every person the roll updated keeps a family, store, uid, service or
      group;
    * every service membership the roll inserted fits the service's study
      year range (an ungraded person or service always fits).

  Violations among rows the roll did not write never fail it.
  """

  alias ChurchAdmin.Authz.Actor
  alias ChurchAdmin.Operations.StudyYearRoll.{Failure, Plan}
  alias ChurchAdmin.People.{Person, ServiceMembership}

  require Ash.Query

  @type written :: %{
          person_ids: [Ecto.UUID.t()],
          service_memberships: [{person_id :: Ecto.UUID.t(), service_id :: Ecto.UUID.t()}]
        }

  @spec written_by(Plan.t()) :: written()
  def written_by(%Plan{} = plan) do
    %{
      person_ids: Enum.map(plan.persons, & &1.id),
      service_memberships:
        for(
          %{action: :move} = moving <- plan.leaving,
          do: {moving.person_id, moving.destination_service_id}
        )
    }
  end

  @spec check(written()) :: :ok | {:error, Failure.t()}
  def check(%{person_ids: person_ids, service_memberships: service_memberships}) do
    with :ok <- updated_persons_keep_a_container(person_ids) do
      inserted_memberships_fit_service_ranges(service_memberships)
    end
  end

  defp updated_persons_keep_a_container([]), do: :ok

  defp updated_persons_keep_a_container(person_ids) do
    uncontained? =
      Person
      |> Ash.Query.filter(
        id in ^person_ids and is_nil(family_id) and is_nil(store_id) and is_nil(uid) and
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

  defp inserted_memberships_fit_service_ranges([]), do: :ok

  defp inserted_memberships_fit_service_ranges(memberships) do
    inserted = MapSet.new(memberships)
    {person_ids, service_ids} = Enum.unzip(memberships)

    ServiceMembership
    |> Ash.Query.filter(
      person_id in ^Enum.uniq(person_ids) and service_id in ^Enum.uniq(service_ids) and
        not is_nil(person.study_year_id) and
        not (is_nil(service.study_year_from_id) and is_nil(service.study_year_to_id)) and
        not (not is_nil(service.study_year_from_id) and not is_nil(service.study_year_to_id) and
               service.study_year_from_id <= person.study_year_id and
               service.study_year_to_id >= person.study_year_id)
    )
    |> Ash.Query.sort(person_id: :asc, service_id: :asc)
    |> Ash.read!(actor: Actor.system(), page: false)
    |> Enum.filter(&MapSet.member?(inserted, {&1.person_id, &1.service_id}))
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
