defmodule ChurchAdmin.People.PersonHobby do
  use Ash.Resource,
    domain: ChurchAdmin.People,
    data_layer: AshPostgres.DataLayer,
    authorizers: [Ash.Policy.Authorizer],
    extensions: [AshGraphql.Resource]

  alias ChurchAdmin.Catalog.Hobby
  alias ChurchAdmin.Authz.Checks.{RelatedInScope, System}
  alias ChurchAdmin.People.Person

  graphql do
    type :person_hobby

    relationships [:person]

    queries do
      list :person_hobbies, :read
    end
  end

  postgres do
    table "persons_hobbies"
    repo ChurchAdmin.Repo

    references do
      reference :hobby, on_delete: :restrict, on_update: :restrict
      reference :person, on_delete: :delete, on_update: :restrict
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
  end

  attributes do
    attribute :rel_id, :uuid, primary_key?: true, allow_nil?: false, default: &Ash.UUID.generate/0
    attribute :person_id, :uuid, allow_nil?: false, public?: true
    attribute :hobby_id, :uuid, allow_nil?: false, public?: true
  end

  relationships do
    belongs_to :hobby, Hobby, define_attribute?: false, public?: true
    belongs_to :person, Person, define_attribute?: false, public?: true
  end

  aggregates do
    first :hobby_name, :hobby, :name, public?: true
  end
end
