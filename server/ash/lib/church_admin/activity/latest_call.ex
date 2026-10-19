defmodule ChurchAdmin.Activity.LatestCall do
  use Ash.Resource,
    domain: ChurchAdmin.Activity,
    data_layer: AshPostgres.DataLayer,
    extensions: [AshGraphql.Resource]

  alias ChurchAdmin.Accounts.User
  alias ChurchAdmin.People.Person
  alias ChurchAdmin.Types.Text

  graphql do
    type :latest_call
  end

  postgres do
    migrate? false
    schema "history"
    table "latest_calls"
    repo ChurchAdmin.Repo
  end

  actions do
    defaults [:read]
  end

  attributes do
    attribute :person_id, :uuid, primary_key?: true, allow_nil?: false, public?: true
    attribute :time, AshPostgres.TimestamptzUsec, public?: true
    attribute :recorded_by, :uuid, public?: true
    attribute :user_role, Text
  end

  relationships do
    belongs_to :person, Person, define_attribute?: false, public?: true

    belongs_to :user, User,
      source_attribute: :recorded_by,
      destination_attribute: :uid,
      define_attribute?: false,
      public?: true
  end
end
