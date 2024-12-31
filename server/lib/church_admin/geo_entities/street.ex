defmodule ChurchAdmin.GeoEntities.Street do
  use Ash.Resource,
    otp_app: :church_admin,
    domain: ChurchAdmin.GeoEntities,
    data_layer: AshPostgres.DataLayer,
    extensions: [AshJsonApi.Resource]

  json_api do
    type "street"
  end

  postgres do
    table "streets"
    repo ChurchAdmin.Repo

    custom_indexes do
      index :line, using: "gist"
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

    attribute :line, :line

    attribute :color, :color
    attribute :photo_updated_at, :datetime
    attribute :blurhash, :string
  end
end
