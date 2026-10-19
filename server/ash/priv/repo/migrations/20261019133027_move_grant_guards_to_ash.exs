defmodule ChurchAdmin.Repo.Migrations.MoveGrantGuardsToAsh do
  use Ecto.Migration

  def up do
    execute "drop trigger enforce_permission_grant_level on auth.users_permissions"
    execute "drop trigger check_users_permissions_level_consistency on auth.users_permissions"
    execute "drop trigger enforce_admin_on_grant_level on auth.users_admin_on"
    execute "drop function auth.enforce_permission_grant_level()"
    execute "drop function auth.check_users_permissions_level_consistency()"
    execute "drop function auth.enforce_admin_on_grant_level()"
  end

  def down do
    ChurchAdmin.Repo.SqlScript.execute_file!(
      repo(),
      Path.join([:code.priv_dir(:church_admin), "repo", "sql", "recreate_grant_guards.sql"])
    )
  end
end
