defmodule ChurchAdmin.People.MainContact do
  use Ash.Resource,
    domain: ChurchAdmin.People,
    data_layer: AshPostgres.DataLayer,
    authorizers: [Ash.Policy.Authorizer],
    fragments: [ChurchAdmin.Archival.HideRecordsOfArchivedPerson],
    extensions: [AshGraphql.Resource]

  alias ChurchAdmin.Authz.Checks.{RelatedInScope, System}
  alias ChurchAdmin.People.Person
  alias ChurchAdmin.Types.Text

  graphql do
    type :main_contact

    relationships [:person]

    queries do
      list :main_contacts, :read
    end
  end

  postgres do
    migrate? false
    table "persons_main_contacts"
    repo ChurchAdmin.Repo
  end

  actions do
    read :read do
      primary? true

      pagination keyset?: true,
                 countable: true,
                 required?: false,
                 default_limit: 100,
                 max_page_size: 1000
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
    attribute :id, :uuid, primary_key?: true, allow_nil?: false, public?: true
    attribute :person_id, :uuid, public?: true
    attribute :label, Text, public?: true
    attribute :phone, Text, public?: true
  end

  relationships do
    belongs_to :person, Person, define_attribute?: false, public?: true
  end
end
