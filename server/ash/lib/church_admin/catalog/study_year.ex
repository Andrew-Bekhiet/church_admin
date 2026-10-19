defmodule ChurchAdmin.Catalog.StudyYear do
  use Ash.Resource,
    domain: ChurchAdmin.Catalog,
    data_layer: AshPostgres.DataLayer,
    extensions: [AshGraphql.Resource],
    fragments: [ChurchAdmin.Authz.Fragments.Lookup]

  alias ChurchAdmin.Authz.Checks.System
  alias ChurchAdmin.Types.Text

  graphql do
    type :study_year

    queries do
      get :study_year, :read
      list :study_years, :read
    end
  end

  postgres do
    table "study_years"
    repo ChurchAdmin.Repo
    migration_types order: :smallint
    identity_index_names unique_name: "study_years_name_key"
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
    attribute :name, Text, allow_nil?: false, public?: true
    attribute :order, :integer, primary_key?: true, allow_nil?: false, public?: true
    attribute :id, Text, generated?: true, writable?: false
  end

  identities do
    identity :unique_name, [:name]
  end
end
