defmodule ChurchAdmin.People.Family do
  use Ash.Resource,
    domain: ChurchAdmin.People,
    data_layer: AshPostgres.DataLayer,
    extensions: [AshGraphql.Resource, AshArchival.Resource],
    fragments: [
      ChurchAdmin.Authz.Fragments.ScopedEntity,
      ChurchAdmin.Archival.HideArchived,
      ChurchAdmin.Files.RecordsPhoto,
      ChurchAdmin.People.Family.Commands
    ]

  alias ChurchAdmin.Accounts.User
  alias ChurchAdmin.Authz.Calculations.UserCanEdit
  alias ChurchAdmin.Authz.Checks.{InScope, System}
  alias ChurchAdmin.Activity.{Edit, LatestEdit, LatestFatherVisit, LatestVisit, Visit}
  alias ChurchAdmin.Catalog.{Church, MaritalStatus}
  alias ChurchAdmin.DataQuality.DataCheck
  alias ChurchAdmin.History.Changes.RecordEdit
  alias ChurchAdmin.People.{Contact, FamilyRelation, Person, ResolvedContact}
  alias ChurchAdmin.Places.{Address, Store}
  alias ChurchAdmin.Types.Text

  graphql do
    type :family

    relationships [
      :persons,
      :address,
      :data_check,
      :children,
      :parents,
      :unclaimed_contacts,
      :contacts,
      :church,
      :latest_edit,
      :latest_visit,
      :latest_father_visit,
      :edits,
      :visits
    ]

    queries do
      get :family, :read
      list :families, :read
    end

    mutations do
      create :create_family, :create_family
      update :update_family, :update_family
      destroy :delete_family, :destroy
    end
  end

  postgres do
    table "families"
    repo ChurchAdmin.Repo
    migration_types color: :bigint

    references do
      reference :church, on_delete: :restrict, on_update: :restrict
      reference :deleted_by_user, on_delete: :restrict, on_update: :restrict
      reference :marital_status_option, on_delete: :restrict, on_update: :update
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

    create :create_for_person do
      description "The family `createPerson` creates for a new person given an address and no family; the person command authorizes it."
      accept [:name]
    end
  end

  changes do
    change {RecordEdit, table: "families"}, on: [:create, :update, :destroy]
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
    attribute :notes, Text, public?: true
    attribute :color, :integer, public?: true
    attribute :photo_updated_at, AshPostgres.TimestamptzUsec, public?: true
    attribute :blurhash, Text, public?: true
    attribute :status, Text, allow_nil?: false, default: "married", public?: true
    attribute :deceased_spouse_name, Text, public?: true
    attribute :marriage_date, :date, public?: true
    attribute :church_id, :uuid, public?: true
    attribute :deleted_at, AshPostgres.TimestamptzUsec
    attribute :deleted_by, :uuid
  end

  relationships do
    belongs_to :church, Church, define_attribute?: false, public?: true

    belongs_to :deleted_by_user, User,
      source_attribute: :deleted_by,
      destination_attribute: :uid,
      define_attribute?: false

    belongs_to :marital_status_option, MaritalStatus,
      source_attribute: :status,
      destination_attribute: :name,
      define_attribute?: false

    has_one :address, Address, destination_attribute: :family_id, public?: true
    has_one :data_check, DataCheck, destination_attribute: :family_id, public?: true

    has_one :latest_edit, LatestEdit,
      destination_attribute: :record_id,
      filter: expr(table == "families"),
      public?: true

    has_many :edits, Edit,
      destination_attribute: :record_id,
      filter: expr(table == "families"),
      public?: true

    has_one :latest_visit, LatestVisit,
      destination_attribute: :record_id,
      filter: expr(table == "families"),
      public?: true

    has_many :visits, Visit,
      destination_attribute: :record_id,
      filter: expr(table == "families"),
      public?: true

    has_one :latest_father_visit, LatestFatherVisit,
      destination_attribute: :record_id,
      filter: expr(table == "families"),
      public?: true

    has_many :child_relations, FamilyRelation,
      destination_attribute: :parent_family_id,
      public?: true

    has_many :parent_relations, FamilyRelation,
      destination_attribute: :child_family_id,
      public?: true

    many_to_many :children, __MODULE__,
      through: FamilyRelation,
      source_attribute_on_join_resource: :parent_family_id,
      destination_attribute_on_join_resource: :child_family_id,
      public?: true

    many_to_many :parents, __MODULE__,
      through: FamilyRelation,
      source_attribute_on_join_resource: :child_family_id,
      destination_attribute_on_join_resource: :parent_family_id,
      public?: true

    has_many :contacts, ResolvedContact,
      destination_attribute: :effective_family_id,
      public?: true

    has_many :unclaimed_contacts, Contact, destination_attribute: :family_id, public?: true
    has_many :persons, Person, destination_attribute: :family_id, public?: true
    has_many :stores, Store, destination_attribute: :admin_family_id, public?: true
  end

  calculations do
    calculate :user_can_edit, :boolean, {UserCanEdit, entity: :family},
      allow_nil?: false,
      public?: true
  end

  aggregates do
    first :last_edit, :latest_edit, :time, public?: true
    first :last_visit, :latest_visit, :time, public?: true
    first :last_father_visit, :latest_father_visit, :time, public?: true
    first :church_name, :church, :name, public?: true
    first :address_area_name, [:address, :area], :name, public?: true
    first :address_street_name, [:address, :street], :name, public?: true
    first :address_district_name, [:address, :district], :name, public?: true
    first :address_full_address_text, :address, :full_address_text, public?: true
  end
end
