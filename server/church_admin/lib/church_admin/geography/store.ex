defmodule ChurchAdmin.Geography.Store do
  alias ChurchAdmin.Geography

  use Ash.Resource,
    domain: ChurchAdmin.Geography,
    data_layer: AshPostgres.DataLayer,
    extensions: [AshGraphql.Resource]

  @moduledoc """
  Store resource maps to public.stores
  """

  graphql do
    type :stores

    queries do
      list :stores, :read
      get :store, :read
    end

    mutations do
      create :create_store, :create
      update :update_store, :update
      destroy :destroy_store, :destroy
    end
  end

  postgres do
    repo ChurchAdmin.Repo
    table "stores"
    schema "public"

    custom_indexes do
      index [:deleted_at]
    end

    references do
      reference :admin_family, on_update: :update, on_delete: :restrict
    end
  end

  actions do
    defaults [:read, :destroy, create: :*, update: :*]
  end

  attributes do
    uuid_v7_primary_key :id
    attribute :name, :string, allow_nil?: false, public?: true
    attribute :color, :color, public?: true
    attribute :photo_updated_at, :datetime, public?: true, writable?: false
    attribute :blurhash, :string, public?: true, writable?: false

    attribute :deleted_at, :datetime, public?: false
    attribute :deleted_by, :uuid_v7, public?: false
  end

  relationships do
    belongs_to :admin_family, ChurchAdmin.Person.Family, public?: true
    has_one :address, destination: Geography.Address, public?: true
  end
end
