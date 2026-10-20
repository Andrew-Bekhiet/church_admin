defmodule ChurchAdmin.Operations.StudyYearRollPreviousSystemMarkerTest do
  use ChurchAdmin.DataCase, async: false

  import ChurchAdmin.Operations.StudyYearRollWorld

  alias ChurchAdmin.Operations.StudyYearRollUnderTest, as: Roll
  alias ChurchAdmin.Repo

  @season 2026

  @migration_file "priv/repo/migrations/*_mark_season_2026_as_rolled_by_previous_system.exs"

  setup_all do
    [file] = Path.wildcard(@migration_file)
    [{migration, _binary}] = Code.require_file(file)
    %{migration: migration}
  end

  defp runs_of_season(season) do
    %{rows: rows} =
      Repo.query!(
        """
        select status, error, step_counts
        from operations.study_year_roll_runs
        where season_year = $1
        order by id
        """,
        [season]
      )

    rows
  end

  defp insert_marker!(migration), do: Repo.query!(migration.insert_marker_sql())

  defp pupil_in_first_of_four_years do
    study_years!(1..4)
    pupil!(graded_service!(1, 4), 1)
  end

  test "a migrated database holds the previous system's roll of season 2026 exactly once" do
    assert [["succeeded", nil, %{"rolled_by_previous_system" => 1}]] = runs_of_season(@season)
  end

  test "the marker is inserted only once however often its migration runs", %{
    migration: migration
  } do
    before_rerun = runs_of_season(@season)

    insert_marker!(migration)
    insert_marker!(migration)

    assert runs_of_season(@season) == before_rerun
  end

  test "the marker is inserted when the season has no run", %{migration: migration} do
    marker = runs_of_season(@season)
    forget_previous_system_roll(%{})
    assert runs_of_season(@season) == []

    insert_marker!(migration)

    assert runs_of_season(@season) == marker
  end

  test "a succeeded run recorded for season 2026 is left untouched", %{migration: migration} do
    forget_previous_system_roll(%{})
    pupil_in_first_of_four_years()
    Roll.run_when_due(~D[2026-09-11])
    recorded = runs_of_season(@season)
    assert [["succeeded" | _rest]] = recorded

    insert_marker!(migration)

    assert runs_of_season(@season) == recorded
  end

  test "a failed run for season 2026 is left untouched and gets no marker", %{
    migration: migration
  } do
    forget_previous_system_roll(%{})

    Repo.query!("""
    insert into operations.study_year_roll_runs (season_year, status, error)
    values (2026, 'failed', 'boom')
    """)

    insert_marker!(migration)

    assert runs_of_season(@season) == [["failed", "boom", nil]]
  end

  test "the scheduled roll of 2026 skips and the roll of 2027 runs from 1 September 2027" do
    pupil = pupil_in_first_of_four_years()

    assert {:ok, :skipped_already_rolled} = Roll.run(@season, ~D[2026-09-11])
    assert study_year_of(pupil) == 1

    assert {:ok, _counts} = Roll.run(@season + 1, ~D[2027-09-01])
    assert study_year_of(pupil) == 2
  end
end
