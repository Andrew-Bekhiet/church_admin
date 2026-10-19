defmodule ChurchAdmin.Places.Address do
  use Ash.Resource,
    domain: ChurchAdmin.Places,
    data_layer: AshPostgres.DataLayer,
    extensions: [AshGraphql.Resource]

  alias ChurchAdmin.People.Family
  alias ChurchAdmin.Places.{Area, District, Store, Street}
  alias ChurchAdmin.Types.{Geography, Text}

  graphql do
    type :address
  end

  postgres do
    table "addresses"
    repo ChurchAdmin.Repo

    migration_types geolocation: :"geography(Point,4326)",
                    storey_number: :smallint,
                    house_number: :smallint,
                    apartment_number: :smallint,
                    house_code: {:varchar, 5}

    identity_index_names unique_family_id: "addresses_family_id_idx",
                         unique_store_id: "addresses_store_id_idx"

    references do
      reference :area, on_delete: :restrict, on_update: :update, name: "addresses_areas_fk"

      reference :district,
        on_delete: :restrict,
        on_update: :update,
        name: "addresses_districts_fk"

      reference :family,
        on_delete: :delete,
        on_update: :update,
        name: "addresses_families_fk",
        deferrable: :initially

      reference :store, on_delete: :delete, on_update: :update, name: "addresses_stores_fk"
      reference :street, on_delete: :restrict, on_update: :update, name: "addresses_streets_fk"
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

    attribute :country_iso_code, Text, allow_nil?: false, default: "EG", public?: true
    attribute :district_id, :uuid, public?: true
    attribute :area_id, :uuid, public?: true
    attribute :street_id, :uuid, public?: true
    attribute :substreet_name, Text, public?: true
    attribute :geolocation, Geography, public?: true
    attribute :storey_number, :integer, public?: true
    attribute :house_number, :integer, public?: true
    attribute :apartment_number, :integer, public?: true
    attribute :special_landmark, Text, public?: true
    attribute :family_id, :uuid, public?: true
    attribute :store_id, :uuid, public?: true
    attribute :house_code, Text, public?: true, constraints: [max_length: 5]
  end

  relationships do
    belongs_to :area, Area, define_attribute?: false, public?: true
    belongs_to :district, District, define_attribute?: false, public?: true
    belongs_to :family, Family, define_attribute?: false, public?: true
    belongs_to :store, Store, define_attribute?: false, public?: true
    belongs_to :street, Street, define_attribute?: false, public?: true
  end

  identities do
    identity :unique_family_id, [:family_id]
    identity :unique_store_id, [:store_id]
  end
end
