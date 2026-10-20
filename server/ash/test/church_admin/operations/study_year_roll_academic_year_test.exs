defmodule ChurchAdmin.Operations.StudyYearRollAcademicYearTest do
  use ChurchAdmin.DataCase, async: false
  use Oban.Testing, repo: ChurchAdmin.Repo

  import ChurchAdmin.Operations.StudyYearRollWorld

  alias ChurchAdmin.Notifications.StudyYearRollAlert
  alias ChurchAdmin.Operations.StudyYearRollUnderTest, as: Roll

  @season 2026
  @october_of_season ~D[2026-10-20]

  defp pupil_in_first_of_four_years do
    study_years!(1..4)
    service = graded_service!(1, 4)
    pupil!(service, 1)
  end

  defp refusal(season, rolled_season) do
    {:error,
     %{
       message: "study year roll refused for season #{season}",
       detail:
         "the academic year of #{rolled_season} has already been rolled: " <>
           "season #{rolled_season} succeeded"
     }}
  end

  test "the first roll of an academic year advances the pupils" do
    pupil = pupil_in_first_of_four_years()

    assert {:ok, _counts} = Roll.run(@season)

    assert study_year_of(pupil) == 2
  end

  test "a roll for another season in the same academic year is refused and changes nothing" do
    pupil = pupil_in_first_of_four_years()
    Roll.run(@season)

    assert Roll.run(@season + 1, @october_of_season) == refusal(@season + 1, @season)

    assert study_year_of(pupil) == 2
    assert [%{status: :succeeded}] = Roll.runs(@season)
  end

  test "the academic year lasts until the day before the next 11 September" do
    pupil = pupil_in_first_of_four_years()
    Roll.run(@season)

    assert Roll.run(@season + 1, ~D[2027-09-10]) == refusal(@season + 1, @season)
    assert study_year_of(pupil) == 2
  end

  test "an earlier season cannot be rolled after a later one" do
    pupil = pupil_in_first_of_four_years()
    Roll.run(@season)

    assert Roll.run(@season - 1, @october_of_season) == refusal(@season - 1, @season)
    assert study_year_of(pupil) == 2
  end

  test "the next academic year rolls again" do
    pupil = pupil_in_first_of_four_years()
    Roll.run(@season)

    assert {:ok, _counts} = Roll.run(@season + 1, nayrouz(@season + 1))

    assert study_year_of(pupil) == 3
    assert [%{status: :succeeded}] = Roll.runs(@season + 1)
  end

  test "the scheduled roll of the next 11 September rolls after last year's success" do
    pupil = pupil_in_first_of_four_years()
    Roll.run_when_due(nayrouz(@season))

    Roll.run_when_due(nayrouz(@season + 1))

    assert study_year_of(pupil) == 3
  end

  test "a refused roll records failed with the reason and alerts once" do
    pupil_in_first_of_four_years()
    Roll.run(@season)

    for _attempt <- 1..2, do: Roll.run(@season + 1, @october_of_season)

    assert [%{status: :failed, error: error}] = Roll.runs(@season + 1)

    assert error ==
             "study year roll refused for season 2027\n" <>
               "the academic year of 2026 has already been rolled: season 2026 succeeded"

    assert [_one_alert] = all_enqueued(worker: StudyYearRollAlert)
  end
end
