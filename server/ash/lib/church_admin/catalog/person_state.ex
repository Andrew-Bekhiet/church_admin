defmodule ChurchAdmin.Catalog.PersonState do
  use Ash.Resource,
    domain: ChurchAdmin.Catalog,
    data_layer: AshPostgres.DataLayer,
    extensions: [AshGraphql.Resource]

  alias ChurchAdmin.Types.Text

  graphql do
    type :person_state
  end

  postgres do
    table "person_states"
    repo ChurchAdmin.Repo
    migration_types color: :bigint
    identity_index_names unique_color: "states_color_key", unique_name: "states_name_key"
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
    attribute :color, :integer, allow_nil?: false, public?: true
  end

  identities do
    identity :unique_color, [:color]
    identity :unique_name, [:name]
  end
end
