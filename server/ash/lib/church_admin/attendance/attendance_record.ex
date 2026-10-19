defmodule ChurchAdmin.Attendance.AttendanceRecord do
  use Ash.Resource,
    domain: ChurchAdmin.Attendance,
    data_layer: AshPostgres.DataLayer,
    extensions: [AshGraphql.Resource]

  alias ChurchAdmin.Accounts.User
  alias ChurchAdmin.Attendance.Meeting
  alias ChurchAdmin.People.Person

  graphql do
    type :attendance_record
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
    defaults [:read]
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
