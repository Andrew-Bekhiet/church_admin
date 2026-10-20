defmodule ChurchAdmin.Accounts.AdminOn do
  @moduledoc """
  A scope handed to a user as command input: one `users_admin_on` row
  without its ids, on exactly one of a service, group or area.
  """

  use Ash.TypedStruct
  use AshGraphql.Type

  typed_struct do
    field :admin_on_service, :uuid
    field :service_gender, :boolean
    field :service_study_year, :integer
    field :service_allow_edit, :boolean
    field :service_allow_export, :boolean
    field :service_allow_record_attendance, :boolean
    field :service_allow_record_servants_attendance, :boolean
    field :service_write_related_families, :boolean
    field :service_admin_on_users, :boolean
    field :admin_on_group, :uuid
    field :group_allow_edit, :boolean
    field :group_allow_export, :boolean
    field :group_allow_record_attendance, :boolean
    field :group_allow_record_servants_attendance, :boolean
    field :group_write_related_families, :boolean
    field :group_admin_on_users, :boolean
    field :admin_on_area, :uuid
    field :area_allow_edit, :boolean
    field :area_allow_export, :boolean
    field :area_admin_on_users, :boolean
  end

  @spec field_names() :: [atom()]
  def field_names, do: __struct__() |> Map.from_struct() |> Map.keys() |> Enum.sort()

  @impl AshGraphql.Type
  def graphql_type(_constraints), do: :admin_on

  @impl AshGraphql.Type
  def graphql_input_type(_constraints), do: :admin_on_input
end
