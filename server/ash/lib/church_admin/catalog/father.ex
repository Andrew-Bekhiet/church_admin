defmodule ChurchAdmin.Catalog.Father do
  use Ash.Resource,
    domain: ChurchAdmin.Catalog,
    data_layer: AshPostgres.DataLayer,
    extensions: [AshGraphql.Resource]

  alias ChurchAdmin.Catalog.Church
  alias ChurchAdmin.Types.Text

  graphql do
    type :father
  end

  postgres do
    table "fathers"
    repo ChurchAdmin.Repo
    identity_index_names unique_name: "fathers_name_key"

    references do
      reference :church, on_delete: :restrict, on_update: :restrict
    end
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
    attribute :church_id, :uuid, public?: true
    attribute :is_hidden, :boolean, allow_nil?: false, default: true, public?: true
  end

  relationships do
    belongs_to :church, Church, define_attribute?: false
  end

  identities do
    identity :unique_name, [:name]
  end
end
