defmodule ChurchAdmin.Organization.Service do
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
  alias ChurchAdmin.Attendance.{Meeting, MeetingInput}
  alias ChurchAdmin.Authz.Checks.{HasPermission, System}
  alias ChurchAdmin.Catalog.StudyYear
  alias ChurchAdmin.Changes.StampActor
  alias ChurchAdmin.Errors.{Codes, ConstraintCodes}
  alias ChurchAdmin.History.Changes.RecordEdit
  alias ChurchAdmin.Organization.{Class, Group}
  alias ChurchAdmin.Organization.Changes.CreateDefaultMeeting
  alias ChurchAdmin.Organization.Validations.DefaultMeetingBelongsToOwner
  alias ChurchAdmin.People.{Person, ServiceMembership}
  alias ChurchAdmin.Types.Text

  graphql do
    type :service

    relationships [
      :classes,
      :groups,
      :next_service,
      :service_memberships,
      :admins,
      :latest_edit,
      :meetings,
      :default_meeting,
      :study_year_from,
      :study_year_to
    ]

    queries do
      get :service, :read
      list :services, :read
    end

    mutations do
      create :create_service, :create_service
      update :update_service, :update_service
      destroy :delete_service, :destroy
    end
  end

  postgres do
    table "services"
    repo ChurchAdmin.Repo
    migration_types study_year_from_id: :smallint, study_year_to_id: :smallint, color: :bigint

    identity_index_names unique_default_meeting_id: "services_default_meeting_id_key",
                         unique_name: "services_name_key"

    foreign_key_names [{:classes, "classes_service_fkey"}]

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

    create :create_service do
      accept [:name, :study_year_from_id, :study_year_to_id, :next_service_id, :color]
      argument :default_meeting, MeetingInput

      change CreateDefaultMeeting
      change {RecordEdit, table: "services"}
    end

    update :update_service do
      accept [
        :name,
        :study_year_from_id,
        :study_year_to_id,
        :next_service_id,
        :color,
        :default_meeting_id
      ]

      require_atomic? false

      change {RecordEdit, table: "services"}
    end

    update :set_default_meeting do
      accept [:default_meeting_id]
      require_atomic? false
      change set_context(%{skip_scope_recheck?: true})
    end

    update :clear_default_meeting do
      require_atomic? false
      change set_context(%{skip_scope_recheck?: true})
      change set_attribute(:default_meeting_id, nil)
      change {RecordEdit, table: "services"}
    end

    destroy :destroy do
      primary? true
      require_atomic? false

      change {StampActor, attribute: :deleted_by}
      change {RecordEdit, table: "services"}
    end

    destroy :hard_destroy do
      require_atomic? false
    end
  end

  changes do
    change {ConstraintCodes,
            codes: %{
              "services_name_key" => Codes.service_name_taken(),
              "classes_service_fkey" => Codes.service_in_use(),
              "groups_service_id_fkey" => Codes.service_in_use()
            }},
           on: [:create, :update, :destroy]

    change {RecordEdit, table: "services"}, on: [:update], where: action_is(:record_photo)
  end

  validations do
    validate {DefaultMeetingBelongsToOwner,
              owner_column: :service_id,
              mismatch: Codes.service_default_meeting_mismatch(),
              archived: Codes.service_default_meeting_archived()},
             on: [:update]
  end

  policies do
    bypass System do
      authorize_if always()
    end

    policy action_type(:read) do
      authorize_if actor_present()
    end

    policy action(:create_service) do
      authorize_if {HasPermission, name: "writeAllData"}
    end

    policy action(:destroy) do
      authorize_if {HasPermission, name: "writeAllData"}
    end

    policy action(:destroy) do
      authorize_if {HasPermission, name: "deleteData"}
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

    has_many :admins, User,
      no_attributes?: true,
      public?: true,
      filter: expr(exists(scope_grants, admin_on_service == parent(parent(id))))

    has_one :latest_edit, LatestEdit,
      destination_attribute: :record_id,
      filter: expr(table == "services"),
      public?: true

    has_many :edits, Edit,
      destination_attribute: :record_id,
      filter: expr(table == "services"),
      public?: true
  end

  calculations do
    calculate :user_can_edit, :boolean, {UserCanEdit, entity: :service},
      allow_nil?: false,
      public?: true
  end

  aggregates do
    first :next_service_name, :next_service, :name, public?: true
    first :default_meeting_name, :default_meeting, :name, public?: true
    first :last_edit, :latest_edit, :time, public?: true
    first :study_year_from_order, :study_year_from, :order, public?: true
    first :study_year_to_order, :study_year_to, :order, public?: true
  end

  identities do
    identity :unique_default_meeting_id, [:default_meeting_id]
    identity :unique_name, [:name]
  end
end
