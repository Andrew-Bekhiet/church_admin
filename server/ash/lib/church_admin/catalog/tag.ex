defmodule ChurchAdmin.Catalog.Tag do
  use Ash.Resource,
    domain: ChurchAdmin.Catalog,
    data_layer: AshPostgres.DataLayer,
    extensions: [AshGraphql.Resource],
    fragments: [ChurchAdmin.Authz.Fragments.Lookup]

  alias ChurchAdmin.Authz.Checks.System
  alias ChurchAdmin.Types.Text

  graphql do
    type :tag

    queries do
      get :tag, :read
      list :tags, :read
    end
  end

  postgres do
    table "tags"
    repo ChurchAdmin.Repo
    migration_types color: :bigint
    identity_index_names unique_name: "tags_name_key"
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
    attribute :color, :integer, public?: true
  end

  identities do
    identity :unique_name, [:name]
  end
end
