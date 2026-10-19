defmodule ChurchAdmin.Operations.StudyYearRoll do
  @moduledoc """
  The annual study-year roll (`docs/technical-decisions/study-year-roll.md`),
  behind the generic actions of `ChurchAdmin.Operations.StudyYearRollRun`:

    * `run/1` is the atomic unit, called inside the action's transaction. It
      takes the roll's advisory lock and `share row exclusive` locks, skips a
      season that already succeeded, aborts on blockers, applies the plan,
      checks the person invariants and records `succeeded` with the counts.
    * `run_when_due/1` gates on 11 September in Cairo, runs the roll and,
      when it fails, records `failed` in a transaction of its own.
    * `record_missed/1` records `missed` unless the season succeeded or
      already recorded it.
  """

  alias ChurchAdmin.Authz.Actor

  alias ChurchAdmin.Operations.StudyYearRoll.{
    Apply,
    Blockers,
    Failure,
    Invariants,
    Plan,
    Snapshot
  }

  alias ChurchAdmin.Operations.StudyYearRollRun
  alias ChurchAdmin.Repo

  require Ash.Query

  @rolled_tables ~w(
    public.study_years public.services public.persons public.persons_services
    public.persons_groups public.classes auth.users_admin_on
  )

  @spec run(integer()) ::
          {:ok, %{String.t() => non_neg_integer()} | :skipped_already_rolled}
          | {:error, Failure.t()}
  def run(season) do
    Repo.query!("select pg_advisory_xact_lock(hashtext('operations.study_year_roll'))")
    Repo.query!("lock table #{Enum.join(@rolled_tables, ", ")} in share row exclusive mode")

    if season_recorded?(season, ["succeeded"]) do
      {:ok, :skipped_already_rolled}
    else
      roll(season)
    end
  end

  defp roll(season) do
    snapshot = Snapshot.read!()
    plan = Plan.build(snapshot)

    case Blockers.find(snapshot, plan) do
      [] ->
        step_counts = Apply.apply!(plan)

        with :ok <- Invariants.check(Invariants.written_by(plan)) do
          step_counts = Map.new(step_counts)
          create_run!(:create_succeeded_run, season, %{step_counts: step_counts})
          {:ok, step_counts}
        end

      blockers ->
        {:error,
         Failure.exception(
           message: "study year roll blocked for season #{season}",
           detail: Enum.map_join(blockers, "\n", &"#{&1.issue_code}: #{&1.detail}")
         )}
    end
  end

  @spec blockers() :: [Blockers.blocker()]
  def blockers do
    snapshot = Snapshot.read!()
    Blockers.find(snapshot, Plan.build(snapshot))
  end

  @spec run_when_due(Date.t() | nil) :: :ok
  def run_when_due(today) do
    today = today || cairo_today()
    season = today.year

    if today == nayrouz(season) and not season_recorded?(season, ["succeeded"]) do
      case run_action(:run, %{season: season}) do
        {:ok, _result} -> :ok
        {:error, error} -> record_failure!(season, recorded_error(error))
      end
    end

    :ok
  end

  @spec record_failure(integer(), String.t()) :: :ok
  def record_failure(season, error) do
    Repo.query!(
      "select pg_advisory_xact_lock(hashtext('operations.study_year_roll_failure'), $1)",
      [season]
    )

    StudyYearRollRun
    |> Ash.Query.filter(season_year == ^season and status == "failed")
    |> Ash.read_one!(actor: Actor.system())
    |> case do
      nil ->
        create_run!(:create_failed_run, season, %{error: error})

      failed_run ->
        failed_run
        |> Ash.Changeset.for_update(:replace_failed_run_error, %{error: error},
          actor: Actor.system()
        )
        |> Ash.update!()
    end

    :ok
  end

  @spec record_missed(Date.t() | nil) :: :ok
  def record_missed(today) do
    today = today || cairo_today()
    season = today.year

    if not season_recorded?(season, ["succeeded", "missed"]) do
      create_run!(:create_missed_run, season, %{
        error: "no successful roll recorded for season #{season} by #{today} Cairo"
      })
    end

    :ok
  end

  defp record_failure!(season, error) do
    :ok = run_action(:record_failure, %{season: season, error: error})
  end

  defp recorded_error(error) do
    case failure_in(error) do
      nil -> Exception.message(error)
      failure -> Failure.recorded_error(failure)
    end
  end

  @spec failure_in(Exception.t()) :: Failure.t() | nil
  def failure_in(%Failure{} = failure), do: failure

  def failure_in(%{errors: errors}) when is_list(errors),
    do: Enum.find_value(errors, &failure_in/1)

  def failure_in(_error), do: nil

  defp run_action(action, arguments) do
    StudyYearRollRun
    |> Ash.ActionInput.for_action(action, arguments, actor: Actor.system())
    |> Ash.run_action()
  rescue
    error -> {:error, error}
  end

  defp season_recorded?(season, statuses) do
    StudyYearRollRun
    |> Ash.Query.filter(season_year == ^season and status in ^statuses)
    |> Ash.exists?(actor: Actor.system())
  end

  defp create_run!(action, season, attributes) do
    StudyYearRollRun
    |> Ash.Changeset.for_create(action, Map.put(attributes, :season_year, season),
      actor: Actor.system()
    )
    |> Ash.create!()
  end

  defp nayrouz(season), do: Date.new!(season, 9, 11)

  defp cairo_today do
    %{rows: [[today]]} = Repo.query!("select (now() at time zone 'Africa/Cairo')::date")
    today
  end
end
