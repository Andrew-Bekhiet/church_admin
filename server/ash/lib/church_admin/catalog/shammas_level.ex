defmodule ChurchAdmin.Catalog.ShammasLevel do
  use Ash.Resource,
    domain: ChurchAdmin.Catalog,
    data_layer: AshPostgres.DataLayer,
    extensions: [AshGraphql.Resource],
    fragments: [ChurchAdmin.Authz.Fragments.Lookup]

  alias ChurchAdmin.Authz.Checks.System
  alias ChurchAdmin.Types.Text

  graphql do
    type :shammas_level

    queries do
      get :shammas_level, :read
      list :shammas_levels, :read
    end
  end

  postgres do
    table "shammas_levels"
    repo ChurchAdmin.Repo
    migration_types order: :integer

    identity_index_names unique_name: "shammas_level_name_key",
                         unique_order: "shammas_level_order_key"
  end

  actions do
    read :read do
      primary? true

      pagination keyset?: true,
                 countable: true,
                 required?: false,
                 default_limit: 25,
                 max_page_size: 1000
    end
  end

  policies do
    bypass System do
      authorize_if always()
    end
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
