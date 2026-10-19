defmodule ChurchAdmin.Attendance.Meeting do
  use Ash.Resource,
    domain: ChurchAdmin.Attendance,
    data_layer: AshPostgres.DataLayer,
    extensions: [AshGraphql.Resource]

  alias ChurchAdmin.Attendance.{AttendanceRecord, MeetingAudience, MeetingDay, RosterEntry}
  alias ChurchAdmin.Catalog.StudyYear
  alias ChurchAdmin.Organization.{Group, Service}
  alias ChurchAdmin.Types.Text

  graphql do
    type :meeting
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
    defaults [:read]
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
end
