defmodule ChurchAdmin.Attendance.AttendanceRecord do
  use Ash.Resource,
    domain: ChurchAdmin.Attendance,
    data_layer: AshPostgres.DataLayer,
    authorizers: [Ash.Policy.Authorizer],
    extensions: [AshGraphql.Resource]

  alias ChurchAdmin.Accounts.User
  alias ChurchAdmin.Attendance.Meeting
  alias ChurchAdmin.Authz.Checks.{RelatedInScope, System}
  alias ChurchAdmin.People.Person

  graphql do
    type :attendance_record

    relationships [:meeting, :person, :recorded_by_user]

    queries do
      list :attendance_records, :read
    end
  end

  postgres do
    schema "history"
    table "attendance_history"
    repo ChurchAdmin.Repo

    migration_defaults datetime: ~S[fragment("now()")],
                       recorded_by:
                         ~S[fragment("(((current_setting('hasura.user'::text, true))::json ->> 'x-hasura-user-id'::text))::uuid")]

    identity_index_names unique_attendance_per_day_meeting_person_and_role:
                           "attendance_history_meeting_person_day_idx"

    references do
      reference :meeting, on_delete: :restrict, on_update: :update
      reference :person, on_delete: :nothing, on_update: :update
      reference :recorded_by_user, on_delete: :nothing, on_update: :update
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
  end

  policies do
    bypass System do
      authorize_if always()
    end

    bypass actor_attribute_equals(:read_all?, true) do
      authorize_if always()
    end

    policy action_type(:read) do
      authorize_if {RelatedInScope, path: :meeting, entity: :meeting, access: :admin}
    end

    policy action_type(:read) do
      authorize_if {RelatedInScope, path: :person, entity: :person, access: :read}
      authorize_if expr(as_servant)
    end
  end

  attributes do
    attribute :id, :uuid,
      primary_key?: true,
      allow_nil?: false,
      default: &Ash.UUID.generate/0,
      public?: true

    attribute :meeting_id, :uuid, allow_nil?: false, public?: true
    attribute :person_id, :uuid, allow_nil?: false, public?: true

    attribute :datetime, AshPostgres.TimestamptzUsec,
      allow_nil?: false,
      default: &DateTime.utc_now/0,
      public?: true

    attribute :as_servant, :boolean, allow_nil?: false, default: false, public?: true
    attribute :recorded_by, :uuid, allow_nil?: false, generated?: true, public?: true
    attribute :day, :date, generated?: true, writable?: false, public?: true
  end

  relationships do
    belongs_to :meeting, Meeting, define_attribute?: false, public?: true
    belongs_to :person, Person, define_attribute?: false, public?: true

    belongs_to :recorded_by_user, User,
      source_attribute: :recorded_by,
      destination_attribute: :uid,
      define_attribute?: false,
      public?: true
  end

  identities do
    identity :unique_attendance_per_day_meeting_person_and_role, [
      :day,
      :meeting_id,
      :person_id,
      :as_servant
    ]
  end
end
