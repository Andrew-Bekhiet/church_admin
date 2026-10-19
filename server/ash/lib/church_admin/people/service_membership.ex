defmodule ChurchAdmin.People.ServiceMembership do
  use Ash.Resource,
    domain: ChurchAdmin.People,
    data_layer: AshPostgres.DataLayer,
    authorizers: [Ash.Policy.Authorizer],
    extensions: [AshGraphql.Resource]

  alias ChurchAdmin.Organization.Service
  alias ChurchAdmin.Authz.Checks.{RelatedInScope, System}
  alias ChurchAdmin.People.Person

  graphql do
    type :service_membership

    relationships [:person, :service]

    queries do
      list :service_memberships, :read
    end
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
    read :read do
      primary? true

      pagination keyset?: true,
                 countable: true,
                 required?: false,
                 default_limit: 100,
                 max_page_size: 100
    end
  end

  policies do
    bypass System do
      authorize_if always()
    end

    policy action_type(:read) do
      authorize_if {RelatedInScope, path: :person, entity: :person, access: :read}
    end

    policy action_type(:read) do
      authorize_if {RelatedInScope, path: :service, entity: :service, access: :read}
    end
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

  calculations do
    calculate :is_outside_service_study_years,
              :boolean,
              expr(
                not exists(
                  person,
                  is_nil(study_year_id) or
                    (is_nil(parent(service.study_year_from_id)) and
                       is_nil(parent(service.study_year_to_id))) or
                    (parent(service.study_year_from_id) <= study_year_id and
                       parent(service.study_year_to_id) >= study_year_id)
                )
              ),
              allow_nil?: false,
              public?: true
  end

  identities do
    identity :unique_person_id_service_id, [:person_id, :service_id]
  end
end
