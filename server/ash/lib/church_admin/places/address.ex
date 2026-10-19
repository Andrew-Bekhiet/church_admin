defmodule ChurchAdmin.Places.Address do
  use Ash.Resource,
    domain: ChurchAdmin.Places,
    data_layer: AshPostgres.DataLayer,
    authorizers: [Ash.Policy.Authorizer],
    extensions: [AshGraphql.Resource]

  alias ChurchAdmin.Authz.Checks.{CreatedInCommand, RelatedInScope, System}
  alias ChurchAdmin.Errors.Codes
  alias ChurchAdmin.People.Family
  alias ChurchAdmin.Places.Calculations.{FullAddressText, IntersectsGeography}
  alias ChurchAdmin.Places.{Area, AreaStreet, District, Invariants, Store, Street}
  alias ChurchAdmin.Types.{Geography, Text}
  alias ChurchAdmin.Validations.{InvariantHolds, ReferencesVisible}

  @command_attributes [
    :country_iso_code,
    :district_id,
    :area_id,
    :street_id,
    :substreet_name,
    :geolocation,
    :storey_number,
    :house_code,
    :apartment_number,
    :special_landmark
  ]

  graphql do
    type :address

    relationships [:family, :store, :area, :street, :district]

    queries do
      get :address, :read
      list :addresses, :read
    end
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
    read :read do
      primary? true

      pagination keyset?: true,
                 countable: true,
                 required?: false,
                 default_limit: 100,
                 max_page_size: 100
    end

    create :create do
      public? false
      accept @command_attributes ++ [:family_id, :store_id]

      validate {ReferencesVisible, attribute: :area_id, resource: Area},
        where: changing(:area_id)

      validate {ReferencesVisible, attribute: :street_id, resource: Street},
        where: changing(:street_id)

      validate {ReferencesVisible, attribute: :district_id, resource: District},
        where: changing(:district_id)

      change {InvariantHolds,
              code: Codes.address_street_outside_area(),
              fields: [:street_id],
              violations: &Invariants.address_outside_street_area/1}
    end

    update :update do
      public? false
      require_atomic? false
      accept @command_attributes

      validate {ReferencesVisible, attribute: :area_id, resource: Area},
        where: changing(:area_id)

      validate {ReferencesVisible, attribute: :street_id, resource: Street},
        where: changing(:street_id)

      validate {ReferencesVisible, attribute: :district_id, resource: District},
        where: changing(:district_id)

      change {InvariantHolds,
              code: Codes.address_street_outside_area(),
              fields: [:street_id],
              violations: &Invariants.address_outside_street_area/1}
    end
  end

  policies do
    bypass System do
      authorize_if always()
    end

    policy action_type(:read) do
      authorize_if {RelatedInScope, path: :family, entity: :family, access: :read}
      authorize_if {RelatedInScope, path: :store, entity: :store, access: :read}
    end

    policy action_type(:create) do
      authorize_if {CreatedInCommand, attribute: :family_id, kind: :family}
      authorize_if {RelatedInScope, path: :family, entity: :family, access: :edit}
      authorize_if {RelatedInScope, path: :store, entity: :store, access: :edit}
    end
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
    has_many :area_links, AreaStreet, source_attribute: :area_id, destination_attribute: :area_id

    belongs_to :area, Area, define_attribute?: false, public?: true
    belongs_to :district, District, define_attribute?: false, public?: true
    belongs_to :family, Family, define_attribute?: false, public?: true
    belongs_to :store, Store, define_attribute?: false, public?: true
    belongs_to :street, Street, define_attribute?: false, public?: true
  end

  calculations do
    calculate :full_address_text, :string, FullAddressText, public?: true

    calculate :within_polygon,
              :boolean,
              {IntersectsGeography, attribute: :geolocation, argument: :polygon} do
      argument :polygon, Geography, allow_nil?: false
      public? true
    end
  end

  identities do
    identity :unique_family_id, [:family_id]
    identity :unique_store_id, [:store_id]
  end
end
