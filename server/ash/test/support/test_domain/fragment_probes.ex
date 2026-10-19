defmodule ChurchAdmin.TestDomain.LookupProbe do
  @moduledoc "An in-memory lookup list built on `ChurchAdmin.Authz.Fragments.Lookup`."

  use Ash.Resource,
    domain: ChurchAdmin.TestDomain,
    data_layer: Ash.DataLayer.Ets,
    fragments: [ChurchAdmin.Authz.Fragments.Lookup]

  actions do
    defaults [:read, :destroy, create: [:name], update: [:name]]
  end

  attributes do
    uuid_primary_key :id
    attribute :name, :string, public?: true
  end
end

defmodule ChurchAdmin.TestDomain.PersonChildProbe do
  @moduledoc "`persons_hobbies` rows read through `ChurchAdmin.Authz.Fragments.PersonChild`."

  use Ash.Resource,
    domain: ChurchAdmin.TestDomain,
    data_layer: AshPostgres.DataLayer,
    fragments: [ChurchAdmin.Authz.Fragments.PersonChild]

  postgres do
    table "persons_hobbies"
    repo ChurchAdmin.Repo
    migrate? false
  end

  actions do
    defaults [:read]
  end

  attributes do
    attribute :rel_id, :uuid, primary_key?: true, allow_nil?: false, default: &Ash.UUID.generate/0
    attribute :person_id, :uuid, allow_nil?: false
    attribute :hobby_id, :uuid, allow_nil?: false
  end

  relationships do
    belongs_to :person, ChurchAdmin.People.Person, define_attribute?: false
  end
end
