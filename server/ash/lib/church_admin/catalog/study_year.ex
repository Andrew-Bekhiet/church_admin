defmodule ChurchAdmin.Catalog.StudyYear do
  use Ash.Resource,
    domain: ChurchAdmin.Catalog,
    data_layer: AshPostgres.DataLayer,
    extensions: [AshGraphql.Resource]

  alias ChurchAdmin.Types.Text

  graphql do
    type :study_year
  end

  postgres do
    table "study_years"
    repo ChurchAdmin.Repo
    migration_types order: :smallint
    identity_index_names unique_name: "study_years_name_key"
  end

  actions do
    defaults [:read]
  end

  attributes do
    attribute :name, Text, allow_nil?: false, public?: true
    attribute :order, :integer, primary_key?: true, allow_nil?: false, public?: true
    attribute :id, Text, generated?: true, writable?: false, public?: true
  end

  identities do
    identity :unique_name, [:name]
  end
end
