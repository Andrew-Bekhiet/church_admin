defmodule ChurchAdmin.Operations.StudyYearRoll.Snapshot do
  @moduledoc """
  The rows a roll plans from, read through Ash as the system actor, which
  sees soft-deleted rows: soft-deleted persons still advance, and a route
  through a soft-deleted service still counts. Only graded persons, their
  memberships, live single-year classes and graded service scopes are read.
  """

  alias ChurchAdmin.Accounts.ScopeGrant
  alias ChurchAdmin.Authz.Actor
  alias ChurchAdmin.Catalog.StudyYear
  alias ChurchAdmin.Organization.{Class, Service}
  alias ChurchAdmin.People.{GroupMembership, Person, ServiceMembership}

  require Ash.Query

  defstruct [
    :ladder,
    :services,
    :persons,
    :service_memberships,
    :group_memberships,
    :classes,
    :scope_grants
  ]

  @type t :: %__MODULE__{}

  @spec read!() :: t()
  def read! do
    %__MODULE__{
      ladder: ladder(),
      services: services(),
      persons: graded_persons(),
      service_memberships: graded_persons_service_memberships(),
      group_memberships: graded_persons_group_memberships(),
      classes: live_single_year_classes(),
      scope_grants: graded_service_scope_grants()
    }
  end

  defp ladder do
    orders =
      StudyYear
      |> Ash.Query.select([:order])
      |> Ash.Query.sort(order: :asc)
      |> read!()
      |> Enum.map(& &1.order)

    orders
    |> Enum.zip(Enum.drop(orders, 1) ++ [nil])
    |> Map.new()
  end

  defp services do
    Service
    |> Ash.Query.select([
      :id,
      :next_service_id,
      :study_year_from_id,
      :study_year_to_id,
      :deleted_at
    ])
    |> read!()
    |> Map.new(fn service ->
      {service.id,
       %{
         next_service_id: service.next_service_id,
         from: service.study_year_from_id,
         to: service.study_year_to_id,
         deleted?: not is_nil(service.deleted_at)
       }}
    end)
  end

  defp graded_persons do
    Person
    |> Ash.Query.filter(not is_nil(study_year_id))
    |> Ash.Query.select([:id, :study_year_id, :family_id, :store_id, :uid])
    |> read!()
    |> Enum.map(&Map.take(&1, [:id, :study_year_id, :family_id, :store_id, :uid]))
  end

  defp graded_persons_service_memberships do
    ServiceMembership
    |> Ash.Query.filter(not is_nil(person.study_year_id))
    |> read!()
    |> Enum.map(&Map.take(&1, [:rel_id, :person_id, :service_id]))
  end

  defp graded_persons_group_memberships do
    GroupMembership
    |> Ash.Query.filter(not is_nil(person.study_year_id))
    |> Ash.Query.load(group: [:service_id])
    |> read!()
    |> Enum.map(fn membership ->
      %{
        rel_id: membership.rel_id,
        person_id: membership.person_id,
        group_id: membership.group_id,
        group_service_id: membership.group.service_id
      }
    end)
  end

  defp live_single_year_classes do
    Class
    |> Ash.Query.filter(is_nil(deleted_at) and service_study_year == service_study_year_to)
    |> Ash.Query.select([:id, :service_id, :service_study_year])
    |> read!()
    |> Enum.map(&%{id: &1.id, service_id: &1.service_id, study_year: &1.service_study_year})
  end

  defp graded_service_scope_grants do
    ScopeGrant
    |> Ash.Query.filter(not is_nil(admin_on_service) and not is_nil(service_study_year))
    |> Ash.Query.select([:permission_id, :admin_on_service, :service_study_year])
    |> read!()
    |> Enum.map(
      &%{
        permission_id: &1.permission_id,
        service_id: &1.admin_on_service,
        study_year: &1.service_study_year
      }
    )
  end

  defp read!(query), do: Ash.read!(query, actor: Actor.system(), page: false)
end
