defmodule ChurchAdmin.Repo.Migrations.MoveUserPreferencesSeedToAsh do
  use Ecto.Migration

  def up do
    execute "drop trigger seed_user_preferences on auth.users_data"
    execute "drop function public.seed_user_preferences()"
    execute "drop function public.default_order_by_preferences()"
  end

  def down do
    ChurchAdmin.Repo.SqlScript.execute_file!(
      repo(),
      Path.join([
        :code.priv_dir(:church_admin),
        "repo",
        "sql",
        "recreate_user_preferences_seed.sql"
      ])
    )
  end
end
