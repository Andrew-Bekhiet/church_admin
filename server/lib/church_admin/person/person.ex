defmodule ChurchAdmin.Person.Person do
  alias ChurchAdmin.GeoEntities.Family

  use Ash.Resource,
    otp_app: :church_admin,
    domain: ChurchAdmin.Person,
    data_layer: AshPostgres.DataLayer,
    extensions: [AshJsonApi.Resource]

  json_api do
    type "person"
  end

  postgres do
    table "persons"
    repo ChurchAdmin.Repo

    custom_indexes do
      index :geolocation, using: "gist"
    end
  end

  attributes do
    uuid_primary_key :id

    attribute :name, :string do
      allow_nil? false
    end

    attribute :address, :string
    attribute :geolocation, ChurchAdmin.Type.Point

    attribute :main_phone, :string
    attribute :other_phones, :map, default: %{}, allow_nil?: false

    attribute :birthdate, :date

    attribute :gender, :boolean, default: true, allow_nil?: false

    attribute :is_shammas, :boolean, default: false, allow_nil?: false

    attribute :is_student, :boolean, default: false, allow_nil?: false

    attribute :job_description, :string

    attribute :is_servant, :boolean, default: false, allow_nil?: false

    attribute :notes, :string

    attribute :color, :color
    attribute :photo_updated_at, :datetime
    attribute :blurhash, :string
  end

  relationships do
    belongs_to :family, Family, public?: true
  end
end
