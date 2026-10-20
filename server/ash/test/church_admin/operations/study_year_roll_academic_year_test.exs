defmodule ChurchAdmin.Operations.StudyYearRollAcademicYearTest do
  use ChurchAdmin.DataCase, async: false
  use Oban.Testing, repo: ChurchAdmin.Repo

  import ChurchAdmin.Operations.StudyYearRollWorld

  alias ChurchAdmin.Notifications.StudyYearRollAlert
  alias ChurchAdmin.Operations.StudyYearRollUnderTest, as: Roll

  @season 2026
  @october_of_season ~D[2026-10-20]

  setup :forget_previous_system_roll

  defp pupil_in_first_of_four_years do
    study_years!(1..4)
    service = graded_service!(1, 4)
    pupil!(service, 1)
  end

  defp too_early_refusal(season, today, academic_year) do
    {:error,
     %{
       message: "study year roll refused for season #{season}",
       detail:
         "season #{season} is too early: #{today} is in the academic year of #{academic_year}"
     }}
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

  test "a roll for the season after the coming one is too early and changes nothing" do
    pupil = pupil_in_first_of_four_years()
    Roll.run(@season)

    assert Roll.run(@season + 1, @october_of_season) ==
             too_early_refusal(@season + 1, @october_of_season, @season)

    assert study_year_of(pupil) == 2
    assert [%{status: :succeeded}] = Roll.runs(@season)
  end

  test "a season is too early on 31 August of the year before it" do
    pupil = pupil_in_first_of_four_years()

    assert Roll.run(@season, ~D[2026-08-31]) == too_early_refusal(@season, ~D[2026-08-31], 2025)
    assert study_year_of(pupil) == 1
  end

  test "the academic year starts on 1 September" do
    pupil = pupil_in_first_of_four_years()
    Roll.run(@season)

    assert {:ok, _counts} = Roll.run(@season + 1, ~D[2027-09-01])

    assert study_year_of(pupil) == 3
    assert [%{status: :succeeded}] = Roll.runs(@season + 1)
  end

  test "31 August still belongs to the academic year that began the September before" do
    pupil = pupil_in_first_of_four_years()
    Roll.run(@season)

    assert Roll.run(@season - 1, ~D[2027-08-31]) == refusal(@season - 1, @season)

    assert Roll.run(@season + 1, ~D[2027-08-31]) ==
             too_early_refusal(@season + 1, ~D[2027-08-31], @season)

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
               "season 2027 is too early: 2026-10-20 is in the academic year of 2026"

    assert [_one_alert] = all_enqueued(worker: StudyYearRollAlert)
  end

  test "an already rolled academic year is recorded as failed with the reason and alerts once" do
    pupil_in_first_of_four_years()
    Roll.run(@season)

    for _attempt <- 1..2, do: Roll.run(@season - 1, @october_of_season)

    assert [%{status: :failed, error: error}] = Roll.runs(@season - 1)

    assert error ==
             "study year roll refused for season 2025\n" <>
               "the academic year of 2026 has already been rolled: season 2026 succeeded"

    assert [_one_alert] = all_enqueued(worker: StudyYearRollAlert)
  end
end
