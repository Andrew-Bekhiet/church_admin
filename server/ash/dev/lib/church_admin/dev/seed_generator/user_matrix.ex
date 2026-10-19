defmodule ChurchAdmin.Dev.SeedGenerator.UserMatrix do
  @moduledoc """
  One user per permission or scope shape, so a visibility difference between two
  users traces back to one rule. Merges the matrix of the seed design with the
  actor kinds the authorization tests need.

  `person` is how the user's linked person is seeded: `nil` (no person),
  `:standalone` (a servant outside any family), `:family_admin` (a parent in a
  live family) or `:deleted` (a soft-deleted person).

  Service grants point at the seeded primary-school service, restricted to the
  study year and gender below where a grant names them.
  """

  @restricted_study_year 3
  @restricted_gender true

  @type scope :: :service | :group | :area
  @type grant :: %{
          scope: scope(),
          study_year: integer() | nil,
          gender: boolean() | nil,
          edit: boolean(),
          export: boolean(),
          admin_users: boolean(),
          write_related: boolean(),
          record_persons: boolean(),
          record_servants: boolean()
        }
  @type kind :: %{
          key: String.t(),
          permissions: [String.t()],
          person: nil | :standalone | :family_admin | :deleted,
          grants: [grant()]
        }

  @spec restricted_study_year() :: integer()
  def restricted_study_year, do: @restricted_study_year

  @spec restricted_gender() :: boolean()
  def restricted_gender, do: @restricted_gender

  @spec kinds() :: [kind()]
  def kinds,
    do: unscoped_kinds() ++ service_kinds() ++ group_kinds() ++ area_kinds() ++ other_kinds()

  @spec pending_kinds() :: [kind()]
  def pending_kinds do
    for number <- 1..3 do
      kind("pending_#{number}", ~w(approved), :standalone, [service()])
    end
  end

  @spec grant(scope(), keyword()) :: grant()
  def grant(scope, options \\ []) do
    Map.merge(
      %{
        scope: scope,
        study_year: nil,
        gender: nil,
        edit: false,
        export: false,
        admin_users: false,
        write_related: false,
        record_persons: false,
        record_servants: false
      },
      Map.new(options)
    )
  end

  defp unscoped_kinds do
    [
      kind("unapproved", [], nil, []),
      kind("unapproved_with_grants", ~w(readAllData writeAllData), :standalone, [
        service(edit: true),
        area(edit: true)
      ]),
      kind("approved_only", ~w(approved), nil, []),
      kind("approved_plain", ~w(approved), :family_admin, []),
      kind("read_all", ~w(approved readAllData), :standalone, []),
      kind("read_write", ~w(approved readAllData writeAllData), :standalone, []),
      kind("manage_users", ~w(approved readAllData writeAllData manageAllUsers), :standalone, []),
      kind("record_all_attendance", ~w(approved recordAllAttendance), :standalone, []),
      kind(
        "record_all_attendance_read",
        ~w(approved readAllData recordAllAttendance),
        :standalone,
        []
      ),
      kind(
        "record_all_servants_attendance",
        ~w(approved recordAllServantsAttendance),
        :standalone,
        []
      ),
      kind("recover_deleted", ~w(approved recoverDeleted), :standalone, []),
      kind("delete_data", ~w(approved deleteData), :standalone, []),
      kind("export_all", ~w(approved readAllData exportAllData), :standalone, []),
      kind("maintenance_notifications", ~w(approved maintenanceNotifications), :standalone, []),
      kind("write_without_read", ~w(approved writeAllData), :standalone, [])
    ]
  end

  defp service_kinds do
    year = @restricted_study_year
    gender = @restricted_gender

    [
      kind("service_open", ~w(approved), :standalone, [service()]),
      kind("service_year", ~w(approved), :standalone, [service(study_year: year)]),
      kind("service_gender", ~w(approved), :standalone, [service(gender: gender)]),
      kind("service_year_gender", ~w(approved), :standalone, [
        service(study_year: year, gender: gender)
      ]),
      kind("service_open_edit", ~w(approved), :standalone, [service(edit: true)]),
      kind("service_year_edit", ~w(approved), :standalone, [service(study_year: year, edit: true)]),
      kind("service_gender_edit", ~w(approved), :standalone, [service(gender: gender, edit: true)]),
      kind("service_year_gender_edit", ~w(approved), :standalone, [
        service(study_year: year, gender: gender, edit: true)
      ]),
      kind("service_write_related", ~w(approved), :standalone, [
        service(edit: true, write_related: true)
      ]),
      kind("service_admin_users", ~w(approved), :standalone, [
        service(edit: true, admin_users: true)
      ]),
      kind("service_record_servants", ~w(approved), :standalone, [service(record_servants: true)]),
      kind("service_record_persons", ~w(approved), :standalone, [service(record_persons: true)]),
      kind("service_export", ~w(approved), :standalone, [service(export: true)])
    ]
  end

  defp group_kinds do
    [
      kind("group_read", ~w(approved), :standalone, [group()]),
      kind("group_edit", ~w(approved), :standalone, [group(edit: true)]),
      kind("group_admin_users", ~w(approved), :standalone, [group(edit: true, admin_users: true)]),
      kind("group_write_related", ~w(approved), :standalone, [
        group(edit: true, write_related: true)
      ]),
      kind("group_record_servants", ~w(approved), :standalone, [group(record_servants: true)])
    ]
  end

  defp area_kinds do
    [
      kind("area_read", ~w(approved), :standalone, [area()]),
      kind("area_edit", ~w(approved), :standalone, [area(edit: true)]),
      kind("area_admin_users", ~w(approved), :standalone, [area(edit: true, admin_users: true)]),
      kind("area_export", ~w(approved), :standalone, [area(export: true)])
    ]
  end

  defp other_kinds do
    [
      kind("multi_scope", ~w(approved), :standalone, [
        service(study_year: @restricted_study_year, gender: @restricted_gender, edit: true),
        group(),
        area(edit: true)
      ]),
      kind("deleted_person_user", ~w(approved), :deleted, []),
      kind("family_admin_member_editor", ~w(approved), :family_admin, [service(edit: true)])
    ]
  end

  defp kind(key, permissions, person, grants),
    do: %{key: key, permissions: permissions, person: person, grants: grants}

  defp service(options \\ []), do: grant(:service, options)
  defp group(options \\ []), do: grant(:group, options)
  defp area(options \\ []), do: grant(:area, options)
end
