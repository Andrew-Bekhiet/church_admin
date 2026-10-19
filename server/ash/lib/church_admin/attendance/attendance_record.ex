defmodule ChurchAdmin.Attendance.AttendanceRecord do
  use Ash.Resource,
    domain: ChurchAdmin.Attendance,
    data_layer: AshPostgres.DataLayer,
    authorizers: [Ash.Policy.Authorizer],
    extensions: [AshGraphql.Resource]

  alias ChurchAdmin.Accounts.User
  alias ChurchAdmin.Attendance.{Meeting, RosterEntry}
  alias ChurchAdmin.Attendance.Validations.MeetingTakesAttendance
  alias ChurchAdmin.Authz.Checks.{MayRecordAttendance, OnRoster, RelatedInScope, System}
  alias ChurchAdmin.Changes.StampActor
  alias ChurchAdmin.Errors.{Codes, ConstraintCodes}
  alias ChurchAdmin.People.Person

  graphql do
    type :attendance_record

    relationships [:meeting, :person, :recorded_by_user, :user]

    queries do
      list :attendance_records, :read
    end

    mutations do
      create :mark_attendance, :mark_attendance
      update :update_attendance_time, :update_attendance_time
      destroy :unmark_attendance, :unmark_attendance
    end
  end

  postgres do
    schema "history"
    table "attendance_history"
    repo ChurchAdmin.Repo

    migration_defaults datetime: ~S[fragment("now()")]

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

    create :mark_attendance do
      accept [:meeting_id, :person_id, :datetime, :as_servant]

      change {StampActor, attribute: :recorded_by}
      validate MeetingTakesAttendance
    end

    update :update_attendance_time do
      accept [:datetime]
      require_atomic? false

      validate MeetingTakesAttendance
    end

    destroy :unmark_attendance
  end

  policies do
    bypass System do
      authorize_if always()
    end

    bypass [action_type(:read), actor_attribute_equals(:read_all?, true)] do
      authorize_if always()
    end

    policy action_type(:read) do
      authorize_if {RelatedInScope, path: :meeting, entity: :meeting, access: :admin}
    end

    policy action_type(:read) do
      authorize_if {RelatedInScope, path: :person, entity: :person, access: :read}
      authorize_if expr(as_servant)
    end

    policy action_type([:create, :update, :destroy]) do
      authorize_if OnRoster
    end

    policy action_type([:create, :update, :destroy]) do
      authorize_if MayRecordAttendance
    end
  end

  changes do
    change {ConstraintCodes,
            codes: %{
              "attendance_history_meeting_person_day_idx" => Codes.attendance_already_recorded(),
              "attendance_history_meeting_id_fkey" => Codes.attendance_meeting_not_found()
            }},
           on: [:create, :update]
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

    belongs_to :user, User,
      source_attribute: :recorded_by,
      destination_attribute: :uid,
      define_attribute?: false,
      public?: true

    has_one :roster_entry, RosterEntry,
      no_attributes?: true,
      filter:
        expr(
          meeting_id == parent(meeting_id) and person_id == parent(person_id) and
            as_servant == parent(as_servant)
        )
  end

  calculations do
    calculate :time, AshPostgres.TimestamptzUsec, expr(datetime), public?: true
  end

  aggregates do
    first :meeting_name, :meeting, :name, public?: true
    first :person_name, :person, :name, public?: true
    first :recorded_by_user_name, :recorded_by_user, :name, public?: true
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
