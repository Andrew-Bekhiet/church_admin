defmodule ChurchAdmin.Attendance.Meeting do
  use Ash.Resource,
    domain: ChurchAdmin.Attendance,
    data_layer: AshPostgres.DataLayer,
    authorizers: [Ash.Policy.Authorizer],
    extensions: [AshGraphql.Resource]

  alias ChurchAdmin.Attendance.{AttendanceRecord, MeetingAudience, MeetingDay, RosterEntry}
  alias ChurchAdmin.Attendance.Changes.ClearArchivedDefaultMeeting
  alias ChurchAdmin.Attendance.Validations.StudyYearWithinService
  alias ChurchAdmin.Authz.Changes.RecheckAfterUpdate
  alias ChurchAdmin.Authz.Checks.{InScope, MeetingWriteGate, System}
  alias ChurchAdmin.Catalog.StudyYear
  alias ChurchAdmin.Organization.{Group, Service}
  alias ChurchAdmin.Types.Text

  graphql do
    type :meeting

    relationships [:attendance_records, :days, :roster_entries, :service, :group, :study_year]

    queries do
      get :meeting, :read
      list :meetings, :read
    end

    mutations do
      create :create_meeting, :create_meeting
      update :update_meeting, :update_meeting
    end
  end

  postgres do
    schema "history"
    table "meetings"
    repo ChurchAdmin.Repo
    migration_types service_study_year: :integer, color: :bigint

    references do
      reference :group, on_delete: :delete, on_update: :restrict, name: "meetings_group_fkey"
      reference :service, on_delete: :delete, on_update: :restrict, name: "meetings_service_fkey"
      reference :study_year, on_delete: :restrict, on_update: :nothing
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

    create :create_meeting do
      accept [
        :name,
        :audience,
        :color,
        :is_archived,
        :show_kodas_checkbox,
        :service_id,
        :service_study_year,
        :service_gender,
        :group_id
      ]
    end

    update :update_meeting do
      accept [:name, :audience, :color, :is_archived, :show_kodas_checkbox]
      require_atomic? false

      change {RecheckAfterUpdate, check: {MeetingWriteGate, []}}
      change ClearArchivedDefaultMeeting
    end
  end

  policies do
    bypass System do
      authorize_if always()
    end

    policy action_type(:read) do
      authorize_if actor_attribute_equals(:read_all?, true)
      authorize_if {InScope, entity: :meeting, access: :admin}
    end

    policy action_type([:create, :update]) do
      authorize_if MeetingWriteGate
    end
  end

  validations do
    validate StudyYearWithinService, on: [:create, :update]
  end

  attributes do
    attribute :id, :uuid,
      primary_key?: true,
      allow_nil?: false,
      default: &Ash.UUID.generate/0,
      public?: true

    attribute :name, Text, allow_nil?: false, public?: true
    attribute :service_id, :uuid, public?: true
    attribute :service_study_year, :integer, public?: true
    attribute :service_gender, :boolean, public?: true
    attribute :group_id, :uuid, public?: true

    attribute :audience, MeetingAudience,
      allow_nil?: false,
      default: :persons_and_servants,
      public?: true

    attribute :is_archived, :boolean, allow_nil?: false, default: false, public?: true
    attribute :color, :integer, public?: true
    attribute :show_kodas_checkbox, :boolean, allow_nil?: false, default: true, public?: true
  end

  relationships do
    belongs_to :group, Group, define_attribute?: false, public?: true
    belongs_to :service, Service, define_attribute?: false, public?: true

    belongs_to :study_year, StudyYear,
      source_attribute: :service_study_year,
      destination_attribute: :order,
      define_attribute?: false,
      public?: true

    has_many :attendance_records, AttendanceRecord,
      destination_attribute: :meeting_id,
      public?: true

    has_many :days, MeetingDay, destination_attribute: :meeting_id, public?: true
    has_many :roster_entries, RosterEntry, destination_attribute: :meeting_id, public?: true
  end

  calculations do
    calculate :held_days,
              {:array, :date},
              expr(
                fragment(
                  "array(select distinct held.day from history.meeting_days as held where held.meeting_id = ? and held.day between ? and ? order by held.day)",
                  id,
                  ^arg(:from),
                  ^arg(:to)
                )
              ) do
      public? true
      argument :from, :date, allow_nil?: false
      argument :to, :date, allow_nil?: false
    end
  end
end
