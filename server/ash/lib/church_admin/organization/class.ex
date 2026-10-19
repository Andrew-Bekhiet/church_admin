defmodule ChurchAdmin.Organization.Class do
  use Ash.Resource,
    domain: ChurchAdmin.Organization,
    data_layer: AshPostgres.DataLayer,
    extensions: [AshGraphql.Resource],
    fragments: [
      ChurchAdmin.Authz.Fragments.ScopedEntity,
      ChurchAdmin.Archival.HideArchived,
      ChurchAdmin.Files.RecordsPhoto
    ]

  alias ChurchAdmin.Accounts.User
  alias ChurchAdmin.Activity.{Edit, LatestEdit}
  alias ChurchAdmin.Authz.Calculations.UserCanEdit
  alias ChurchAdmin.Authz.Checks.{InScope, System}
  alias ChurchAdmin.Attendance.Meeting
  alias ChurchAdmin.Catalog.StudyYear
  alias ChurchAdmin.Organization.Service
  alias ChurchAdmin.People.{ClassMembership, Person}
  alias ChurchAdmin.Types.Text

  graphql do
    type :class

    relationships [
      :service,
      :class_memberships,
      :admins,
      :latest_edit,
      :meetings,
      :study_year_from,
      :study_year_to
    ]

    queries do
      get :class, :read
      list :classes, :read
    end
  end

  postgres do
    table "classes"
    repo ChurchAdmin.Repo
    migration_types service_study_year: :integer, color: :bigint, service_study_year_to: :integer

    references do
      reference :deleted_by_user, on_delete: :restrict, on_update: :restrict
      reference :service, on_delete: :restrict, on_update: :restrict, name: "classes_service_fkey"
      reference :study_year_from, on_delete: :restrict, on_update: :update
      reference :study_year_to, on_delete: :restrict, on_update: :update
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

    update :place_cohort do
      accept [:service_id, :service_study_year, :service_study_year_to]
      require_atomic? false
    end

    update :retire_cohort do
      require_atomic? false
      change atomic_update(:deleted_at, expr(now()))
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
    attribute :service_id, :uuid, allow_nil?: false, public?: true
    attribute :service_study_year, :integer, allow_nil?: false, public?: true
    attribute :service_gender, :boolean, public?: true
    attribute :color, :integer, public?: true
    attribute :photo_updated_at, AshPostgres.TimestamptzUsec, public?: true
    attribute :blurhash, Text, public?: true
    attribute :deleted_at, AshPostgres.TimestamptzUsec
    attribute :deleted_by, :uuid
    attribute :service_study_year_to, :integer, allow_nil?: false, public?: true
  end

  relationships do
    belongs_to :deleted_by_user, User,
      source_attribute: :deleted_by,
      destination_attribute: :uid,
      define_attribute?: false

    belongs_to :service, Service, define_attribute?: false, public?: true

    belongs_to :study_year_from, StudyYear,
      source_attribute: :service_study_year,
      destination_attribute: :order,
      define_attribute?: false,
      public?: true

    belongs_to :study_year_to, StudyYear,
      source_attribute: :service_study_year_to,
      destination_attribute: :order,
      define_attribute?: false,
      public?: true

    has_many :class_memberships, ClassMembership, destination_attribute: :class_id, public?: true

    has_many :persons_of_matching_year_and_gender, Person,
      no_attributes?: true,
      filter:
        expr(
          study_year_id >= parent(service_study_year) and
            study_year_id <= parent(service_study_year_to) and
            (is_nil(parent(service_gender)) or gender == parent(service_gender))
        )

    many_to_many :persons, Person,
      through: ClassMembership,
      source_attribute_on_join_resource: :class_id,
      destination_attribute_on_join_resource: :person_id,
      public?: true

    has_many :meetings, Meeting,
      no_attributes?: true,
      public?: true,
      filter:
        expr(
          service_id == parent(service_id) and service_study_year == parent(service_study_year) and
            service_gender == parent(service_gender)
        )

    has_one :latest_edit, LatestEdit,
      destination_attribute: :record_id,
      filter: expr(table == "classes"),
      public?: true

    has_many :edits, Edit,
      destination_attribute: :record_id,
      filter: expr(table == "classes"),
      public?: true

    has_many :admins, User,
      no_attributes?: true,
      public?: true,
      filter:
        expr(
          exists(
            scope_grants,
            admin_on_service == parent(parent(service_id)) and
              service_study_year == parent(parent(service_study_year)) and
              service_gender == parent(parent(service_gender))
          )
        )
  end

  calculations do
    calculate :user_can_edit, :boolean, {UserCanEdit, entity: :class},
      allow_nil?: false,
      public?: true
  end

  aggregates do
    first :service_name, :service, :name, public?: true
    first :last_edit, :latest_edit, :time, public?: true
    first :study_year_from_order, :study_year_from, :order, public?: true
    first :study_year_to_order, :study_year_to, :order, public?: true
  end
end
