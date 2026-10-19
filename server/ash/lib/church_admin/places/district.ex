defmodule ChurchAdmin.Places.District do
  use Ash.Resource,
    domain: ChurchAdmin.Places,
    data_layer: AshPostgres.DataLayer,
    extensions: [AshGraphql.Resource]

  alias ChurchAdmin.Places.Address
  alias ChurchAdmin.Types.Text

  graphql do
    type :district
  end

  postgres do
    table "districts"
    repo ChurchAdmin.Repo
    identity_index_names unique_name: "districts_unique_name"
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
  end

  relationships do
    has_many :addresses, Address, destination_attribute: :district_id, public?: true
  end

  identities do
    identity :unique_name, [:name]
  end
end
