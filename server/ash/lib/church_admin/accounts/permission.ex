defmodule ChurchAdmin.Accounts.Permission do
  use Ash.Resource,
    domain: ChurchAdmin.Accounts,
    data_layer: AshPostgres.DataLayer

  alias ChurchAdmin.Types.Text

  postgres do
    schema "auth"
    table "permissions"
    repo ChurchAdmin.Repo
  end

  actions do
    defaults [:read]
  end

  attributes do
    attribute :name, Text, primary_key?: true, allow_nil?: false
  end
end
