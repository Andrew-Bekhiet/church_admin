defmodule ChurchAdmin.Repo.Migrations.DropInsertedInTransactionTracking do
  use Ecto.Migration

  def up do
    execute("drop trigger remember_person_inserted_in_transaction on public.persons")
    execute("drop trigger remember_family_inserted_in_transaction on public.families")
    execute("drop function public.remember_row_inserted_in_transaction()")
    execute("drop function public.person_inserted_in_current_transaction(public.persons)")
    execute("drop function public.family_inserted_in_current_transaction(public.families)")
  end

  def down do
    ChurchAdmin.Repo.SqlScript.execute_file!(
      repo(),
      Path.join([
        :code.priv_dir(:church_admin),
        "repo",
        "sql",
        "recreate_inserted_in_transaction_tracking.sql"
      ])
    )
  end
end
