defmodule ChurchAdmin.Activity.ActivityDay do
  use Ash.Resource,
    domain: ChurchAdmin.Activity,
    data_layer: AshPostgres.DataLayer,
    authorizers: [Ash.Policy.Authorizer],
    extensions: [AshGraphql.Resource]

  alias ChurchAdmin.Activity.{Confession, Kodas}
  alias ChurchAdmin.Authz.Checks.{HasPermission, Onboarded, System}

  graphql do
    type :activity_day

    relationships [:confessions, :kodases]

    queries do
      get :activity_day, :read
      list :activity_days, :read
    end
  end

  postgres do
    schema "history"
    table "attendance_days"
    repo ChurchAdmin.Repo
    migration_defaults day: ~S[fragment("now()")]
  end

  actions do
    read :read do
      primary? true

      pagination keyset?: true,
                 countable: true,
                 required?: false,
                 default_limit: 100,
                 max_page_size: 1000
    end

    create :ensure_attendance_day do
      accept [:day]
      upsert? true
      upsert_fields [:day]
    end
  end

  policies do
    bypass System do
      authorize_if always()
    end

    policy action_type(:read) do
      authorize_if Onboarded
    end

    policy action_type(:create) do
      authorize_if {HasPermission, name: "approved"}
    end
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
