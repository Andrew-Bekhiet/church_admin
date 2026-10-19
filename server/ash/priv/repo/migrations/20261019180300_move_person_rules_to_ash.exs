defmodule ChurchAdmin.Repo.Migrations.MovePersonRulesToAsh do
  use Ecto.Migration

  @triggers [
    {"persons", "persons_container_check"},
    {"persons", "mark_linked_person_as_servant"},
    {"persons", "sync_user_with_person"},
    {"persons_services", "check_persons_service_rel"},
    {"persons_groups", "check_person_group_service_rel"}
  ]

  @functions ~w(
    public.persons_general_check
    public.mark_linked_person_as_servant
    history.sync_user_with_person_trigger
    public.check_persons_service_rel
    public.check_person_group_service_rel
  )

  def up do
    for {table, name} <- @triggers, do: execute("drop trigger #{name} on public.#{table}")
    for name <- @functions, do: execute("drop function #{name}()")
  end

  def down do
    ChurchAdmin.Repo.SqlScript.execute_file!(
      repo(),
      Path.join([:code.priv_dir(:church_admin), "repo", "sql", "recreate_person_rules.sql"])
    )
  end
end
