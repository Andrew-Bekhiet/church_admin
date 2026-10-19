defmodule ChurchAdmin.People.FamilyRelation do
  use Ash.Resource,
    domain: ChurchAdmin.People,
    data_layer: AshPostgres.DataLayer,
    extensions: [AshGraphql.Resource]

  alias ChurchAdmin.People.Family

  graphql do
    type :family_relation
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
    defaults [:read]
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
end
