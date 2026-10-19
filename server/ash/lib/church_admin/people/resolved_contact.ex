defmodule ChurchAdmin.People.ResolvedContact do
  use Ash.Resource,
    domain: ChurchAdmin.People,
    data_layer: AshPostgres.DataLayer,
    extensions: [AshGraphql.Resource]

  alias ChurchAdmin.Catalog.PersonType
  alias ChurchAdmin.People.{Family, Person}
  alias ChurchAdmin.Types.Text

  graphql do
    type :family_contact
  end

  postgres do
    migrate? false
    table "resolved_contacts"
    repo ChurchAdmin.Repo
  end

  actions do
    defaults [:read]
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
  end
end
