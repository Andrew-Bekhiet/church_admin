defmodule ChurchAdmin.Dev.SeedGenerator.Renderer do
  @moduledoc """
  Writes the generated rows as one SQL script in foreign-key and trigger order.

  The script runs in a single transaction with `hasura.user` unset, which the
  baseline triggers treat as an admin session. Two checks that reject states the
  data deliberately contains are switched off around the statements that insert
  them: persons outside their service's study years, and write access without
  read access.
  """

  alias ChurchAdmin.Dev.SeedGenerator.Sql

  @columns %{
    "public.districts" => ~w(id name)a,
    "public.churches" => ~w(id name)a,
    "public.fathers" => ~w(id name church_id is_hidden)a,
    "public.universities" => ~w(id name)a,
    "public.colleges" => ~w(id name university_id)a,
    "public.schools" => ~w(id name)a,
    "public.jobs" => ~w(id name)a,
    "public.qualifications" => ~w(id name)a,
    "public.hobbies" => ~w(id name color)a,
    "public.tags" => ~w(id name color)a,
    "public.person_states" => ~w(id name color)a,
    "auth.users_data" => ~w(uid name email auth_id)a,
    "auth.users_permissions" => ~w(uid permission)a,
    "auth.users_admin_on" =>
      ~w(permission_id uid admin_on_service service_gender service_study_year service_allow_edit service_admin_on_users admin_on_group group_allow_edit group_admin_on_users admin_on_area area_allow_edit area_admin_on_users service_write_related_families group_write_related_families area_allow_export service_allow_export group_allow_export service_allow_record_attendance service_allow_record_servants_attendance group_allow_record_attendance group_allow_record_servants_attendance)a,
    "auth.invitations" => ~w(id user_uid created_by code)a,
    "public.users_fcm_tokens" => ~w(uid token)a,
    "public.users_preferences" => ~w(uid order_by_preferences great_feast_theme dark_theme)a,
    "public.areas" => ~w(id name bounds color)a,
    "public.streets" => ~w(id name line color deleted_at deleted_by)a,
    "public.areas_streets" => ~w(area_id street_id)a,
    "public.families" =>
      ~w(id name notes status deceased_spouse_name marriage_date church_id deleted_at deleted_by)a,
    "public.addresses" =>
      ~w(id district_id area_id street_id geolocation storey_number apartment_number house_code special_landmark family_id store_id)a,
    "public.stores" => ~w(id name admin_family deleted_at deleted_by)a,
    "public.persons" =>
      ~w(id name birthdate gender is_shammas shammas_level_id school_id college_id church_id father_id is_student job_id job_description qualification_id person_type_id state_id is_servant notes uid family_id store_id study_year_id work_status martial_status serving_church_id service_type deleted_at deleted_by)a,
    "public.persons_tags" => ~w(rel_id person_id tag_id)a,
    "public.persons_hobbies" => ~w(rel_id person_id hobby_id)a,
    "public.classes" =>
      ~w(id name service_id service_study_year service_study_year_to service_gender deleted_at deleted_by)a,
    "public.groups" => ~w(id name service_id validity deleted_at deleted_by)a,
    "history.meetings" =>
      ~w(id name service_id service_study_year service_gender group_id audience is_archived show_kodas_checkbox)a,
    "public.persons_services" => ~w(rel_id person_id service_id)a,
    "public.persons_groups" => ~w(rel_id person_id group_id)a,
    "public.contacts" => ~w(id person_id family_id person_type_id label phone is_main_phone)a,
    "history.attendance_days" => ~w(day)a,
    "history.attendance_history" => ~w(id meeting_id person_id datetime as_servant recorded_by)a,
    "history.visit_history" => ~w(visit_id table record_id time recorded_by is_father_visit)a,
    "history.call_history" => ~w(time person_id recorded_by user_role)a,
    "history.confession_history" => ~w(id day_id person_id recorded_by)a,
    "history.kodas_history" => ~w(id day_id person_id recorded_by)a,
    "history.edit_history" => ~w(table record_id time recorded_by user_role audit_id)a,
    "public.data_check_overrides" => ~w(family_id is_complete updated_by)a,
    "operations.study_year_roll_runs" => ~w(season_year status recorded_at error step_counts)a
  }

  @spec render(String.t(), [iodata()]) :: binary()
  def render(header, parts),
    do: IO.iodata_to_binary(["-- ", header, "\nBEGIN;\n", parts, "COMMIT;\n"])

  @spec insert(String.t(), [map()], keyword()) :: iodata()
  def insert(table, rows, opts \\ []),
    do: Sql.insert(table, Map.fetch!(@columns, table), rows, opts)

  @spec without_trigger(String.t(), String.t(), iodata()) :: iodata()
  @doc """
  Like `without_trigger/3`, for a trigger a later migration drops: the seed
  loads onto the baseline, which still has it, and onto the migrated schema,
  which does not.
  """
  @spec without_trigger_if_present(String.t(), String.t(), iodata()) :: iodata()
  def without_trigger_if_present(table, trigger, statements) do
    [
      toggle_trigger_if_present(table, trigger, "DISABLE"),
      statements,
      toggle_trigger_if_present(table, trigger, "ENABLE")
    ]
  end

  defp toggle_trigger_if_present(table, trigger, toggle) do
    "DO $$ BEGIN IF EXISTS (SELECT 1 FROM pg_trigger WHERE tgname = '#{trigger}' " <>
      "AND tgrelid = '#{table}'::regclass) THEN " <>
      "ALTER TABLE #{table} #{toggle} TRIGGER #{trigger}; END IF; END $$;\n"
  end

  def without_trigger(table, trigger, statements) do
    [
      "ALTER TABLE #{table} DISABLE TRIGGER #{trigger};\n",
      statements,
      "ALTER TABLE #{table} ENABLE TRIGGER #{trigger};\n"
    ]
  end

  @spec update_where_in(String.t(), String.t(), String.t(), [String.t()]) :: iodata()
  def update_where_in(_table, _assignment, _key, []), do: []

  def update_where_in(table, assignment, key, values) do
    list = Enum.map_join(values, ", ", &Sql.literal/1)
    ["UPDATE #{table} SET #{assignment} WHERE #{key} IN (", list, ");\n"]
  end
end
