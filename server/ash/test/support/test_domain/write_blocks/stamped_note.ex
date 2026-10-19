defmodule ChurchAdmin.TestDomain.StampedNote do
  @moduledoc false

  use Ash.Resource,
    domain: ChurchAdmin.TestDomain,
    data_layer: AshPostgres.DataLayer

  alias ChurchAdmin.Changes.StampActor
  alias ChurchAdmin.History.Changes.RecordEdit

  postgres do
    table "stamped_notes"
    repo ChurchAdmin.Repo
    migrate? false
  end

  actions do
    defaults [:read, create: [:person_id, :recorded_by]]
  end

  changes do
    change {StampActor, attribute: :recorded_by}, on: :create

    change {RecordEdit,
            table: "persons", record_id: :person_id, recorded_by: {:attribute, :recorded_by}},
           on: :create
  end

  attributes do
    uuid_primary_key :id
    attribute :person_id, :uuid, allow_nil?: false, public?: true
    attribute :recorded_by, :uuid, allow_nil?: false, public?: true
  end
end
