defmodule ChurchAdmin.Activity.LatestConfession do
  use Ash.Resource,
    domain: ChurchAdmin.Activity,
    data_layer: AshPostgres.DataLayer,
    extensions: [AshGraphql.Resource]

  alias ChurchAdmin.Accounts.User
  alias ChurchAdmin.People.Person

  graphql do
    type :latest_confession
  end

  postgres do
    migrate? false
    schema "history"
    table "latest_confessions"
    repo ChurchAdmin.Repo
  end

  actions do
    defaults [:read]
  end

  attributes do
    attribute :person_id, :uuid, primary_key?: true, allow_nil?: false, public?: true
    attribute :time, :date, public?: true
    attribute :recorded_by, :uuid, public?: true
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
