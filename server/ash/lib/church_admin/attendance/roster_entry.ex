defmodule ChurchAdmin.Attendance.RosterEntry do
  use Ash.Resource,
    domain: ChurchAdmin.Attendance,
    data_layer: AshPostgres.DataLayer,
    authorizers: [Ash.Policy.Authorizer],
    extensions: [AshGraphql.Resource],
    primary_read_warning?: false

  alias ChurchAdmin.Attendance.{AttendanceRecord, Meeting}
  alias ChurchAdmin.Authz.Checks.{HoldsRosterGrant, RelatedInScope, System}
  alias ChurchAdmin.People.Person
  alias ChurchAdmin.Types.Text

  graphql do
    type :roster_entry

    relationships [:attendance_records, :meeting, :person]

    queries do
      list :roster_entries, :read
    end
  end

  postgres do
    migrate? false
    schema "history"
    table "meeting_roster"
    repo ChurchAdmin.Repo
  end

  actions do
    read :read do
      primary? true
      prepare build(distinct: [:meeting_id, :person_id, :as_servant])

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
      authorize_if expr(as_servant)
      authorize_if HoldsRosterGrant
    end
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
