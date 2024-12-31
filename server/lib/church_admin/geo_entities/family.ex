defmodule ChurchAdmin.GeoEntities.Family do
  alias ChurchAdmin.GeoEntities

  use Ash.Resource,
    otp_app: :church_admin,
    domain: GeoEntities,
    data_layer: AshPostgres.DataLayer,
    authorizers: [Ash.Policy.Authorizer],
    extensions: [AshJsonApi.Resource]

  json_api do
    type "family"
    includes [:stores]
  end

  postgres do
    table "families"
    repo ChurchAdmin.Repo

    custom_indexes do
      index :geolocation, using: "gist"
    end
  end

  actions do
    defaults [:destroy, update: :*]

    read :read do
      primary? true
    end

    create :create do
      primary? true
      accept :*
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
    attribute :notes, :string, public?: true
    attribute :color, :color, public?: true
    attribute :photo_updated_at, :datetime, public?: true
    attribute :blurhash, :string, public?: true
  end

  relationships do
    has_many :stores,
             GeoEntities.Store,
             public?: true,
             destination_attribute: :admin_family_id
  end
end
