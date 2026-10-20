defmodule ChurchAdmin.Operations.StudyYearRollTest do
  use ChurchAdmin.DataCase, async: false

  import ChurchAdmin.Factory
  import ChurchAdmin.Operations.StudyYearRollWorld

  alias ChurchAdmin.Operations.StudyYearRollUnderTest, as: Roll

  @season 2026

  setup :forget_previous_system_roll

  @no_change_counts %{
    "graduate_top_cohort_persons" => 0,
    "advance_persons_study_years" => 0,
    "drop_persons_services_memberships_without_next_service" => 0,
    "dedupe_converging_persons_services_memberships" => 0,
    "advance_persons_services_memberships_to_next_service" => 0,
    "drop_stranded_persons_groups_memberships" => 0,
    "advance_classes_study_years" => 0,
    "relocate_classes_to_next_service" => 0,
    "delete_classes_whose_next_service_has_no_grades" => 0,
    "advance_servant_scopes_study_years" => 0,
    "servant_scopes_left_unchanged" => 0,
    "services_missing_first_grade_class" => 0
  }

  defp one_pupil_world do
    study_years!(1..3)
    service = graded_service!(1, 3)
    class!(service, service_study_year: 1)
    pupil = pupil!(service, 1)
    pupil
  end

  defp cycle_blocker_line(service),
    do: "next_service_cycle: service #{service.id} is part of a next_service_id cycle"

  defp self_linked_service! do
    service = service!()
    route!(service, service)
    service
  end

  defp blocked_error(season, lines),
    do: Enum.join(["study year roll blocked for season #{season}" | lines], "\n")

  defp sorted_error_lines(%{error: error}), do: error |> String.split("\n") |> Enum.sort()

  describe "date gate" do
    for {label, day} <- [{"10 September", 10}, {"12 September", 12}] do
      test "does nothing on #{label} Cairo" do
        pupil = one_pupil_world()

        @season |> Date.new!(9, unquote(day)) |> Roll.run_when_due()

        assert study_year_of(pupil) == 1
        assert Roll.runs(@season) == []
      end
    end

    test "rolls on 11 September Cairo and records the step counts as succeeded" do
      pupil = one_pupil_world()

      @season |> nayrouz() |> Roll.run_when_due()

      assert study_year_of(pupil) == 2

      assert Roll.runs(@season) == [
               %{
                 status: :succeeded,
                 error: nil,
                 step_counts: %{
                   @no_change_counts
                   | "advance_persons_study_years" => 1,
                     "advance_classes_study_years" => 1,
                     "services_missing_first_grade_class" => 1
                 }
               }
             ]
    end

    test "rolls the season of the year today falls in" do
      one_pupil_world()

      2031 |> nayrouz() |> Roll.run_when_due()

      assert [%{status: :succeeded}] = Roll.runs(2031)
      assert Roll.runs(@season) == []
    end
  end

  describe "idempotency" do
    test "a second call on the same day after a success changes nothing" do
      pupil = one_pupil_world()

      @season |> nayrouz() |> Roll.run_when_due()
      @season |> nayrouz() |> Roll.run_when_due()

      assert study_year_of(pupil) == 2
      assert [%{status: :succeeded}] = Roll.runs(@season)
    end

    test "a direct run of a rolled season is skipped" do
      pupil = one_pupil_world()
      @season |> nayrouz() |> Roll.run_when_due()

      assert Roll.run(@season) == {:ok, :skipped_already_rolled}
      assert study_year_of(pupil) == 2
      assert [%{status: :succeeded}] = Roll.runs(@season)
    end

    test "a direct run returns the counts it records" do
      one_pupil_world()

      assert {:ok, counts} = Roll.run(@season)
      assert [%{status: :succeeded, step_counts: ^counts}] = Roll.runs(@season)
    end
  end

  describe "failure recording" do
    test "a blocked roll changes nothing and records failed with the blocker detail" do
      pupil = one_pupil_world()
      looping = self_linked_service!()

      @season |> nayrouz() |> Roll.run_when_due()

      assert study_year_of(pupil) == 1

      assert Roll.runs(@season) == [
               %{
                 status: :failed,
                 error: blocked_error(@season, [cycle_blocker_line(looping)]),
                 step_counts: nil
               }
             ]
    end

    test "a direct run that is blocked returns the failure and records nothing" do
      pupil = one_pupil_world()
      looping = self_linked_service!()

      assert Roll.run(@season) ==
               {:error,
                %{
                  message: "study year roll blocked for season #{@season}",
                  detail: cycle_blocker_line(looping)
                }}

      assert study_year_of(pupil) == 1
      assert Roll.runs(@season) == []
    end

    test "a second failure replaces the error on the season's one failed row" do
      one_pupil_world()
      first = self_linked_service!()
      @season |> nayrouz() |> Roll.run_when_due()

      second = self_linked_service!()
      @season |> nayrouz() |> Roll.run_when_due()

      assert [%{status: :failed} = failed] = Roll.runs(@season)

      assert sorted_error_lines(failed) ==
               @season
               |> blocked_error([cycle_blocker_line(first), cycle_blocker_line(second)])
               |> String.split("\n")
               |> Enum.sort()
    end

    test "a failure does not block a later attempt the same day" do
      pupil = one_pupil_world()
      looping = self_linked_service!()
      @season |> nayrouz() |> Roll.run_when_due()

      route!(looping, nil)
      @season |> nayrouz() |> Roll.run_when_due()

      assert study_year_of(pupil) == 2
      assert [%{status: :failed}, %{status: :succeeded}] = Roll.runs(@season)
    end
  end

  describe "missed check" do
    test "records missed when the season has no success" do
      one_pupil_world()

      Roll.record_missed(~D[2026-09-12])

      assert Roll.runs(@season) == [
               %{
                 status: :missed,
                 error: "no successful roll recorded for season 2026 by 2026-09-12 Cairo",
                 step_counts: nil
               }
             ]
    end

    test "records nothing after a success" do
      one_pupil_world()
      @season |> nayrouz() |> Roll.run_when_due()

      Roll.record_missed(~D[2026-09-12])

      assert [%{status: :succeeded}] = Roll.runs(@season)
    end

    test "records missed next to the season's failure" do
      one_pupil_world()
      self_linked_service!()
      @season |> nayrouz() |> Roll.run_when_due()

      Roll.record_missed(~D[2026-09-12])

      assert [%{status: :failed}, %{status: :missed}] = Roll.runs(@season)
    end
  end

  describe "alert contract: one failed and one missed row per season" do
    test "hourly failures and repeated missed checks leave one row of each" do
      one_pupil_world()
      self_linked_service!()

      for _hour <- 1..3, do: @season |> nayrouz() |> Roll.run_when_due()
      for _check <- 1..2, do: Roll.record_missed(~D[2026-09-12])

      assert [%{status: :failed}, %{status: :missed}] = Roll.runs(@season)
    end
  end
end
