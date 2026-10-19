defmodule ChurchAdmin.Catalog.College do
  use Ash.Resource,
    domain: ChurchAdmin.Catalog,
    data_layer: AshPostgres.DataLayer,
    extensions: [AshGraphql.Resource]

  alias ChurchAdmin.Catalog.University
  alias ChurchAdmin.Types.Text

  graphql do
    type :college
  end

  postgres do
    table "colleges"
    repo ChurchAdmin.Repo
    identity_index_names unique_name: "colleges_name_key"

    references do
      reference :university, on_delete: :restrict, on_update: :restrict
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
    attribute :university_id, :uuid, public?: true
  end

  relationships do
    belongs_to :university, University, define_attribute?: false
  end

  identities do
    identity :unique_name, [:name]
  end
end
