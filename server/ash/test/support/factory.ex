defmodule ChurchAdmin.Factory do
  @moduledoc """
  Inserts fixture rows with `Ash.Seed` (no actions, no policies) under the
  system database session, so the baseline's guard triggers let them through.
  Every function takes the attributes that matter to the test and fills the
  rest with unique defaults; ids come back on the returned records.

  Deferred constraint triggers (a person needs a container, a group member
  needs the group's service, ...) never fire inside the test sandbox, which
  rolls back instead of committing.
  """

  alias ChurchAdmin.Accounts.{ScopeGrant, User, UserPermission}
  alias ChurchAdmin.Activity.Edit
  alias ChurchAdmin.Attendance.Meeting
  alias ChurchAdmin.Catalog.StudyYear
  alias ChurchAdmin.Organization.{Class, Group, Service}
  alias ChurchAdmin.People.{Family, GroupMembership, Person, ServiceMembership}
  alias ChurchAdmin.Places.{Address, Area, AreaStreet, Store, Street}

  def user!(attrs \\ %{}), do: seed!(User, Map.merge(%{name: unique("user")}, Map.new(attrs)))

  def permissions!(%User{uid: uid}, names), do: permissions!(uid, names)

  def permissions!(uid, names) do
    for name <- names, do: seed!(UserPermission, %{uid: uid, permission: name})
  end

  @doc """
  A `users_admin_on` row. `kind` is `:service`, `:group` or `:area`; flags use
  `ChurchAdmin.Authz.Grant` names (`edit?`, `export?`, `manage_users?`,
  `write_related_families?`, `record_persons?`, `record_servants?`) plus
  `study_year` and `gender` for services.
  """
  def grant!(%User{uid: uid}, kind, scope_id, flags \\ []) do
    flags = Map.new(flags)
    prefix = Atom.to_string(kind)

    columns =
      %{
        :uid => uid,
        :"admin_on_#{prefix}" => scope_id,
        :"#{prefix}_allow_edit" => flags[:edit?],
        :"#{prefix}_allow_export" => flags[:export?],
        :"#{prefix}_admin_on_users" => flags[:manage_users?]
      }
      |> Map.merge(kind_columns(kind, flags))

    seed!(ScopeGrant, columns)
  end

  defp kind_columns(:service, flags) do
    %{
      service_study_year: flags[:study_year],
      service_gender: flags[:gender],
      service_write_related_families: flags[:write_related_families?] || false,
      service_allow_record_attendance: flags[:record_persons?],
      service_allow_record_servants_attendance: flags[:record_servants?]
    }
  end

  defp kind_columns(:group, flags) do
    %{
      group_write_related_families: flags[:write_related_families?] || false,
      group_allow_record_attendance: flags[:record_persons?],
      group_allow_record_servants_attendance: flags[:record_servants?]
    }
  end

  defp kind_columns(:area, _flags), do: %{}

  def study_year!(order), do: seed!(StudyYear, %{order: order, name: unique("year #{order}")})

  def service!(attrs \\ %{}),
    do: seed!(Service, Map.merge(%{name: unique("service")}, Map.new(attrs)))

  def group!(%Service{id: service_id}, attrs \\ %{}),
    do: seed!(Group, Map.merge(%{name: unique("group"), service_id: service_id}, Map.new(attrs)))

  def class!(%Service{id: service_id}, attrs) do
    attrs = Map.new(attrs)

    seed!(
      Class,
      Map.merge(
        %{
          name: unique("class"),
          service_id: service_id,
          service_study_year_to: attrs[:service_study_year]
        },
        attrs
      )
    )
  end

  def area!(attrs \\ %{}), do: seed!(Area, Map.merge(%{name: unique("area")}, Map.new(attrs)))

  def street!(%Area{id: area_id}, attrs \\ %{}) do
    street = seed!(Street, Map.merge(%{name: unique("street")}, Map.new(attrs)))
    seed!(AreaStreet, %{area_id: area_id, street_id: street.id})
    street
  end

  def family!(attrs \\ %{}),
    do: seed!(Family, Map.merge(%{name: unique("family")}, Map.new(attrs)))

  def store!(attrs \\ %{}), do: seed!(Store, Map.merge(%{name: unique("store")}, Map.new(attrs)))

  def address!(attrs), do: seed!(Address, Map.new(attrs))

  def person!(attrs \\ %{}),
    do: seed!(Person, Map.merge(%{name: unique("person"), gender: true}, Map.new(attrs)))

  def in_service!(%Person{id: person_id}, %Service{id: service_id}),
    do: seed!(ServiceMembership, %{person_id: person_id, service_id: service_id})

  def in_group!(%Person{id: person_id}, %Group{id: group_id}),
    do: seed!(GroupMembership, %{person_id: person_id, group_id: group_id})

  def meeting!(attrs), do: seed!(Meeting, Map.merge(%{name: unique("meeting")}, Map.new(attrs)))

  def edit_row!(table, record_id), do: seed!(Edit, %{table: table, record_id: record_id})

  def deleted_at, do: DateTime.utc_now()

  defp seed!(resource, attrs) do
    ChurchAdmin.DataCase.set_system_db_session()
    Ash.Seed.seed!(resource, attrs)
  end

  defp unique(prefix), do: "#{prefix} #{System.unique_integer([:positive])}"
end
