defmodule ChurchAdmin.Attendance.PersonService do
  use Ash.Resource,
    domain: ChurchAdmin.Attendance,
    data_layer: AshPostgres.DataLayer,
    extensions: [AshGraphql.Resource]

  @moduledoc """
  Join resource for public.persons_services (person <-> service)
  """

  graphql do
    type :persons_services

    queries do
      list :persons_services, :read
      get :person_service, :read
    end

    mutations do
      create :add_person_to_service, :create
      destroy :remove_person_from_service, :destroy
    end
  end

  postgres do
    repo ChurchAdmin.Repo
    table "persons_services"
    schema "public"

    references do
      reference :person, on_update: :update, on_delete: :delete
      reference :service, on_update: :update, on_delete: :delete
    end
  end

  actions do
    defaults [:read, :destroy]

    create :create do
      primary? true
      accept [:person_id, :service_id]
    end
  end

  attributes do
    uuid_v7_primary_key :rel_id
    attribute :person_id, :uuid, allow_nil?: false
    attribute :service_id, :uuid, allow_nil?: false
  end

  relationships do
    belongs_to :person, ChurchAdmin.Person.Person do
      source_attribute :person_id
      allow_nil? false
      public? true
    end

    belongs_to :service, ChurchAdmin.Attendance.Service do
      source_attribute :service_id
      allow_nil? false
      public? true
    end
  end

  identities do
    identity :person_service_unique, [:person_id, :service_id]
  end
end
