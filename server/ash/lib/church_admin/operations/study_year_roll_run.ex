defmodule ChurchAdmin.Operations.StudyYearRollRun do
  @moduledoc """
  One recorded outcome of the study-year roll per row (`succeeded`, `failed`
  or `missed`), and the roll's entry points as generic actions for the system
  actor only. AshOban fires `:run_when_due` hourly through 11 September and
  `:record_missed` on 12 September, both in UTC; the actions decide from the
  Cairo date. See `ChurchAdmin.Operations.StudyYearRoll`.
  """

  use Ash.Resource,
    domain: ChurchAdmin.Operations,
    data_layer: AshPostgres.DataLayer,
    authorizers: [Ash.Policy.Authorizer],
    extensions: [AshOban]

  alias ChurchAdmin.Authz.Checks.System
  alias ChurchAdmin.Operations.Changes.EnqueueStudyYearRollAlert
  alias ChurchAdmin.Operations.StudyYearRoll
  alias ChurchAdmin.Types.Text

  postgres do
    schema "operations"
    table "study_year_roll_runs"
    repo ChurchAdmin.Repo
    migration_types id: :bigint, season_year: :integer
    migration_defaults recorded_at: ~S[fragment("now()")]

    identity_index_names one_failure_per_season: "study_year_roll_runs_one_failure_per_season",
                         one_success_per_season: "study_year_roll_runs_one_success_per_season"

    identity_wheres_to_sql one_failure_per_season: "(status = 'failed'::text)",
                           one_success_per_season: "(status = 'succeeded'::text)"
  end

  oban do
    scheduled_actions do
      schedule :roll, "0 * 11 9 *" do
        action :run_when_due
        queue :study_year_roll
        default_actor ChurchAdmin.Authz.Actor.system()
        worker_module_name ChurchAdmin.Operations.StudyYearRollRun.RollWorker
      end

      schedule :missed_check, "0 6 12 9 *" do
        action :record_missed
        queue :study_year_roll
        default_actor ChurchAdmin.Authz.Actor.system()
        worker_module_name ChurchAdmin.Operations.StudyYearRollRun.MissedCheckWorker
      end
    end
  end

  actions do
    defaults [:read]

    action :run_when_due do
      argument :today, :date
      transaction? false
      run fn input, _context -> StudyYearRoll.run_when_due(input.arguments[:today]) end
    end

    action :record_missed do
      argument :today, :date
      transaction? true
      run fn input, _context -> StudyYearRoll.record_missed(input.arguments[:today]) end
    end

    action :run, :term do
      argument :season, :integer, allow_nil?: false
      transaction? true
      run fn input, _context -> StudyYearRoll.run(input.arguments.season) end
    end

    action :blockers, {:array, :map} do
      run fn _input, _context -> {:ok, StudyYearRoll.blockers()} end
    end

    action :record_failure do
      argument :season, :integer, allow_nil?: false
      argument :error, Text, allow_nil?: false
      transaction? true

      run fn input, _context ->
        StudyYearRoll.record_failure(input.arguments.season, input.arguments.error)
      end
    end

    create :create_succeeded_run do
      accept [:season_year, :step_counts]
      change set_attribute(:status, "succeeded")
    end

    create :create_failed_run do
      accept [:season_year, :error]
      change set_attribute(:status, "failed")
      change EnqueueStudyYearRollAlert
    end

    create :create_missed_run do
      accept [:season_year, :error]
      change set_attribute(:status, "missed")
      change EnqueueStudyYearRollAlert
    end

    update :replace_failed_run_error do
      accept [:error]
      change atomic_update(:recorded_at, expr(now()))
    end

    update :mark_notified do
      accept []
      change atomic_update(:notified_at, expr(now()))
    end
  end

  policies do
    bypass System do
      authorize_if always()
    end
  end

  attributes do
    attribute :id, :integer,
      primary_key?: true,
      allow_nil?: false,
      generated?: true,
      writable?: false

    attribute :season_year, :integer, allow_nil?: false
    attribute :status, Text, allow_nil?: false

    attribute :recorded_at, AshPostgres.TimestamptzUsec,
      allow_nil?: false,
      default: &DateTime.utc_now/0

    attribute :error, Text
    attribute :step_counts, :map
    attribute :notified_at, AshPostgres.TimestamptzUsec
  end

  identities do
    identity :one_failure_per_season, [:season_year], where: expr(status == "failed")
    identity :one_success_per_season, [:season_year], where: expr(status == "succeeded")
  end
end
