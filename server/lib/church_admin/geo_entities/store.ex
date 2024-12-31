defmodule ChurchAdmin.GeoEntities.Store do
  alias ChurchAdmin.GeoEntities

  use Ash.Resource,
    otp_app: :church_admin,
    domain: GeoEntities,
    data_layer: AshPostgres.DataLayer,
    authorizers: [Ash.Policy.Authorizer],
    extensions: [AshJsonApi.Resource]

  json_api do
    type "store"
    includes [:admin_family]
  end

  postgres do
    table "stores"
    repo ChurchAdmin.Repo

    custom_indexes do
      index :geolocation, using: "gist"
    end
  end

  actions do
    defaults [:read, :destroy, update: :*]

    create :create do
      primary? true
      accept :*
      argument :admin_family, :map

      change manage_relationship(:admin_family, type: :append)
    end
  end

  attributes do
    uuid_primary_key :id

    attribute :name, :string do
      allow_nil? false
      public? true
      writable? true
    end

    attribute :geolocation, :point, public?: true
    attribute :address, :string, public?: true

    attribute :color, :color, public?: true
    attribute :photo_updated_at, :datetime, public?: true
    attribute :blurhash, :string, public?: true
  end

  relationships do
    belongs_to :admin_family, GeoEntities.Family, public?: true
  end
end
