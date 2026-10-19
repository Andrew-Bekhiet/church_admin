defmodule ChurchAdmin.Accounts.HomeMode do
  use Ash.Resource,
    domain: ChurchAdmin.Accounts,
    data_layer: AshPostgres.DataLayer

  alias ChurchAdmin.Types.Text

  postgres do
    table "home_mode"
    repo ChurchAdmin.Repo
  end

  actions do
    defaults [:read]
  end

  attributes do
    attribute :name, Text, primary_key?: true, allow_nil?: false
  end
end
