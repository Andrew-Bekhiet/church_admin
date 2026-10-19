defmodule ChurchAdmin.People.MainContact do
  use Ash.Resource,
    domain: ChurchAdmin.People,
    data_layer: AshPostgres.DataLayer,
    extensions: [AshGraphql.Resource]

  alias ChurchAdmin.People.Person
  alias ChurchAdmin.Types.Text

  graphql do
    type :main_contact
  end

  postgres do
    migrate? false
    table "persons_main_contacts"
    repo ChurchAdmin.Repo
  end

  actions do
    defaults [:read]
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
