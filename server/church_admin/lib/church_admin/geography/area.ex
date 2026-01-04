defmodule ChurchAdmin.Geography.Area do
  @moduledoc false
  alias Ash.Changeset
  alias ChurchAdmin.Person
  alias ChurchAdmin.Geography
  alias Geography.Changes.SyncAreasStreetsWithGeoraphy

  use Ash.Resource,
    domain: ChurchAdmin.Geography,
    data_layer: AshPostgres.DataLayer,
    extensions: [AshGraphql.Resource]

  graphql do
    type :areas

    queries do
      list :areas, :read
      get :area, :read
    end

    mutations do
      create :create_area, :create
      update :update_area, :update
      destroy :destroy_area, :destroy
    end
  end

  postgres do
    repo ChurchAdmin.Repo
    table "areas"
    schema "public"

    custom_indexes do
      index [:bounds], using: "gist"
      index [:deleted_at]
    end
  end

  actions do
    defaults [:read, :destroy]

    create :create do
      accept :*
      touches_resources [ChurchAdmin.Geography.Street]

      change fn changeset, _context ->
        if Map.has_key?(changeset.arguments, :bounds) do
          bounds = Changeset.get_argument(changeset, :bounds)
          changeset |> Changeset.change_attribute(:bounds, bounds)
        else
          changeset
        end
      end

      change set_attribute(:bounds, arg(:bounds))
      change {SyncAreasStreetsWithGeoraphy, mode: :area_to_streets}
    end

    update :update do
      accept :*
      primary? true
      require_atomic? false
      touches_resources [ChurchAdmin.Geography.Street]

      change fn changeset, _context ->
        if Map.has_key?(changeset.arguments, :bounds) do
          bounds = Changeset.get_argument(changeset, :bounds)
          changeset |> Changeset.change_attribute(:bounds, bounds)
        else
          changeset
        end
      end

      change set_attribute(:bounds, arg(:bounds)), where: changing(:bounds)
      change {SyncAreasStreetsWithGeoraphy, mode: :area_to_streets}
    end
  end

  attributes do
    uuid_v7_primary_key :id

    attribute :name, :string, allow_nil?: false, public?: true
    attribute :bounds, :polygon, public?: true
    attribute :color, :color, public?: true
    attribute :photo_updated_at, :datetime, public?: true, writable?: false
    attribute :blurhash, :string, public?: true, writable?: false

    attribute :deleted_at, :datetime, public?: false
    attribute :deleted_by, :uuid_v7, public?: false
  end

  relationships do
    many_to_many :streets, Geography.Street do
      through Geography.AreasStreets
      public? true
      source_attribute_on_join_resource :area_id
      destination_attribute_on_join_resource :street_id
      read_action :read
    end

    many_to_many :families, Person.Family do
      through Geography.Address
      source_attribute_on_join_resource :area_id
      destination_attribute_on_join_resource :family_id
      read_action :read
      public? true
    end
  end
end
