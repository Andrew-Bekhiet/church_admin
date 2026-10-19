defmodule ChurchAdmin.People.PersonTag do
  use Ash.Resource,
    domain: ChurchAdmin.People,
    data_layer: AshPostgres.DataLayer,
    extensions: [AshGraphql.Resource]

  alias ChurchAdmin.Catalog.Tag
  alias ChurchAdmin.People.Person

  graphql do
    type :person_tag
  end

  postgres do
    table "persons_tags"
    repo ChurchAdmin.Repo

    references do
      reference :person, on_delete: :delete, on_update: :restrict
      reference :tag, on_delete: :restrict, on_update: :restrict
    end
  end

  actions do
    defaults [:read]
  end

  attributes do
    attribute :person_id, :uuid, allow_nil?: false, public?: true
    attribute :tag_id, :uuid, allow_nil?: false, public?: true
    attribute :rel_id, :uuid, primary_key?: true, allow_nil?: false, default: &Ash.UUID.generate/0
  end

  relationships do
    belongs_to :person, Person, define_attribute?: false, public?: true
    belongs_to :tag, Tag, define_attribute?: false, public?: true
  end
end
