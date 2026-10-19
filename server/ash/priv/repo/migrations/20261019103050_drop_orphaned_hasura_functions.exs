defmodule ChurchAdmin.Repo.Migrations.DropOrphanedHasuraFunctions do
  use Ecto.Migration

  @orphaned_functions [
    "auth.set_current_timestamp_updated_at()",
    "auth.user_can_change_old_history(uuid)",
    "auth.user_can_export_data(uuid)",
    "auth.user_can_manage_all_users(uuid)",
    "auth.user_can_read_all_data(uuid)",
    "auth.user_can_recover_deleted(uuid)",
    "auth.user_can_write_all_data(uuid)",
    "history.user_allowed_to_read_audit(history.edit_history, json)",
    "history.user_allowed_to_read_latest_edit(history.latest_edits, json)",
    "history.user_allowed_to_read_latest_visit(history.latest_visits, json)",
    "history.user_allowed_to_read_visit(history.visit_history, json)",
    "history.user_allowed_to_write_visit(history.visit_history, json)",
    "public._user_allowed_to_change_other_user(uuid, uuid)",
    "public.user_allowed_to_change_user_data(auth.users_data, json)",
    "public.user_allowed_to_change_user_permissions(auth.users_admin_on, json)",
    "public.user_allowed_to_change_user_permissions(auth.users_permissions, json)",
    "public.user_allowed_to_delete_user(auth.users_data, json)",
    "public.user_allowed_to_read_user(auth.users_data, json)",
    "public.area_families(public.areas, json)",
    "public.area_persons(public.areas, json)",
    "public.area_stores(public.areas, json)",
    "public.area_streets(public.areas, json)",
    "public.family_areas(public.families, json)",
    "public.family_streets(public.families, json)",
    "public.person_areas(public.persons, json)",
    "public.person_streets(public.persons, json)",
    "public.store_areas(public.stores, json)",
    "public.store_persons(public.stores, json)",
    "public.store_streets(public.stores, json)",
    "public.street_areas(public.streets, json)",
    "public.street_families(public.streets, json)",
    "public.street_persons(public.streets, json)",
    "public.street_stores(public.streets, json)",
    "public.get_person_classes(public.persons, json)",
    "public.persons_groups_check()",
    "public.persons_groups_check(public.persons_groups, json)",
    "public.check_family_street_same_area()",
    "public.check_store_has_street()"
  ]

  def up do
    Enum.each(@orphaned_functions, &execute("drop function #{&1}"))
    execute("drop type history.last_recorded_by_info")
  end

  def down do
    ChurchAdmin.Repo.SqlScript.execute_file!(
      repo(),
      Path.join([
        :code.priv_dir(:church_admin),
        "repo",
        "sql",
        "recreate_orphaned_hasura_functions.sql"
      ])
    )
  end
end
