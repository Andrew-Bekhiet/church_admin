defmodule ChurchAdmin.People.Person.Invariants do
  @moduledoc """
  The rules a written person and its new memberships must satisfy once the
  command has written them, which the deferred constraint triggers checked
  at commit:

    * a person belongs to a family, store, user, service or group;
    * a person added to a service has a study year in the service's range,
      or no study year, or the service has no range;
    * a person added to a group is in the group's service.

  Memberships that were already there are not re-checked, as before.
  """

  alias ChurchAdmin.Errors.{Codes, DomainError}
  alias ChurchAdmin.Organization.Group
  alias ChurchAdmin.People.{Person, ServiceMembership}

  require Ash.Query

  @doc "Persons with neither a family, store or user nor a service or group membership."
  @spec unanchored([Person.t()]) :: Ash.Query.t()
  def unanchored(persons) do
    ids = Enum.map(persons, & &1.id)

    Person
    |> Ash.Query.filter(
      id in ^ids and is_nil(family_id) and is_nil(store_id) and is_nil(uid) and
        not exists(service_memberships, true) and not exists(group_memberships, true)
    )
  end

  @spec added_memberships_fit(Ecto.UUID.t(), [Ecto.UUID.t()], [Ecto.UUID.t()]) ::
          :ok | {:error, DomainError.t()}
  def added_memberships_fit(person_id, service_ids, group_ids) do
    cond do
      outside_study_years?(person_id, service_ids) ->
        {:error,
         DomainError.exception(
           code: Codes.person_study_year_outside_service(),
           fields: [:services]
         )}

      outside_service?(person_id, group_ids) ->
        {:error,
         DomainError.exception(code: Codes.person_group_outside_service(), fields: [:groups])}

      true ->
        :ok
    end
  end

  defp outside_study_years?(_person_id, []), do: false

  defp outside_study_years?(person_id, service_ids) do
    ServiceMembership
    |> Ash.Query.filter(
      person_id == ^person_id and service_id in ^service_ids and
        not is_nil(person.study_year_id) and
        not (is_nil(service.study_year_from_id) and is_nil(service.study_year_to_id)) and
        not (not is_nil(service.study_year_from_id) and not is_nil(service.study_year_to_id) and
               service.study_year_from_id <= person.study_year_id and
               service.study_year_to_id >= person.study_year_id)
    )
    |> Ash.exists?(authorize?: false)
  end

  defp outside_service?(_person_id, []), do: false

  defp outside_service?(person_id, group_ids) do
    group_service_ids =
      Group
      |> Ash.Query.filter(id in ^group_ids)
      |> Ash.read!(authorize?: false, page: false)
      |> MapSet.new(& &1.service_id)

    own_service_ids =
      ServiceMembership
      |> Ash.Query.filter(person_id == ^person_id)
      |> Ash.read!(authorize?: false, page: false)
      |> MapSet.new(& &1.service_id)

    not MapSet.subset?(group_service_ids, own_service_ids)
  end
end
