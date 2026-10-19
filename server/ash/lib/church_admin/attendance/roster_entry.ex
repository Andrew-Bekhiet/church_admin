defmodule ChurchAdmin.Attendance.RosterEntry do
  use Ash.Resource,
    domain: ChurchAdmin.Attendance,
    data_layer: AshPostgres.DataLayer,
    extensions: [AshGraphql.Resource]

  alias ChurchAdmin.Attendance.{AttendanceRecord, Meeting}
  alias ChurchAdmin.People.Person
  alias ChurchAdmin.Types.Text

  graphql do
    type :roster_entry
  end

  postgres do
    migrate? false
    schema "history"
    table "meeting_roster"
    repo ChurchAdmin.Repo
  end

  actions do
    defaults [:read]
  end

  attributes do
    attribute :meeting_id, :uuid, primary_key?: true, allow_nil?: false, public?: true
    attribute :person_id, :uuid, primary_key?: true, allow_nil?: false, public?: true
    attribute :as_servant, :boolean, primary_key?: true, allow_nil?: false, public?: true
    attribute :service_id, :uuid
    attribute :group_id, :uuid
    attribute :name, Text, public?: true
    attribute :gender, :boolean, public?: true
    attribute :study_year_id, :integer, public?: true
    attribute :study_year_name, Text, public?: true
    attribute :color, :integer, public?: true
    attribute :photo_updated_at, AshPostgres.TimestamptzUsec, public?: true
    attribute :blurhash, Text, public?: true
    attribute :phones, {:array, Text}, public?: true
  end

  relationships do
    has_many :attendance_records, AttendanceRecord,
      no_attributes?: true,
      public?: true,
      filter:
        expr(
          meeting_id == parent(meeting_id) and person_id == parent(person_id) and
            as_servant == parent(as_servant)
        )

    belongs_to :meeting, Meeting, define_attribute?: false, public?: true
    belongs_to :person, Person, define_attribute?: false, public?: true
  end
end
