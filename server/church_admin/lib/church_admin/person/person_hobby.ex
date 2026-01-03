defmodule ChurchAdmin.Person.PersonHobby do
  use Ash.Resource,
    domain: ChurchAdmin.Person,
    data_layer: AshPostgres.DataLayer,
    extensions: [AshGraphql.Resource]

  @moduledoc """
  Join resource for public.persons_hobbies (person <-> hobby)
  """

  graphql do
    type :persons_hobbies

    queries do
      list :persons_hobbies, :read
      get :person_hobby, :read
    end

    mutations do
      create :add_person_hobby, :create
      destroy :remove_person_hobby, :destroy
    end
  end

  postgres do
    repo ChurchAdmin.Repo
    table "persons_hobbies"
    schema "public"

    references do
      reference :person, on_update: :update, on_delete: :delete
      reference :hobby, on_update: :update, on_delete: :delete
    end
  end

  actions do
    defaults [:read, :destroy]

    create :create do
      primary? true
      accept [:person_id, :hobby_id]
    end
  end

  attributes do
    uuid_v7_primary_key :rel_id
    attribute :person_id, :uuid, allow_nil?: false
    attribute :hobby_id, :uuid, allow_nil?: false
  end

  relationships do
    belongs_to :person, ChurchAdmin.Person.Person do
      source_attribute :person_id
      allow_nil? false
      public? true
    end

    belongs_to :hobby, ChurchAdmin.Person.Hobby do
      source_attribute :hobby_id
      allow_nil? false
      public? true
    end
  end

  identities do
    identity :person_hobby_unique, [:person_id, :hobby_id]
  end
end
