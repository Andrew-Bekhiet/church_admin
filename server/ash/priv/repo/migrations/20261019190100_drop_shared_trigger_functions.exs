defmodule ChurchAdmin.Repo.Migrations.DropSharedTriggerFunctions do
  use Ecto.Migration

  def up do
    execute "drop function history.edit_history_trigger()"
    execute "drop function public.set_current_timestamp_updated_at()"
    execute "drop function public.soft_delete_trigger()"
  end

  def down do
    ChurchAdmin.Repo.SqlScript.execute_file!(
      repo(),
      Path.join([
        :code.priv_dir(:church_admin),
        "repo",
        "sql",
        "recreate_shared_trigger_functions.sql"
      ])
    )
  end
end
