defmodule ChurchAdmin.Attendance.PersonGroup do
  use Ash.Resource,
    authorizers: [Ash.Policy.Authorizer],
    domain: ChurchAdmin.Attendance,
    data_layer: AshPostgres.DataLayer,
    extensions: [AshGraphql.Resource]

  @moduledoc """
  Join resource for public.persons_groups (person <-> group)
  """

  graphql do
    type :persons_groups

    queries do
      list :persons_groups, :read
      get :person_group, :read
    end

    mutations do
      create :add_person_to_group, :create
      destroy :remove_person_from_group, :destroy
    end
  end

  postgres do
    repo ChurchAdmin.Repo
    table "persons_groups"
    schema "public"

    references do
      reference :person, on_update: :update, on_delete: :delete
      reference :group, on_update: :update, on_delete: :delete
    end
  end

  actions do
    defaults [:read, :destroy]

    create :create do
      primary? true
      accept [:person_id, :group_id]
    end
  end

  attributes do
    uuid_v7_primary_key :rel_id
    attribute :person_id, :uuid, allow_nil?: false
    attribute :group_id, :uuid, allow_nil?: false
  end

  relationships do
    belongs_to :person, ChurchAdmin.Person.Person do
      source_attribute :person_id
      allow_nil? false
      public? true
    end

    belongs_to :group, ChurchAdmin.Attendance.Group do
      source_attribute :group_id
      allow_nil? false
      public? true
    end
  end

  identities do
    identity :person_group_unique, [:person_id, :group_id]
  end
end
