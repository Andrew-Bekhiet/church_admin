defmodule ChurchAdmin.Places.Street do
  use Ash.Resource,
    domain: ChurchAdmin.Places,
    data_layer: AshPostgres.DataLayer,
    extensions: [AshGraphql.Resource],
    fragments: [ChurchAdmin.Authz.Fragments.ScopedEntity, ChurchAdmin.Archival.HideArchived]

  alias ChurchAdmin.Accounts.User
  alias ChurchAdmin.Activity.{Edit, LatestEdit, LatestVisit, Visit}
  alias ChurchAdmin.Authz.Calculations.UserCanEdit
  alias ChurchAdmin.Authz.Checks.System
  alias ChurchAdmin.Places.Calculations.{IntersectsGeography, NearGeography}
  alias ChurchAdmin.Places.{Address, Area, AreaStreet}
  alias ChurchAdmin.Types.{Geography, Text}

  graphql do
    type :street

    relationships [
      :addresses,
      :area_streets,
      :areas,
      :latest_edit,
      :edits,
      :latest_visit,
      :visits
    ]

    queries do
      get :street, :read
      list :streets, :read
    end
  end

  postgres do
    table "streets"
    repo ChurchAdmin.Repo
    migration_types line: :"geography(LineString,4326)", color: :bigint

    references do
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
      authorize_if actor_present()
    end
  end

  attributes do
    attribute :id, :uuid,
      primary_key?: true,
      allow_nil?: false,
      default: &Ash.UUID.generate/0,
      public?: true

    attribute :name, Text, allow_nil?: false, public?: true
    attribute :line, Geography, public?: true
    attribute :color, :integer, public?: true
    attribute :photo_updated_at, AshPostgres.TimestamptzUsec, public?: true
    attribute :blurhash, Text, public?: true
    attribute :deleted_at, AshPostgres.TimestamptzUsec
    attribute :deleted_by, :uuid
  end

  relationships do
    belongs_to :deleted_by_user, User,
      source_attribute: :deleted_by,
      destination_attribute: :uid,
      define_attribute?: false

    has_many :addresses, Address, destination_attribute: :street_id, public?: true
    has_many :area_streets, AreaStreet, destination_attribute: :street_id, public?: true

    many_to_many :areas, Area,
      through: AreaStreet,
      source_attribute_on_join_resource: :street_id,
      destination_attribute_on_join_resource: :area_id,
      public?: true

    has_one :latest_edit, LatestEdit,
      destination_attribute: :record_id,
      filter: expr(table == "streets"),
      public?: true

    has_many :edits, Edit,
      destination_attribute: :record_id,
      filter: expr(table == "streets"),
      public?: true

    has_one :latest_visit, LatestVisit,
      destination_attribute: :record_id,
      filter: expr(table == "streets"),
      public?: true

    has_many :visits, Visit,
      destination_attribute: :record_id,
      filter: expr(table == "streets"),
      public?: true
  end

  calculations do
    calculate :user_can_edit, :boolean, {UserCanEdit, entity: :street},
      allow_nil?: false,
      public?: true

    calculate :within_polygon,
              :boolean,
              {IntersectsGeography, attribute: :line, argument: :polygon} do
      argument :polygon, Geography, allow_nil?: false
      public? true
    end

    calculate :within_distance, :boolean, {NearGeography, attribute: :line} do
      argument :from, Geography, allow_nil?: false
      argument :meters, :float, allow_nil?: false
      public? true
    end
  end
end
