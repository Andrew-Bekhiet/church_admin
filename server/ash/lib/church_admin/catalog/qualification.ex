defmodule ChurchAdmin.Catalog.Qualification do
  use Ash.Resource,
    domain: ChurchAdmin.Catalog,
    data_layer: AshPostgres.DataLayer,
    extensions: [AshGraphql.Resource],
    fragments: [ChurchAdmin.Authz.Fragments.Lookup]

  alias ChurchAdmin.Authz.Checks.System
  alias ChurchAdmin.Types.Text

  graphql do
    type :qualification

    queries do
      get :qualification, :read
      list :qualifications, :read
    end

    mutations do
      create :create_qualification, :create_qualification
    end
  end

  postgres do
    table "qualifications"
    repo ChurchAdmin.Repo
    identity_index_names unique_name: "qualifications_name_key"
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

    create :create_qualification do
      accept [:name]
      upsert? true
      upsert_identity :unique_name
      upsert_fields [:name]
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
  end

  identities do
    identity :unique_name, [:name]
  end
end
