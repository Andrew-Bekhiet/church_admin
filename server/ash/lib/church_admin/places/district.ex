defmodule ChurchAdmin.Places.District do
  use Ash.Resource,
    domain: ChurchAdmin.Places,
    data_layer: AshPostgres.DataLayer,
    extensions: [AshGraphql.Resource],
    fragments: [ChurchAdmin.Authz.Fragments.Lookup]

  alias ChurchAdmin.Authz.Checks.System
  alias ChurchAdmin.Places.Address
  alias ChurchAdmin.Types.Text

  graphql do
    type :district

    relationships [:addresses]

    queries do
      get :district, :read
      list :districts, :read
    end

    mutations do
      create :create_district, :create_district
    end
  end

  postgres do
    table "districts"
    repo ChurchAdmin.Repo
    identity_index_names unique_name: "districts_unique_name"
  end

  actions do
    read :read do
      primary? true

      pagination keyset?: true,
                 countable: true,
                 required?: false,
                 default_limit: 100,
                 max_page_size: 1000
    end

    create :create_district do
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

  relationships do
    has_many :addresses, Address, destination_attribute: :district_id, public?: true
  end

  identities do
    identity :unique_name, [:name]
  end
end
