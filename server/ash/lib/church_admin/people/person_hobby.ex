defmodule ChurchAdmin.People.PersonHobby do
  use Ash.Resource,
    domain: ChurchAdmin.People,
    data_layer: AshPostgres.DataLayer,
    extensions: [AshGraphql.Resource]

  alias ChurchAdmin.Catalog.Hobby
  alias ChurchAdmin.People.Person

  graphql do
    type :person_hobby
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
    defaults [:read]
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
end
