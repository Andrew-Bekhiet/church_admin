defmodule ChurchAdmin.Repo.Migrations.DropPermissionCacheAndViews do
  use Ecto.Migration

  @sync_trigger_tables ~w(
    public.persons_services
    public.persons_groups
    public.persons
    public.classes
    public.areas_streets
    public.addresses
    auth.users_permissions
    auth.users_data
    auth.users_admin_on
  )

  @user_can_edit_functions ~w[
    auth.user_can_edit_area(public.areas,json)
    auth.user_can_edit_class(public.classes,json)
    auth.user_can_edit_family(public.families,json)
    auth.user_can_edit_group(public.groups,json)
    auth.user_can_edit_person(public.persons,json)
    auth.user_can_edit_service(public.services,json)
    auth.user_can_edit_store(public.stores,json)
    auth.user_can_edit_street(public.streets,json)
    auth.user_can_edit_user(auth.users_data,json)
  ]

  def up do
    for table <- @sync_trigger_tables do
      execute "drop trigger sync_users_permissions_by_entity_id_cache on #{table}"
    end

    execute "drop function auth.sync_users_permissions_by_entity_id_cache()"
    execute "drop table auth.users_permissions_by_entity_id_cache"

    for function <- @user_can_edit_functions do
      execute "drop function #{function}"
    end

    execute "drop view auth.users_admin_on_meetings"
    execute "drop view auth.users_permissions_by_entity_id"
  end

  def down do
    ChurchAdmin.Repo.SqlScript.execute_file!(
      repo(),
      Path.join([:code.priv_dir(:church_admin), "repo", "sql", "recreate_permission_cache.sql"])
    )

    execute "alter table auth.users_permissions_by_entity_id_cache replica identity full"
  end
end
