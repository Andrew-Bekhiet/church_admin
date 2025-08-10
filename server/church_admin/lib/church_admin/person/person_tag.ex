defmodule ChurchAdmin.Person.PersonTag do
  use Ash.Resource,
    authorizers: [Ash.Policy.Authorizer],
    domain: ChurchAdmin.Person,
    data_layer: AshPostgres.DataLayer,
    extensions: [AshGraphql.Resource]

  @moduledoc """
  Join resource for public.persons_tags (person <-> tag)
  """

  graphql do
    type :persons_tags

    queries do
      list :persons_tags, :read
      get :person_tag, :read
    end

    mutations do
      create :add_person_tag, :create
      destroy :remove_person_tag, :destroy
    end
  end

  postgres do
    repo ChurchAdmin.Repo
    table "persons_tags"
    schema "public"

    references do
      reference :person, on_update: :update, on_delete: :delete
      reference :tag, on_update: :update, on_delete: :delete
    end
  end

  actions do
    defaults [:read, :destroy]

    create :create do
      primary? true
      accept [:person_id, :tag_id]
    end
  end

  attributes do
    uuid_v7_primary_key :rel_id
    attribute :person_id, :uuid, allow_nil?: false
    attribute :tag_id, :uuid, allow_nil?: false
  end

  relationships do
    belongs_to :person, ChurchAdmin.Person.Person do
      source_attribute :person_id
      allow_nil? false
      public? true
    end

    belongs_to :tag, ChurchAdmin.Person.Tag do
      source_attribute :tag_id
      allow_nil? false
      public? true
    end
  end

  identities do
    identity :person_tag_unique, [:person_id, :tag_id]
  end
end
