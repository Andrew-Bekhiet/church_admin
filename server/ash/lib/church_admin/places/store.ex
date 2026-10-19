defmodule ChurchAdmin.Places.Store do
  use Ash.Resource,
    domain: ChurchAdmin.Places,
    data_layer: AshPostgres.DataLayer,
    extensions: [AshGraphql.Resource],
    fragments: [
      ChurchAdmin.Authz.Fragments.ScopedEntity,
      ChurchAdmin.Archival.HideArchived,
      ChurchAdmin.Files.RecordsPhoto
    ]

  alias ChurchAdmin.Accounts.User
  alias ChurchAdmin.Activity.{Edit, LatestEdit, LatestVisit, Visit}
  alias ChurchAdmin.Authz.Calculations.UserCanEdit
  alias ChurchAdmin.Authz.Checks.{InScope, System}
  alias ChurchAdmin.People.Family
  alias ChurchAdmin.Places.Address
  alias ChurchAdmin.Places.Calculations.IntersectsGeography
  alias ChurchAdmin.Types.{Geography, Text}

  graphql do
    type :store

    relationships [:address, :admin_family, :latest_edit, :edits, :latest_visit, :visits]

    queries do
      get :store, :read
      list :stores, :read
    end
  end

  postgres do
    table "stores"
    repo ChurchAdmin.Repo
    migration_types color: :bigint

    references do
      reference :admin_family, on_delete: :nilify, on_update: :restrict
      reference :deleted_by_user, on_delete: :restrict, on_update: :restrict
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
    attribute :admin_family_id, :uuid, source: :admin_family, public?: true
    attribute :color, :integer, public?: true
    attribute :photo_updated_at, AshPostgres.TimestamptzUsec, public?: true
    attribute :blurhash, Text, public?: true
    attribute :deleted_at, AshPostgres.TimestamptzUsec
    attribute :deleted_by, :uuid
  end

  relationships do
    belongs_to :admin_family, Family, define_attribute?: false, public?: true

    belongs_to :deleted_by_user, User,
      source_attribute: :deleted_by,
      destination_attribute: :uid,
      define_attribute?: false

    has_one :address, Address, destination_attribute: :store_id, public?: true

    has_one :latest_edit, LatestEdit,
      destination_attribute: :record_id,
      filter: expr(table == "stores"),
      public?: true

    has_many :edits, Edit,
      destination_attribute: :record_id,
      filter: expr(table == "stores"),
      public?: true

    has_one :latest_visit, LatestVisit,
      destination_attribute: :record_id,
      filter: expr(table == "stores"),
      public?: true

    has_many :visits, Visit,
      destination_attribute: :record_id,
      filter: expr(table == "stores"),
      public?: true
  end

  calculations do
    calculate :user_can_edit, :boolean, {UserCanEdit, entity: :store},
      allow_nil?: false,
      public?: true

    calculate :within_polygon,
              :boolean,
              {IntersectsGeography,
               attribute: :geolocation, argument: :polygon, through: :address} do
      argument :polygon, Geography, allow_nil?: false
      public? true
    end
  end

  aggregates do
    first :address_area_name, [:address, :area], :name, public?: true
    first :address_street_name, [:address, :street], :name, public?: true
    first :address_district_name, [:address, :district], :name, public?: true
    first :address_full_address_text, :address, :full_address_text, public?: true
    first :admin_family_name, :admin_family, :name, public?: true
    first :last_edit, :latest_edit, :time, public?: true
  end
end
