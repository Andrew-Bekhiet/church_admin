defmodule ChurchAdmin.Attendance.MeetingDay do
  use Ash.Resource,
    domain: ChurchAdmin.Attendance,
    data_layer: AshPostgres.DataLayer,
    extensions: [AshGraphql.Resource]

  alias ChurchAdmin.Attendance.Meeting
  alias ChurchAdmin.Catalog.StudyYear

  graphql do
    type :meeting_day
  end

  postgres do
    migrate? false
    schema "history"
    table "meeting_days"
    repo ChurchAdmin.Repo
  end

  actions do
    defaults [:read]
  end

  attributes do
    attribute :meeting_id, :uuid, primary_key?: true, allow_nil?: false, public?: true
    attribute :day, :date, primary_key?: true, allow_nil?: false, public?: true
    attribute :study_year_id, :integer, primary_key?: true, allow_nil?: false, public?: true
    attribute :gender, :boolean, primary_key?: true, allow_nil?: false, public?: true
    attribute :persons_count, :integer, public?: true
    attribute :servants_count, :integer, public?: true
    attribute :total_count, :integer, public?: true
  end

  relationships do
    belongs_to :meeting, Meeting, define_attribute?: false, public?: true

    belongs_to :study_year, StudyYear,
      source_attribute: :study_year_id,
      destination_attribute: :order,
      define_attribute?: false,
      public?: true
  end
end
