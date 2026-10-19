defmodule ChurchAdmin.TestDomain.GuardedThing do
  @moduledoc """
  Holds the invariant "no stored thing is named `broken`", checked against the
  rows as written.
  """

  use Ash.Resource,
    domain: ChurchAdmin.TestDomain,
    data_layer: AshPostgres.DataLayer

  require Ash.Query

  alias ChurchAdmin.Errors.Codes
  alias ChurchAdmin.Validations.InvariantHolds

  postgres do
    table "guarded_things"
    repo ChurchAdmin.Repo
    migrate? false
  end

  actions do
    defaults [:read, create: [:name], update: [:name]]
  end

  changes do
    change {InvariantHolds,
            code: Codes.validation_invalid(), fields: [:name], violations: &__MODULE__.broken/1},
           on: [:create, :update]
  end

  attributes do
    uuid_primary_key :id
    attribute :name, :string, allow_nil?: false, public?: true
  end

  @spec broken([Ash.Resource.Record.t()]) :: Ash.Query.t()
  def broken(records) do
    ids = Enum.map(records, & &1.id)
    Ash.Query.filter(__MODULE__, id in ^ids and name == "broken")
  end
end
