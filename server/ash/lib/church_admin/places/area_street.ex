defmodule ChurchAdmin.Places.AreaStreet do
  use Ash.Resource,
    domain: ChurchAdmin.Places,
    data_layer: AshPostgres.DataLayer,
    extensions: [AshGraphql.Resource]

  alias ChurchAdmin.Places.{Area, Street}

  graphql do
    type :area_street
  end

  postgres do
    table "areas_streets"
    repo ChurchAdmin.Repo

    references do
      reference :area, on_delete: :delete, on_update: :update, name: "areas_streets_areas_fk"
      reference :street, on_delete: :delete, on_update: :update, name: "areas_streets_streets_fk"
    end
  end

  actions do
    defaults [:read]
  end

  attributes do
    attribute :area_id, :uuid, primary_key?: true, allow_nil?: false, public?: true
    attribute :street_id, :uuid, primary_key?: true, allow_nil?: false, public?: true
  end

  relationships do
    belongs_to :area, Area, define_attribute?: false, public?: true
    belongs_to :street, Street, define_attribute?: false, public?: true
  end
end
