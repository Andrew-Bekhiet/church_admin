defmodule ChurchAdmin.Places.Area do
  use Ash.Resource,
    domain: ChurchAdmin.Places,
    data_layer: AshPostgres.DataLayer,
    extensions: [AshGraphql.Resource],
    fragments: [ChurchAdmin.Authz.Fragments.ScopedEntity, ChurchAdmin.Archival.HideArchived]

  alias ChurchAdmin.Accounts.{ScopeGrant, User}
  alias ChurchAdmin.Activity.{Edit, LatestEdit}
  alias ChurchAdmin.Authz.Calculations.UserCanEdit
  alias ChurchAdmin.Authz.Checks.System
  alias ChurchAdmin.Places.Calculations.IntersectsGeography
  alias ChurchAdmin.Places.{Address, AreaStreet, Street}
  alias ChurchAdmin.Types.{Geography, Text}

  graphql do
    type :area

    relationships [:addresses, :area_streets, :streets, :admins, :latest_edit, :edits]

    queries do
      get :area, :read
      list :areas, :read
    end
  end

  postgres do
    table "areas"
    repo ChurchAdmin.Repo
    migration_types bounds: :"geography(Polygon,4326)", color: :bigint

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
    attribute :bounds, Geography, public?: true
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

    has_many :addresses, Address, destination_attribute: :area_id, public?: true
    has_many :area_streets, AreaStreet, destination_attribute: :area_id, public?: true

    many_to_many :streets, Street,
      through: AreaStreet,
      source_attribute_on_join_resource: :area_id,
      destination_attribute_on_join_resource: :street_id,
      public?: true

    has_many :scope_grants, ScopeGrant, destination_attribute: :admin_on_area, public?: true

    many_to_many :admins, User,
      through: ScopeGrant,
      source_attribute_on_join_resource: :admin_on_area,
      destination_attribute_on_join_resource: :uid,
      destination_attribute: :uid,
      public?: true

    has_one :latest_edit, LatestEdit,
      destination_attribute: :record_id,
      filter: expr(table == "areas"),
      public?: true

    has_many :edits, Edit,
      destination_attribute: :record_id,
      filter: expr(table == "areas"),
      public?: true
  end

  calculations do
    calculate :user_can_edit, :boolean, {UserCanEdit, entity: :area},
      allow_nil?: false,
      public?: true

    calculate :within_polygon,
              :boolean,
              {IntersectsGeography, attribute: :bounds, argument: :polygon} do
      argument :polygon, Geography, allow_nil?: false
      public? true
    end

    calculate :contains_point,
              :boolean,
              {IntersectsGeography, attribute: :bounds, argument: :point} do
      argument :point, Geography, allow_nil?: false
      public? true
    end
  end
end
