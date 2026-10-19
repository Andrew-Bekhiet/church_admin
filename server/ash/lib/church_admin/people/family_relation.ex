defmodule ChurchAdmin.People.FamilyRelation do
  use Ash.Resource,
    domain: ChurchAdmin.People,
    data_layer: AshPostgres.DataLayer,
    authorizers: [Ash.Policy.Authorizer],
    extensions: [AshGraphql.Resource]

  alias ChurchAdmin.Authz.Checks.{RelatedInScope, System}
  alias ChurchAdmin.History.Changes.RecordEdit
  alias ChurchAdmin.People.Family

  graphql do
    type :family_relation

    relationships [:child, :parent]

    queries do
      list :family_relations, :read
    end
  end

  postgres do
    table "families_families"
    repo ChurchAdmin.Repo

    references do
      reference :child,
        on_delete: :delete,
        on_update: :restrict,
        name: "families_families_inner_family_id_fkey",
        deferrable: :initially

      reference :parent,
        on_delete: :delete,
        on_update: :restrict,
        name: "families_families_outer_family_id_fkey",
        deferrable: :initially
    end
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

    create :create do
      description "Links a parent and a child family; the family commands call it."
      accept [:parent_family_id, :child_family_id]
    end

    destroy :destroy do
      description "Unlinks a parent and a child family; the family commands call it."
      primary? true
    end
  end

  policies do
    bypass System do
      authorize_if always()
    end

    policy action_type(:read) do
      authorize_if {RelatedInScope, path: :child, entity: :family, access: :read}
    end

    policy action_type(:read) do
      authorize_if {RelatedInScope, path: :parent, entity: :family, access: :read}
    end

    policy action_type([:create, :destroy]) do
      authorize_if {RelatedInScope, path: :child, entity: :family, access: :edit}
    end

    policy action_type([:create, :destroy]) do
      authorize_if {RelatedInScope, path: :parent, entity: :family, access: :edit}
    end
  end

  changes do
    change {RecordEdit, table: "families", record_id: :parent_family_id}, on: [:create]
  end

  attributes do
    attribute :parent_family_id, :uuid, allow_nil?: false, public?: true
    attribute :child_family_id, :uuid, allow_nil?: false, public?: true
    attribute :rel_id, :uuid, primary_key?: true, allow_nil?: false, default: &Ash.UUID.generate/0
  end

  relationships do
    belongs_to :child, Family,
      source_attribute: :child_family_id,
      define_attribute?: false,
      public?: true

    belongs_to :parent, Family,
      source_attribute: :parent_family_id,
      define_attribute?: false,
      public?: true
  end

  aggregates do
    first :child_name, :child, :name, public?: true
    first :parent_name, :parent, :name, public?: true
  end
end
