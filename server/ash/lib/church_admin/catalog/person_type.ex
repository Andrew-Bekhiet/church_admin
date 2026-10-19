defmodule ChurchAdmin.Catalog.PersonType do
  use Ash.Resource,
    domain: ChurchAdmin.Catalog,
    data_layer: AshPostgres.DataLayer,
    extensions: [AshGraphql.Resource]

  alias ChurchAdmin.Types.Text

  graphql do
    type :person_type
  end

  postgres do
    table "person_types"
    repo ChurchAdmin.Repo
    migration_types order: :integer
    migration_defaults order: ~S[fragment("nextval('person_types_order_seq'::regclass)")]

    identity_index_names unique_name: "person_types_name_key",
                         unique_order: "person_types_order_key"
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
    attribute :order, :integer, allow_nil?: false, generated?: true, public?: true
    attribute :is_family_admin, :boolean, allow_nil?: false, default: false, public?: true
    attribute :is_hidden, :boolean, allow_nil?: false, default: false, public?: true
  end

  identities do
    identity :unique_name, [:name]
    identity :unique_order, [:order]
  end
end
