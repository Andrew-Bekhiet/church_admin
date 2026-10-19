defmodule ChurchAdmin.Organization.Group do
  use Ash.Resource,
    domain: ChurchAdmin.Organization,
    data_layer: AshPostgres.DataLayer,
    extensions: [AshGraphql.Resource]

  alias ChurchAdmin.Accounts.{ScopeGrant, User}
  alias ChurchAdmin.Activity.{Edit, LatestEdit}
  alias ChurchAdmin.Attendance.Meeting
  alias ChurchAdmin.Organization.Service
  alias ChurchAdmin.People.{GroupMembership, Person}
  alias ChurchAdmin.Types.{DateRange, Text}

  graphql do
    type :group
  end

  postgres do
    table "groups"
    repo ChurchAdmin.Repo
    migration_types color: :bigint
    identity_index_names unique_default_meeting_id: "groups_default_meeting_id_key"

    references do
      reference :default_meeting, on_delete: :nilify, on_update: :update
      reference :deleted_by_user, on_delete: :restrict, on_update: :restrict
      reference :service, on_delete: :restrict, on_update: :restrict
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
    attribute :service_id, :uuid, allow_nil?: false, public?: true
    attribute :validity, DateRange, public?: true
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

    belongs_to :service, Service, define_attribute?: false, public?: true
    has_many :meetings, Meeting, destination_attribute: :group_id, public?: true
    has_many :group_memberships, GroupMembership, destination_attribute: :group_id, public?: true

    many_to_many :persons, Person,
      through: GroupMembership,
      source_attribute_on_join_resource: :group_id,
      destination_attribute_on_join_resource: :person_id,
      public?: true

    has_many :scope_grants, ScopeGrant, destination_attribute: :admin_on_group, public?: true

    has_one :latest_edit, LatestEdit,
      destination_attribute: :record_id,
      filter: expr(table == "groups"),
      public?: true

    has_many :edits, Edit,
      destination_attribute: :record_id,
      filter: expr(table == "groups"),
      public?: true
  end

  identities do
    identity :unique_default_meeting_id, [:default_meeting_id]
  end
end
