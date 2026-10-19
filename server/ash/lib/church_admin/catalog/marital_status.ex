defmodule ChurchAdmin.Catalog.MaritalStatus do
  use Ash.Resource,
    domain: ChurchAdmin.Catalog,
    data_layer: AshPostgres.DataLayer

  alias ChurchAdmin.Types.Text

  postgres do
    table "martial_statuses"
    repo ChurchAdmin.Repo
  end

  actions do
    defaults [:read]
  end

  attributes do
    attribute :name, Text, primary_key?: true, allow_nil?: false
  end
end
