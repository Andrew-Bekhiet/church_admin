defmodule ChurchAdmin.Repo.Migrations.MoveAttendanceRulesToAsh do
  use Ecto.Migration

  def up do
    execute "drop trigger check_attendance_history_meeting on history.attendance_history"
    execute "drop trigger check_service_study_year_rel on history.meetings"
    execute "drop function history.check_attendance_history_meeting()"
    execute "drop function history.check_meeting_service_study_year_rel()"
  end

  def down do
    ChurchAdmin.Repo.SqlScript.execute_file!(
      repo(),
      Path.join([:code.priv_dir(:church_admin), "repo", "sql", "recreate_attendance_rules.sql"])
    )
  end
end
