defmodule ChurchAdmin.GeoEntities.Area do
  use Ash.Resource,
    otp_app: :church_admin,
    domain: ChurchAdmin.GeoEntities,
    data_layer: AshPostgres.DataLayer,
    extensions: [AshJsonApi.Resource]

  json_api do
    type "area"
  end

  postgres do
    table "areas"
    repo ChurchAdmin.Repo

    custom_indexes do
      index :bounds, using: "gist"
      index [:id, :bounds], unique: true, using: "btree"
    end
  end

  actions do
    defaults [:read, :destroy, create: :*, update: :*]
  end

  attributes do
    uuid_primary_key :id

    attribute :name, :string do
      allow_nil? false
    end

    attribute :bounds, :polygon

    attribute :color, :color
    attribute :photo_updated_at, :datetime
    attribute :blurhash, :string
  end
end
