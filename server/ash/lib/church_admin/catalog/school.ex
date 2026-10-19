defmodule ChurchAdmin.Catalog.School do
  use Ash.Resource,
    domain: ChurchAdmin.Catalog,
    data_layer: AshPostgres.DataLayer,
    extensions: [AshGraphql.Resource]

  alias ChurchAdmin.Types.Text

  graphql do
    type :school
  end

  postgres do
    table "schools"
    repo ChurchAdmin.Repo
    identity_index_names unique_name: "schools_name_key"
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
  end

  identities do
    identity :unique_name, [:name]
  end
end
