defmodule ChurchAdmin.People.ClassMembership do
  use Ash.Resource,
    domain: ChurchAdmin.People,
    data_layer: AshPostgres.DataLayer,
    authorizers: [Ash.Policy.Authorizer],
    extensions: [AshGraphql.Resource]

  alias ChurchAdmin.Authz.Checks.{RelatedInScope, System}
  alias ChurchAdmin.Organization.Class
  alias ChurchAdmin.People.Person

  graphql do
    type :class_membership

    relationships [:class, :person]

    queries do
      list :class_memberships, :read
    end
  end

  postgres do
    migrate? false
    table "classes_persons"
    repo ChurchAdmin.Repo
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
      authorize_if {RelatedInScope, path: :class, entity: :class, access: :read}
    end

    policy action_type(:read) do
      authorize_if {RelatedInScope, path: :person, entity: :person, access: :read}
    end
  end

  attributes do
    attribute :class_id, :uuid, primary_key?: true, allow_nil?: false, public?: true
    attribute :person_id, :uuid, primary_key?: true, allow_nil?: false, public?: true
    attribute :family_id, :uuid
  end

  relationships do
    belongs_to :class, Class, source_attribute: :class_id, define_attribute?: false, public?: true
    belongs_to :person, Person, define_attribute?: false, public?: true
  end

  aggregates do
    first :class_name, :class, :name, public?: true
  end
end
