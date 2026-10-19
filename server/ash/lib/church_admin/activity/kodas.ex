defmodule ChurchAdmin.Activity.Kodas do
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
  alias ChurchAdmin.History.Changes.RecordEdit
  alias ChurchAdmin.People.Person

  graphql do
    type :kodas

    relationships [:day, :person, :user]

    queries do
      get :kodas, :read
      list :kodases, :read
    end

    mutations do
      create :record_kodas, :record_kodas
      destroy :delete_kodas, :delete_kodas
    end
  end

  postgres do
    schema "history"
    table "kodas_history"
    repo ChurchAdmin.Repo

    identity_index_names unique_day_id_person_id: "kodas_history_day_id_person_id_key"

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

    create :record_kodas do
      accept [:person_id]
      upsert? true
      upsert_identity :unique_day_id_person_id
      upsert_condition expr(false)
      return_skipped_upsert? true

      argument :day, :date, allow_nil?: false

      change set_attribute(:day_id, arg(:day))
      change EnsureAttendanceDay
      change {StampActor, attribute: :recorded_by}

      change {RecordEdit,
              table: "persons", record_id: :person_id, recorded_by: {:attribute, :recorded_by}}
    end

    destroy :delete_kodas do
      primary? true
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
