defmodule ChurchAdmin.Catalog.WorkStatus do
  use Ash.Resource,
    domain: ChurchAdmin.Catalog,
    data_layer: AshPostgres.DataLayer

  alias ChurchAdmin.Types.Text

  postgres do
    table "work_status"
    repo ChurchAdmin.Repo
  end

  actions do
    defaults [:read]
  end

  attributes do
    attribute :name, Text, primary_key?: true, allow_nil?: false
  end
end
