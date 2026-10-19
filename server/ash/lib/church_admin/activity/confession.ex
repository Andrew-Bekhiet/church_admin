defmodule ChurchAdmin.Activity.Confession do
  use Ash.Resource,
    domain: ChurchAdmin.Activity,
    data_layer: AshPostgres.DataLayer,
    extensions: [AshGraphql.Resource],
    fragments: [ChurchAdmin.Authz.Fragments.PersonChild]

  alias ChurchAdmin.Accounts.User
  alias ChurchAdmin.Activity.ActivityDay
  alias ChurchAdmin.Activity.Changes.EnsureAttendanceDay
  alias ChurchAdmin.Authz.Checks.System
  alias ChurchAdmin.Changes.StampActor
  alias ChurchAdmin.People.Person

  graphql do
    type :confession

    relationships [:day, :person, :user]

    queries do
      get :confession, :read
      list :confessions, :read
    end

    mutations do
      create :record_confession, :record_confession
    end
  end

  postgres do
    schema "history"
    table "confession_history"
    repo ChurchAdmin.Repo

    migration_defaults recorded_by:
                         ~S[fragment("(((current_setting('hasura.user'::text, true))::json ->> 'x-hasura-user-id'::text))::uuid")]

    identity_index_names unique_day_id_person_id: "confession_history_day_id_person_id_key"

    references do
      reference :day, on_delete: :restrict, on_update: :restrict
      reference :person, on_delete: :restrict, on_update: :restrict
      reference :user, on_delete: :restrict, on_update: :restrict
    end
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

    create :record_confession do
      accept [:person_id]
      upsert? true
      upsert_identity :unique_day_id_person_id
      upsert_fields []
      return_skipped_upsert? true

      argument :day, :date, allow_nil?: false

      change set_attribute(:day_id, arg(:day))
      change EnsureAttendanceDay
      change {StampActor, attribute: :recorded_by}
    end
  end

  policies do
    bypass System do
      authorize_if always()
    end
  end

  attributes do
    attribute :id, :uuid,
      primary_key?: true,
      allow_nil?: false,
      default: &Ash.UUID.generate/0,
      public?: true

    attribute :day_id, :date, allow_nil?: false, public?: true
    attribute :person_id, :uuid, allow_nil?: false, public?: true
    attribute :recorded_by, :uuid, allow_nil?: false, generated?: true, public?: true
    attribute :time, :date, generated?: true, writable?: false, public?: true
  end

  relationships do
    belongs_to :day, ActivityDay,
      destination_attribute: :day,
      define_attribute?: false,
      public?: true

    belongs_to :person, Person, define_attribute?: false, public?: true

    belongs_to :user, User,
      source_attribute: :recorded_by,
      destination_attribute: :uid,
      define_attribute?: false,
      public?: true
  end

  identities do
    identity :unique_day_id_person_id, [:day_id, :person_id]
  end
end
