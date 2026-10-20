defmodule ChurchAdmin.Organization.Group do
  use Ash.Resource,
    domain: ChurchAdmin.Organization,
    data_layer: AshPostgres.DataLayer,
    extensions: [AshGraphql.Resource, AshArchival.Resource],
    fragments: [
      ChurchAdmin.Authz.Fragments.ScopedEntity,
      ChurchAdmin.Archival.HideArchived,
      ChurchAdmin.Files.RecordsPhoto
    ]

  alias ChurchAdmin.Accounts.{ScopeGrant, User}
  alias ChurchAdmin.Activity.{Edit, LatestEdit}
  alias ChurchAdmin.Authz.Calculations.UserCanEdit
  alias ChurchAdmin.Attendance.Meeting
  alias ChurchAdmin.Authz.Checks.{ApprovedWithPermission, InScope, RelatedInScope, System}
  alias ChurchAdmin.Changes.StampActor
  alias ChurchAdmin.Errors.Codes
  alias ChurchAdmin.History.Changes.RecordEdit
  alias ChurchAdmin.Organization.Service
  alias ChurchAdmin.Organization.Validations.DefaultMeetingBelongsToOwner
  alias ChurchAdmin.People.{GroupMembership, Person}
  alias ChurchAdmin.Types.{DateRange, Text}

  graphql do
    type :group

    relationships [
      :service,
      :group_memberships,
      :admins,
      :latest_edit,
      :meetings,
      :default_meeting
    ]

    queries do
      get :group, :read
      list :groups, :read
    end

    mutations do
      create :create_group, :create_group
      update :update_group, :update_group
      destroy :delete_group, :destroy
    end
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

  archive do
    attribute :deleted_at
    base_filter? true
    exclude_destroy_actions [:hard_destroy]
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

    create :create_group do
      accept [:name, :color, :service_id, :validity]
    end

    update :update_group do
      accept [:name, :color, :service_id, :validity, :default_meeting_id]
      require_atomic? false
    end

    update :clear_default_meeting do
      require_atomic? false
      change set_context(%{skip_scope_recheck?: true})
      change set_attribute(:default_meeting_id, nil)
    end

    destroy :destroy do
      primary? true
      require_atomic? false

      change {StampActor, attribute: :deleted_by}
    end

    destroy :hard_destroy do
      require_atomic? false
    end
  end

  changes do
    change {RecordEdit, table: "groups"}, on: [:create, :update, :destroy]
  end

  validations do
    validate {DefaultMeetingBelongsToOwner,
              owner_column: :group_id,
              mismatch: Codes.group_default_meeting_mismatch(),
              archived: Codes.group_default_meeting_archived()},
             on: [:update]
  end

  policies do
    bypass System do
      authorize_if always()
    end

    policy action_type(:read) do
      authorize_if {InScope, access: :read}
    end

    policy action(:create_group) do
      authorize_if {RelatedInScope, path: :service, entity: :service, access: :edit}
    end

    policy action(:destroy) do
      authorize_if {ApprovedWithPermission, name: "deleteData"}
    end

    policy action(:destroy) do
      authorize_if {InScope, access: :edit}
    end

    policy action(:hard_destroy) do
      forbid_if always()
    end
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

    has_many :admins, User,
      no_attributes?: true,
      public?: true,
      filter: expr(exists(scope_grants, admin_on_group == parent(parent(id))))

    has_one :latest_edit, LatestEdit,
      destination_attribute: :record_id,
      filter: expr(table == "groups"),
      public?: true

    has_many :edits, Edit,
      destination_attribute: :record_id,
      filter: expr(table == "groups"),
      public?: true
  end

  calculations do
    calculate :user_can_edit, :boolean, {UserCanEdit, entity: :group},
      allow_nil?: false,
      public?: true
  end

  aggregates do
    first :service_name, :service, :name, public?: true
    first :default_meeting_name, :default_meeting, :name, public?: true
    first :last_edit, :latest_edit, :time, public?: true
  end

  identities do
    identity :unique_default_meeting_id, [:default_meeting_id]
  end
end
