defmodule ChurchAdmin.People.GroupMembership do
  use Ash.Resource,
    domain: ChurchAdmin.People,
    data_layer: AshPostgres.DataLayer,
    extensions: [AshGraphql.Resource]

  alias ChurchAdmin.Organization.Group
  alias ChurchAdmin.People.Person

  graphql do
    type :group_membership
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
    defaults [:read]
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

  identities do
    identity :unique_person_id_group_id, [:person_id, :group_id]
  end
end
