defmodule ChurchAdmin.Operations.StudyYearRollScheduleTest do
  use ChurchAdmin.DataCase, async: false
  use Oban.Testing, repo: ChurchAdmin.Repo

  import ChurchAdmin.Factory
  import ChurchAdmin.Operations.StudyYearRollWorld

  alias ChurchAdmin.Authz.Actor
  alias ChurchAdmin.Notifications.StudyYearRollAlert
  alias ChurchAdmin.Operations.StudyYearRollRun
  alias ChurchAdmin.Operations.StudyYearRollUnderTest, as: Roll

  require Ash.Query

  @season 2026

  defp one_pupil_world do
    study_years!(1..3)
    service = graded_service!(1, 3)
    pupil!(service, 1)
    committed!()
  end

  defp blocked_world do
    one_pupil_world()
    looping = service!()
    route!(looping, looping)
    committed!()
  end

  defp run_id(status) do
    StudyYearRollRun
    |> Ash.Query.filter(season_year == ^@season and status == ^status)
    |> Ash.read_one!(actor: Actor.system())
    |> Map.fetch!(:id)
  end

  defp alerted_run_ids do
    for job <- all_enqueued(worker: StudyYearRollAlert), do: job.args["run_id"]
  end

  describe "alerts" do
    test "a failed season alerts once, however many hourly attempts fail" do
      blocked_world()

      for _hour <- 1..3, do: Roll.run_when_due(nayrouz(@season))

      assert alerted_run_ids() == [run_id("failed")]
    end

    test "a missed season alerts once, however many checks run" do
      one_pupil_world()

      for _check <- 1..2, do: Roll.record_missed(~D[2026-09-12])

      assert alerted_run_ids() == [run_id("missed")]
    end

    test "a successful roll does not alert" do
      one_pupil_world()

      Roll.run_when_due(nayrouz(@season))

      assert alerted_run_ids() == []
    end

    test "the alert job completes" do
      assert :ok = perform_job(StudyYearRollAlert, %{run_id: 1})
    end
  end

  describe "schedule" do
    test "AshOban fires the roll hourly on 11 September and the missed check on 12 September, as the system actor" do
      schedules =
        for schedule <- AshOban.Info.oban_scheduled_actions(StudyYearRollRun),
            do: {schedule.cron, schedule.action, schedule.default_actor}

      assert Enum.sort(schedules) ==
               Enum.sort([
                 {"0 * 11 9 *", :run_when_due, Actor.system()},
                 {"0 6 12 9 *", :record_missed, Actor.system()}
               ])
    end

    test "without a date the actions read today's Cairo date from Postgres" do
      %{rows: [[cairo_today]]} =
        Repo.query!("select (now() at time zone 'Africa/Cairo')::date")

      :ok =
        StudyYearRollRun
        |> Ash.ActionInput.for_action(:record_missed, %{}, actor: Actor.system())
        |> Ash.run_action()

      assert [%{status: :missed, error: error}] = Roll.runs(cairo_today.year)

      assert error ==
               "no successful roll recorded for season #{cairo_today.year} by #{cairo_today} Cairo"
    end

    test "only the system actor may run the roll" do
      user = user!()
      actor = ChurchAdmin.Authz.ActorLoader.load(user.uid)

      assert {:error, %Ash.Error.Forbidden{}} =
               StudyYearRollRun
               |> Ash.ActionInput.for_action(:run, %{season: @season}, actor: actor)
               |> Ash.run_action()
    end
  end
end
