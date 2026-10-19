defmodule ChurchAdmin.Repo.Migrations.MoveStudyYearRollToAshOban do
  use Ecto.Migration

  @roll_routines [
    "procedure operations.run_study_year_roll_when_due(date)",
    "procedure operations.record_missed_study_year_roll(date)",
    "function operations.run_study_year_roll(integer)",
    "function operations.apply_study_year_roll_plan()",
    "function operations.find_study_year_roll_blockers()",
    "function operations.plan_study_year_roll()",
    "function operations.study_year_outgrows_service(smallint, smallint)",
    "function operations.study_year_roll_succeeded(integer)",
    "function operations.nayrouz_date(integer)",
    "function operations.current_season_year()",
    "function operations.cairo_now()"
  ]

  def up do
    execute("""
    do $$
    begin
        if to_regclass('cron.job') is not null then
            perform cron.unschedule(jobid)
            from cron.job
            where jobname in ('study-year-roll', 'study-year-roll-missed-check');
        end if;
    end $$
    """)

    Enum.each(@roll_routines, &execute("drop #{&1}"))
  end

  def down do
    ChurchAdmin.Repo.SqlScript.execute_file!(
      repo(),
      Path.join([:code.priv_dir(:church_admin), "repo", "sql", "recreate_study_year_roll.sql"])
    )
  end
end
