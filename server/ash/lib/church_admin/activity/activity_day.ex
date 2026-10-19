defmodule ChurchAdmin.Activity.ActivityDay do
  use Ash.Resource,
    domain: ChurchAdmin.Activity,
    data_layer: AshPostgres.DataLayer,
    extensions: [AshGraphql.Resource]

  alias ChurchAdmin.Activity.{Confession, Kodas}

  graphql do
    type :activity_day
  end

  postgres do
    schema "history"
    table "attendance_days"
    repo ChurchAdmin.Repo
    migration_defaults day: ~S[fragment("now()")]
  end

  actions do
    defaults [:read]
  end

  attributes do
    attribute :day, :date, primary_key?: true, allow_nil?: false, generated?: true, public?: true
  end

  relationships do
    has_many :confessions, Confession,
      destination_attribute: :day_id,
      source_attribute: :day,
      public?: true

    has_many :kodases, Kodas,
      destination_attribute: :day_id,
      source_attribute: :day,
      public?: true
  end
end
