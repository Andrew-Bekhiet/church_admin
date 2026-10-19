defmodule ChurchAdmin.Places.Area do
  use Ash.Resource,
    domain: ChurchAdmin.Places,
    data_layer: AshPostgres.DataLayer,
    extensions: [AshGraphql.Resource]

  alias ChurchAdmin.Accounts.{ScopeGrant, User}
  alias ChurchAdmin.Activity.{Edit, LatestEdit}
  alias ChurchAdmin.Places.{Address, AreaStreet, Street}
  alias ChurchAdmin.Types.{Geography, Text}

  graphql do
    type :area
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
    defaults [:read]
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

    has_one :latest_edit, LatestEdit,
      destination_attribute: :record_id,
      filter: expr(table == "areas"),
      public?: true

    has_many :edits, Edit,
      destination_attribute: :record_id,
      filter: expr(table == "areas"),
      public?: true
  end
end
