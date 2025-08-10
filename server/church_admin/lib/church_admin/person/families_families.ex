defmodule ChurchAdmin.Person.FamiliesFamilies do
  use Ash.Resource,
    authorizers: [Ash.Policy.Authorizer],
    domain: ChurchAdmin.Person,
    data_layer: AshPostgres.DataLayer,
    extensions: [AshGraphql.Resource]

  @moduledoc """
  Join resource for public.families_families (family <-> family)
  """

  graphql do
    type :families_families

    queries do
      list :families_families, :read
      get :families_family, :read
    end

    mutations do
      create :add_family_relationship, :create
      destroy :remove_family_relationship, :destroy
    end
  end

  postgres do
    repo ChurchAdmin.Repo
    table "families_families"
    schema "public"

    references do
      reference :parent_family, on_update: :update, on_delete: :delete
      reference :child_family, on_update: :update, on_delete: :delete
    end
  end

  actions do
    defaults [:read, :create, :destroy]
  end

  attributes do
    uuid_v7_primary_key :rel_id
    attribute :parent_family_id, :uuid, allow_nil?: false
    attribute :child_family_id, :uuid, allow_nil?: false
  end

  relationships do
    belongs_to :parent_family, ChurchAdmin.Person.Family do
      source_attribute :parent_family_id
      allow_nil? false
      public? true
    end

    belongs_to :child_family, ChurchAdmin.Person.Family do
      source_attribute :child_family_id
      allow_nil? false
      public? true
    end
  end

  identities do
    identity :family_relationship_unique, [:parent_family_id, :child_family_id]
  end
end
