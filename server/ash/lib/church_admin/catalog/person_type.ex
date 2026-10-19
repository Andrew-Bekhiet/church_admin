defmodule ChurchAdmin.Catalog.PersonType do
  use Ash.Resource,
    domain: ChurchAdmin.Catalog,
    data_layer: AshPostgres.DataLayer,
    extensions: [AshGraphql.Resource],
    fragments: [ChurchAdmin.Authz.Fragments.Lookup]

  alias ChurchAdmin.Authz.Checks.System
  alias ChurchAdmin.Changes.CodeTakenIdentity
  alias ChurchAdmin.Errors.Codes
  alias ChurchAdmin.Types.Text

  graphql do
    type :person_type

    queries do
      get :person_type, :read
      list :person_types, :read
    end

    mutations do
      create :create_person_type, :create_person_type
    end
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
    read :read do
      primary? true

      pagination keyset?: true,
                 countable: true,
                 required?: false,
                 default_limit: 25,
                 max_page_size: 1000
    end

    create :create_person_type do
      accept [:name]
      upsert? true
      upsert_identity :unique_name
      upsert_fields [:name]
      change set_attribute(:is_family_admin, false)
      change set_attribute(:is_hidden, true)
      change {CodeTakenIdentity, field: :order, code: Codes.person_type_order_taken()}
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
    attribute :order, :integer, allow_nil?: false, generated?: true, public?: true
    attribute :is_family_admin, :boolean, allow_nil?: false, default: false, public?: true
    attribute :is_hidden, :boolean, allow_nil?: false, default: false, public?: true
  end

  identities do
    identity :unique_name, [:name]
    identity :unique_order, [:order]
  end
end
