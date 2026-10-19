defmodule ChurchAdmin.People.PersonTag do
  use Ash.Resource,
    domain: ChurchAdmin.People,
    data_layer: AshPostgres.DataLayer,
    authorizers: [Ash.Policy.Authorizer],
    extensions: [AshGraphql.Resource]

  alias ChurchAdmin.Catalog.Tag
  alias ChurchAdmin.Authz.Checks.{RelatedInScope, System}
  alias ChurchAdmin.History.Changes.RecordEdit
  alias ChurchAdmin.People.Person

  graphql do
    type :person_tag

    relationships [:person]

    queries do
      list :person_tags, :read
    end
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
    read :read do
      primary? true

      pagination keyset?: true,
                 countable: true,
                 required?: false,
                 default_limit: 100,
                 max_page_size: 100
    end

    create :add_tag do
      accept [:person_id, :tag_id]

      change {RecordEdit, record_id: [{"tags", :tag_id}, {"persons", :person_id}]}
    end

    destroy :remove_tag
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
    attribute :person_id, :uuid, allow_nil?: false, public?: true
    attribute :tag_id, :uuid, allow_nil?: false, public?: true
    attribute :rel_id, :uuid, primary_key?: true, allow_nil?: false, default: &Ash.UUID.generate/0
  end

  relationships do
    belongs_to :person, Person, define_attribute?: false, public?: true
    belongs_to :tag, Tag, define_attribute?: false, public?: true
  end

  aggregates do
    first :tag_name, :tag, :name, public?: true
  end
end
