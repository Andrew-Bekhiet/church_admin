defmodule ChurchAdmin.Operations.StudyYearRollRun do
  use Ash.Resource,
    domain: ChurchAdmin.Operations,
    data_layer: AshPostgres.DataLayer

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

  actions do
    defaults [:read]
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
  end

  identities do
    identity :one_failure_per_season, [:season_year], where: expr(status == "failed")
    identity :one_success_per_season, [:season_year], where: expr(status == "succeeded")
  end
end
