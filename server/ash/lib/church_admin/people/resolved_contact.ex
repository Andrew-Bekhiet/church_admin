defmodule ChurchAdmin.People.ResolvedContact do
  use Ash.Resource,
    domain: ChurchAdmin.People,
    data_layer: AshPostgres.DataLayer,
    authorizers: [Ash.Policy.Authorizer],
    fragments: [ChurchAdmin.Archival.HideRecordsOfArchivedPerson],
    extensions: [AshGraphql.Resource]

  alias ChurchAdmin.Authz.Checks.{InScope, System}
  alias ChurchAdmin.Catalog.PersonType
  alias ChurchAdmin.People.{Family, Person}
  alias ChurchAdmin.Types.Text

  graphql do
    type :family_contact

    relationships [:person, :person_type, :family]

    queries do
      list :family_contacts, :read
    end
  end

  postgres do
    migrate? false
    table "resolved_contacts"
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
      authorize_if {InScope, entity: :resolved_contact, access: :read}
    end
  end

  attributes do
    attribute :id, :uuid, primary_key?: true, allow_nil?: false, public?: true
    attribute :person_id, :uuid, public?: true
    attribute :family_id, :uuid, public?: true
    attribute :person_type_id, :uuid, public?: true
    attribute :label, Text, public?: true
    attribute :phone, Text, public?: true
    attribute :is_main_phone, :boolean, public?: true
    attribute :created_at, AshPostgres.TimestamptzUsec, public?: true
    attribute :updated_at, AshPostgres.TimestamptzUsec, public?: true
    attribute :effective_family_id, :uuid, public?: true
    attribute :effective_person_type_id, :uuid, public?: true
  end

  relationships do
    belongs_to :person, Person, define_attribute?: false, public?: true

    belongs_to :person_type, PersonType,
      source_attribute: :effective_person_type_id,
      define_attribute?: false,
      public?: true

    belongs_to :family, Family,
      source_attribute: :effective_family_id,
      define_attribute?: false,
      public?: true

    has_many :family_members, Person,
      source_attribute: :effective_family_id,
      destination_attribute: :family_id
  end

  aggregates do
    first :person_type_order, :person_type, :order, public?: true
  end
end
