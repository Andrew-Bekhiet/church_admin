defmodule ChurchAdmin.TestDomain.ThingMembership do
  @moduledoc false

  use Ash.Resource,
    domain: ChurchAdmin.TestDomain,
    data_layer: AshPostgres.DataLayer

  alias ChurchAdmin.History.Changes.RecordEdit

  postgres do
    table "thing_memberships"
    repo ChurchAdmin.Repo
    migrate? false
  end

  actions do
    defaults [:read, create: [:group_id, :person_id]]
  end

  changes do
    change {RecordEdit, record_id: [{"groups", :group_id}, {"persons", :person_id}]},
      on: [:create, :update]
  end

  attributes do
    uuid_primary_key :id
    attribute :group_id, :uuid, allow_nil?: false, public?: true
    attribute :person_id, :uuid, allow_nil?: false, public?: true
  end
end
