defmodule ChurchAdmin.People.GroupMembership do
  use Ash.Resource,
    domain: ChurchAdmin.People,
    data_layer: AshPostgres.DataLayer,
    fragments: [ChurchAdmin.Archival.HideRecordsOfArchivedPerson],
    extensions: [AshGraphql.Resource]

  alias ChurchAdmin.Organization.Group
  alias ChurchAdmin.Authz.Checks.{RelatedInScope, System}
  alias ChurchAdmin.History.Changes.RecordEdit
  alias ChurchAdmin.People.Person

  graphql do
    type :group_membership

    relationships [:person, :group]

    queries do
      list :group_memberships, :read
    end
  end

  postgres do
    table "persons_groups"
    repo ChurchAdmin.Repo
    identity_index_names unique_person_id_group_id: "persons_groups_person_id_group_id_key"

    references do
      reference :group, on_delete: :delete, on_update: :restrict
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

    create :join_group do
      accept [:person_id, :group_id]

      change {RecordEdit, record_id: [{"groups", :group_id}, {"persons", :person_id}]}
    end

    destroy :leave_group
  end

  policies do
    bypass System do
      authorize_if always()
    end

    policy action_type(:read) do
      authorize_if {RelatedInScope, path: :person, entity: :person, access: :read}
    end

    policy action_type(:read) do
      authorize_if {RelatedInScope, path: :group, entity: :group, access: :read}
    end

    policy action_type([:create, :destroy]) do
      authorize_if {RelatedInScope, path: :person, entity: :person, access: :edit}
    end

    policy action_type([:create, :destroy]) do
      authorize_if {RelatedInScope, path: :group, entity: :group, access: :edit}
    end
  end

  attributes do
    attribute :person_id, :uuid, allow_nil?: false, public?: true
    attribute :group_id, :uuid, allow_nil?: false, public?: true
    attribute :rel_id, :uuid, primary_key?: true, allow_nil?: false, default: &Ash.UUID.generate/0
  end

  relationships do
    belongs_to :group, Group, define_attribute?: false, public?: true
    belongs_to :person, Person, define_attribute?: false, public?: true
  end

  aggregates do
    first :group_name, :group, :name, public?: true
  end

  identities do
    identity :unique_person_id_group_id, [:person_id, :group_id]
  end
end
