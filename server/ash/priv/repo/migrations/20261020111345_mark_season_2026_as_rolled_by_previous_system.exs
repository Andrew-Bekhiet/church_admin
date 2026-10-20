defmodule ChurchAdmin.Repo.Migrations.MarkSeason2026AsRolledByPreviousSystem do
  use Ecto.Migration

  # Production was rolled for season 2026 by the Hasura-era system before this
  # server's first run. Down does nothing: a run row is never deleted.
  def up, do: execute(insert_marker_sql())

  def down, do: :ok

  def insert_marker_sql do
    """
    insert into operations.study_year_roll_runs (season_year, status, step_counts)
    select 2026, 'succeeded', '{"rolled_by_previous_system": 1}'::jsonb
    where not exists (
      select 1 from operations.study_year_roll_runs where season_year = 2026
    )
    on conflict do nothing
    """
  end
end
