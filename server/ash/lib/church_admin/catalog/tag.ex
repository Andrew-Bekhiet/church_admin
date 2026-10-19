defmodule ChurchAdmin.Catalog.Tag do
  use Ash.Resource,
    domain: ChurchAdmin.Catalog,
    data_layer: AshPostgres.DataLayer,
    extensions: [AshGraphql.Resource]

  alias ChurchAdmin.Types.Text

  graphql do
    type :tag
  end

  postgres do
    table "tags"
    repo ChurchAdmin.Repo
    migration_types color: :bigint
    identity_index_names unique_name: "tags_name_key"
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

    attribute :name, Text, allow_nil?: false, public?: true
    attribute :color, :integer, public?: true
  end

  identities do
    identity :unique_name, [:name]
  end
end
