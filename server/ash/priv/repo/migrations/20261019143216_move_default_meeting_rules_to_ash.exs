defmodule ChurchAdmin.Repo.Migrations.MoveDefaultMeetingRulesToAsh do
  use Ecto.Migration

  def up do
    execute "drop trigger maybe_remove_service_archived_default_meeting on history.meetings"
    execute "drop trigger maybe_remove_group_archived_default_meeting on history.meetings"
    execute "drop trigger check_service_default_meeting_belongs_to_service on public.services"
    execute "drop trigger check_group_default_meeting_belongs_to_group on public.groups"

    execute "drop function history.maybe_remove_service_archived_default_meeting()"
    execute "drop function history.maybe_remove_group_archived_default_meeting()"
    execute "drop function public.check_service_default_meeting_belongs_to_service()"
    execute "drop function public.check_group_default_meeting_belongs_to_group()"
  end

  def down do
    ChurchAdmin.Repo.SqlScript.execute_file!(
      repo(),
      Path.join([
        :code.priv_dir(:church_admin),
        "repo",
        "sql",
        "recreate_default_meeting_rules.sql"
      ])
    )
  end
end
