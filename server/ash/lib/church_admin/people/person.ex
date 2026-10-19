defmodule ChurchAdmin.People.Person do
  use Ash.Resource,
    domain: ChurchAdmin.People,
    data_layer: AshPostgres.DataLayer,
    extensions: [AshGraphql.Resource],
    fragments: [ChurchAdmin.Authz.Fragments.ScopedEntity, ChurchAdmin.Archival.HideArchived]

  alias ChurchAdmin.Accounts.User

  alias ChurchAdmin.Activity.{
    Call,
    Confession,
    Edit,
    Kodas,
    LatestCall,
    LatestConfession,
    LatestEdit,
    LatestKodas,
    LatestVisit,
    Visit
  }

  alias ChurchAdmin.Attendance.AttendanceRecord
  alias ChurchAdmin.Authz.Calculations.UserCanEdit
  alias ChurchAdmin.Authz.Checks.{InScope, System}

  alias ChurchAdmin.Catalog.{
    Church,
    College,
    Father,
    Hobby,
    Job,
    MaritalStatus,
    PersonState,
    PersonType,
    Qualification,
    School,
    ShammasLevel,
    StudyYear,
    Tag,
    WorkStatus
  }

  alias ChurchAdmin.DataQuality.DataCheck
  alias ChurchAdmin.Organization.{Class, Group, Service}

  alias ChurchAdmin.People.{
    ClassMembership,
    Contact,
    Family,
    GroupMembership,
    MainContact,
    PersonHobby,
    PersonTag,
    ResolvedContact,
    ServiceMembership
  }

  alias ChurchAdmin.Places.{Address, Store}
  alias ChurchAdmin.Types.Text

  graphql do
    type :person

    relationships [
      :family,
      :address,
      :user,
      :service_memberships,
      :group_memberships,
      :class_memberships,
      :data_check,
      :attendance_records,
      :contacts,
      :hobbies,
      :tags,
      :family_contacts,
      :main_contact
    ]

    queries do
      get :person, :read
      list :persons, :read
    end
  end

  postgres do
    table "persons"
    repo ChurchAdmin.Repo
    migration_types study_year_id: :smallint, color: :bigint
    identity_index_names unique_uid: "persons_uid_key"

    references do
      reference :church, on_delete: :restrict, on_update: :restrict, deferrable: :initially
      reference :college, on_delete: :restrict, on_update: :restrict, deferrable: :initially
      reference :deleted_by_user, on_delete: :restrict, on_update: :restrict
      reference :family, on_delete: :delete, on_update: :restrict, deferrable: :initially
      reference :father, on_delete: :restrict, on_update: :restrict, deferrable: :initially

      reference :job,
        on_delete: :restrict,
        on_update: :restrict,
        name: "persons_job_fkey",
        deferrable: :initially

      reference :marital_status_option, on_delete: :restrict, on_update: :restrict

      reference :person_type,
        on_delete: :restrict,
        on_update: :restrict,
        name: "persons_person_type_fkey",
        deferrable: :initially

      reference :qualification,
        on_delete: :restrict,
        on_update: :restrict,
        name: "persons_qualification_fkey",
        deferrable: :initially

      reference :school, on_delete: :restrict, on_update: :restrict, deferrable: :initially

      reference :serving_church,
        on_delete: :restrict,
        on_update: :restrict,
        name: "persons_serving_church_fkey"

      reference :shammas_level,
        on_delete: :restrict,
        on_update: :restrict,
        name: "persons_shammas_level_fkey",
        deferrable: :initially

      reference :state,
        on_delete: :restrict,
        on_update: :restrict,
        name: "persons_state_fkey",
        deferrable: :initially

      reference :store, on_delete: :nilify, on_update: :restrict, deferrable: :initially
      reference :study_year, on_delete: :restrict, on_update: :update, deferrable: :initially
      reference :user, on_delete: :nilify, on_update: :restrict, deferrable: :initially
      reference :work_status_option, on_delete: :nothing, on_update: :nothing
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

    update :advance_study_year do
      accept [:study_year_id]
      require_atomic? false
    end

    update :graduate do
      require_atomic? false
      change set_attribute(:study_year_id, nil)

      change atomic_update(
               :work_status,
               expr(if work_status == "student", do: "unemployed", else: work_status)
             )
    end
  end

  policies do
    bypass System do
      authorize_if always()
    end

    policy action_type(:read) do
      authorize_if {InScope, access: :read}
    end
  end

  attributes do
    attribute :id, :uuid,
      primary_key?: true,
      allow_nil?: false,
      default: &Ash.UUID.generate/0,
      public?: true

    attribute :name, Text, allow_nil?: false, public?: true
    attribute :birthdate, :date, public?: true
    attribute :gender, :boolean, allow_nil?: false, default: true, public?: true
    attribute :is_shammas, :boolean, allow_nil?: false, default: false, public?: true
    attribute :shammas_level_id, :uuid, public?: true
    attribute :school_id, :uuid, public?: true
    attribute :college_id, :uuid, public?: true
    attribute :church_id, :uuid, public?: true
    attribute :father_id, :uuid, public?: true
    attribute :is_student, :boolean, default: false, public?: true
    attribute :job_id, :uuid, public?: true
    attribute :job_description, Text, public?: true
    attribute :qualification_id, :uuid, public?: true
    attribute :person_type_id, :uuid, public?: true
    attribute :state_id, :uuid, public?: true
    attribute :is_servant, :boolean, allow_nil?: false, default: false, public?: true
    attribute :notes, Text, public?: true
    attribute :uid, :uuid, public?: true
    attribute :family_id, :uuid, public?: true
    attribute :store_id, :uuid, public?: true
    attribute :study_year_id, :integer, public?: true
    attribute :color, :integer, public?: true
    attribute :photo_updated_at, AshPostgres.TimestamptzUsec, public?: true
    attribute :blurhash, Text, public?: true
    attribute :work_status, Text, public?: true
    attribute :martial_status, Text, allow_nil?: false, default: "single", public?: true
    attribute :serving_church_id, :uuid, public?: true
    attribute :service_type, Text, public?: true
    attribute :deleted_at, AshPostgres.TimestamptzUsec
    attribute :deleted_by, :uuid
  end

  relationships do
    belongs_to :church, Church, define_attribute?: false, public?: true
    belongs_to :college, College, define_attribute?: false, public?: true

    belongs_to :deleted_by_user, User,
      source_attribute: :deleted_by,
      destination_attribute: :uid,
      define_attribute?: false

    belongs_to :family, Family, define_attribute?: false, public?: true
    belongs_to :father, Father, define_attribute?: false, public?: true
    belongs_to :job, Job, define_attribute?: false, public?: true

    belongs_to :marital_status_option, MaritalStatus,
      source_attribute: :martial_status,
      destination_attribute: :name,
      define_attribute?: false

    belongs_to :person_type, PersonType, define_attribute?: false, public?: true
    belongs_to :qualification, Qualification, define_attribute?: false, public?: true
    belongs_to :school, School, define_attribute?: false, public?: true
    belongs_to :serving_church, Church, define_attribute?: false, public?: true
    belongs_to :shammas_level, ShammasLevel, define_attribute?: false, public?: true
    belongs_to :state, PersonState, define_attribute?: false, public?: true
    belongs_to :store, Store, define_attribute?: false, public?: true

    belongs_to :study_year, StudyYear,
      destination_attribute: :order,
      define_attribute?: false,
      public?: true

    belongs_to :user, User,
      source_attribute: :uid,
      destination_attribute: :uid,
      define_attribute?: false,
      public?: true

    belongs_to :work_status_option, WorkStatus,
      source_attribute: :work_status,
      destination_attribute: :name,
      define_attribute?: false

    has_one :address, Address,
      destination_attribute: :family_id,
      source_attribute: :family_id,
      public?: true

    has_one :store_address, Address,
      destination_attribute: :store_id,
      source_attribute: :store_id

    has_many :family_members, __MODULE__,
      destination_attribute: :family_id,
      source_attribute: :family_id

    has_one :data_check, DataCheck,
      destination_attribute: :family_id,
      source_attribute: :family_id,
      public?: true

    has_one :main_contact, MainContact, destination_attribute: :person_id, public?: true
    has_one :latest_call, LatestCall, destination_attribute: :person_id, public?: true
    has_one :latest_confession, LatestConfession, destination_attribute: :person_id, public?: true
    has_one :latest_kodas, LatestKodas, destination_attribute: :person_id, public?: true

    has_one :latest_edit, LatestEdit,
      destination_attribute: :record_id,
      filter: expr(table == "persons"),
      public?: true

    has_many :edits, Edit,
      destination_attribute: :record_id,
      filter: expr(table == "persons"),
      public?: true

    has_one :latest_visit, LatestVisit,
      destination_attribute: :record_id,
      filter: expr(table == "persons"),
      public?: true

    has_many :visits, Visit,
      destination_attribute: :record_id,
      filter: expr(table == "persons"),
      public?: true

    has_many :contacts, Contact, destination_attribute: :person_id, public?: true

    has_many :family_contacts, ResolvedContact,
      destination_attribute: :effective_family_id,
      source_attribute: :family_id,
      public?: true

    has_many :attendance_records, AttendanceRecord,
      destination_attribute: :person_id,
      public?: true

    has_many :calls, Call, destination_attribute: :person_id, public?: true
    has_many :confessions, Confession, destination_attribute: :person_id, public?: true
    has_many :kodases, Kodas, destination_attribute: :person_id, public?: true
    has_many :class_memberships, ClassMembership, destination_attribute: :person_id, public?: true
    has_many :group_memberships, GroupMembership, destination_attribute: :person_id, public?: true

    has_many :service_memberships, ServiceMembership,
      destination_attribute: :person_id,
      public?: true

    many_to_many :classes, Class,
      through: ClassMembership,
      source_attribute_on_join_resource: :person_id,
      destination_attribute_on_join_resource: :class_id,
      public?: true

    many_to_many :groups, Group,
      through: GroupMembership,
      source_attribute_on_join_resource: :person_id,
      destination_attribute_on_join_resource: :group_id,
      public?: true

    many_to_many :services, Service,
      through: ServiceMembership,
      source_attribute_on_join_resource: :person_id,
      destination_attribute_on_join_resource: :service_id,
      public?: true

    many_to_many :hobbies, Hobby,
      through: PersonHobby,
      source_attribute_on_join_resource: :person_id,
      destination_attribute_on_join_resource: :hobby_id,
      public?: true

    many_to_many :tags, Tag,
      through: PersonTag,
      source_attribute_on_join_resource: :person_id,
      destination_attribute_on_join_resource: :tag_id,
      public?: true
  end

  calculations do
    calculate :user_can_edit, :boolean, {UserCanEdit, entity: :person},
      allow_nil?: false,
      public?: true
  end

  identities do
    identity :unique_uid, [:uid]
  end
end
