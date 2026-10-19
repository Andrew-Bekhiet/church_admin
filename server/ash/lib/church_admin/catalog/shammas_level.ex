defmodule ChurchAdmin.Catalog.ShammasLevel do
  use Ash.Resource,
    domain: ChurchAdmin.Catalog,
    data_layer: AshPostgres.DataLayer,
    extensions: [AshGraphql.Resource]

  alias ChurchAdmin.Types.Text

  graphql do
    type :shammas_level
  end

  postgres do
    table "shammas_levels"
    repo ChurchAdmin.Repo
    migration_types order: :integer

    identity_index_names unique_name: "shammas_level_name_key",
                         unique_order: "shammas_level_order_key"
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
    attribute :order, :integer, allow_nil?: false, public?: true
  end

  identities do
    identity :unique_name, [:name]
    identity :unique_order, [:order]
  end
end
