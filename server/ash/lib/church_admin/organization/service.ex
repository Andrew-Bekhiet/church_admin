defmodule ChurchAdmin.Organization.Service do
  use Ash.Resource,
    domain: ChurchAdmin.Organization,
    data_layer: AshPostgres.DataLayer,
    extensions: [AshGraphql.Resource]

  alias ChurchAdmin.Accounts.{ScopeGrant, User}
  alias ChurchAdmin.Activity.{Edit, LatestEdit}
  alias ChurchAdmin.Attendance.Meeting
  alias ChurchAdmin.Catalog.StudyYear
  alias ChurchAdmin.Organization.{Class, Group}
  alias ChurchAdmin.People.{Person, ServiceMembership}
  alias ChurchAdmin.Types.Text

  graphql do
    type :service
  end

  postgres do
    table "services"
    repo ChurchAdmin.Repo
    migration_types study_year_from_id: :smallint, study_year_to_id: :smallint, color: :bigint

    identity_index_names unique_default_meeting_id: "services_default_meeting_id_key",
                         unique_name: "services_name_key"

    references do
      reference :default_meeting, on_delete: :nilify, on_update: :update
      reference :deleted_by_user, on_delete: :restrict, on_update: :restrict

      reference :next_service,
        on_delete: :nilify,
        on_update: :restrict,
        name: "services_next_service_fkey"

      reference :study_year_from,
        on_delete: :restrict,
        on_update: :nothing,
        name: "services_study_year_from_fkey"

      reference :study_year_to,
        on_delete: :restrict,
        on_update: :nothing,
        name: "services_study_year_to_fkey"
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
    attribute :study_year_from_id, :integer, public?: true
    attribute :study_year_to_id, :integer, public?: true
    attribute :next_service_id, :uuid, public?: true
    attribute :color, :integer, public?: true
    attribute :photo_updated_at, AshPostgres.TimestamptzUsec, public?: true
    attribute :blurhash, Text, public?: true
    attribute :deleted_at, AshPostgres.TimestamptzUsec
    attribute :deleted_by, :uuid
    attribute :default_meeting_id, :uuid, public?: true
  end

  relationships do
    belongs_to :default_meeting, Meeting, define_attribute?: false, public?: true

    belongs_to :deleted_by_user, User,
      source_attribute: :deleted_by,
      destination_attribute: :uid,
      define_attribute?: false

    belongs_to :next_service, __MODULE__, define_attribute?: false, public?: true

    belongs_to :study_year_from, StudyYear,
      destination_attribute: :order,
      define_attribute?: false,
      public?: true

    belongs_to :study_year_to, StudyYear,
      destination_attribute: :order,
      define_attribute?: false,
      public?: true

    has_many :classes, Class, destination_attribute: :service_id, public?: true
    has_many :groups, Group, destination_attribute: :service_id, public?: true
    has_many :meetings, Meeting, destination_attribute: :service_id, public?: true

    has_many :service_memberships, ServiceMembership,
      destination_attribute: :service_id,
      public?: true

    many_to_many :persons, Person,
      through: ServiceMembership,
      source_attribute_on_join_resource: :service_id,
      destination_attribute_on_join_resource: :person_id,
      public?: true

    has_many :scope_grants, ScopeGrant, destination_attribute: :admin_on_service, public?: true

    has_one :latest_edit, LatestEdit,
      destination_attribute: :record_id,
      filter: expr(table == "services"),
      public?: true

    has_many :edits, Edit,
      destination_attribute: :record_id,
      filter: expr(table == "services"),
      public?: true
  end

  identities do
    identity :unique_default_meeting_id, [:default_meeting_id]
    identity :unique_name, [:name]
  end
end
