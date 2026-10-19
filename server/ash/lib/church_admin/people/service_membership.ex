defmodule ChurchAdmin.People.ServiceMembership do
  use Ash.Resource,
    domain: ChurchAdmin.People,
    data_layer: AshPostgres.DataLayer,
    extensions: [AshGraphql.Resource]

  alias ChurchAdmin.Organization.Service
  alias ChurchAdmin.People.Person

  graphql do
    type :service_membership
  end

  postgres do
    table "persons_services"
    repo ChurchAdmin.Repo
    identity_index_names unique_person_id_service_id: "persons_services_person_id_service_id_key"

    references do
      reference :person, on_delete: :delete, on_update: :restrict
      reference :service, on_delete: :delete, on_update: :restrict
    end
  end

  actions do
    defaults [:read]
  end

  attributes do
    attribute :person_id, :uuid, allow_nil?: false, public?: true
    attribute :service_id, :uuid, allow_nil?: false, public?: true
    attribute :rel_id, :uuid, primary_key?: true, allow_nil?: false, default: &Ash.UUID.generate/0
  end

  relationships do
    belongs_to :person, Person, define_attribute?: false, public?: true
    belongs_to :service, Service, define_attribute?: false, public?: true
  end

  identities do
    identity :unique_person_id_service_id, [:person_id, :service_id]
  end
end
