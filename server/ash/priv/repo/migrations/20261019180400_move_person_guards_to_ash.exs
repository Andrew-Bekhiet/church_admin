defmodule ChurchAdmin.Repo.Migrations.MovePersonGuardsToAsh do
  use Ecto.Migration

  def up do
    execute("drop trigger check_person_insertion_permission on public.persons")
    execute("drop trigger assert_caller_can_change_person_user_link on public.persons")
    execute("drop function public.assert_caller_can_change_person_user_link()")
  end

  def down do
    ChurchAdmin.Repo.SqlScript.execute_file!(
      repo(),
      Path.join([:code.priv_dir(:church_admin), "repo", "sql", "recreate_person_guards.sql"])
    )
  end
end
