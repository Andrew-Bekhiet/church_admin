defmodule ChurchAdmin.Geography.AreasStreets do
  use Ash.Resource,
    authorizers: [Ash.Policy.Authorizer],
    domain: ChurchAdmin.Geography,
    data_layer: AshPostgres.DataLayer,
    extensions: [AshGraphql.Resource]

  @moduledoc """
  Join resource for public.areas_streets (area <-> street)
  """

  graphql do
    type :areas_streets

    queries do
      list :areas_streets, :read
      get :areas_street, :read
    end

    mutations do
      create :add_area_street_relationship, :create
      destroy :remove_area_street_relationship, :destroy
    end
  end

  postgres do
    repo ChurchAdmin.Repo
    table "areas_streets"
    schema "public"

    references do
      reference :area, on_update: :update, on_delete: :delete
      reference :street, on_update: :update, on_delete: :delete
    end
  end

  actions do
    defaults [:read, :create, :destroy]
  end

  attributes do
    uuid_v7_primary_key :rel_id
    attribute :area_id, :uuid, allow_nil?: false
    attribute :street_id, :uuid, allow_nil?: false
  end

  relationships do
    belongs_to :area, ChurchAdmin.Geography.Area do
      source_attribute :area_id
      allow_nil? false
      public? true
    end

    belongs_to :street, ChurchAdmin.Geography.Street do
      source_attribute :street_id
      allow_nil? false
      public? true
    end
  end

  identities do
    identity :area_street_relationship_unique, [:area_id, :street_id]
  end
end
