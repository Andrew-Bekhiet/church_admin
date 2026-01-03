defmodule ChurchAdmin.Geography.Street do
  use Ash.Resource,
    authorizers: [Ash.Policy.Authorizer],
    domain: ChurchAdmin.Geography,
    data_layer: AshPostgres.DataLayer,
    extensions: [AshGraphql.Resource]

  @moduledoc """
  Street resource maps to public.streets
  """

  graphql do
    type :streets

    queries do
      list :streets, :read
      get :street, :read
    end

    mutations do
      create :create_street, :create
      update :update_street, :update
      destroy :destroy_street, :destroy
    end
  end

  postgres do
    repo ChurchAdmin.Repo
    table "streets"
    schema "public"

    custom_indexes do
      index [:line], using: "gist"
      index [:deleted_at]
    end
  end

  actions do
    defaults [:read, :destroy, create: :*, update: :*]
  end

  attributes do
    uuid_v7_primary_key :id
    attribute :name, :string, allow_nil?: false, public?: true
    attribute :line, :line_string, public?: true
    attribute :color, :color, public?: true
    attribute :photo_updated_at, :datetime, public?: true, writable?: false
    attribute :blurhash, :string, public?: true, writable?: false

    attribute :deleted_at, :datetime, public?: false
    attribute :deleted_by, :uuid_v7, public?: false
  end
end
