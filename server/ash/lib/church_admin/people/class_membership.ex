defmodule ChurchAdmin.People.ClassMembership do
  use Ash.Resource,
    domain: ChurchAdmin.People,
    data_layer: AshPostgres.DataLayer,
    extensions: [AshGraphql.Resource]

  alias ChurchAdmin.Organization.Class
  alias ChurchAdmin.People.Person

  graphql do
    type :class_membership
  end

  postgres do
    migrate? false
    table "classes_persons"
    repo ChurchAdmin.Repo
  end

  actions do
    defaults [:read]
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
end
