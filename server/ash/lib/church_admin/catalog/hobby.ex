defmodule ChurchAdmin.Catalog.Hobby do
  use Ash.Resource,
    domain: ChurchAdmin.Catalog,
    data_layer: AshPostgres.DataLayer,
    extensions: [AshGraphql.Resource]

  alias ChurchAdmin.Types.Text

  graphql do
    type :hobby
  end

  postgres do
    table "hobbies"
    repo ChurchAdmin.Repo
    migration_types color: :bigint
    identity_index_names unique_name: "hobbies_name_key"
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
