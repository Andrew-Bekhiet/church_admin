defmodule ChurchAdmin.Attendance.MeetingDay do
  use Ash.Resource,
    domain: ChurchAdmin.Attendance,
    data_layer: AshPostgres.DataLayer,
    authorizers: [Ash.Policy.Authorizer],
    extensions: [AshGraphql.Resource]

  alias ChurchAdmin.Attendance.Meeting
  alias ChurchAdmin.Authz.Checks.{RelatedInScope, System}
  alias ChurchAdmin.Catalog.StudyYear

  graphql do
    type :meeting_day

    relationships [:meeting]
    nullable_fields [:study_year_id]
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
