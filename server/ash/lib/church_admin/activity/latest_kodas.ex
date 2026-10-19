defmodule ChurchAdmin.Activity.LatestKodas do
  use Ash.Resource,
    domain: ChurchAdmin.Activity,
    data_layer: AshPostgres.DataLayer,
    extensions: [AshGraphql.Resource],
    fragments: [ChurchAdmin.Authz.Fragments.PersonChild]

  alias ChurchAdmin.Accounts.User
  alias ChurchAdmin.Authz.Checks.System
  alias ChurchAdmin.People.Person

  graphql do
    type :latest_kodas

    relationships [:person, :user]

    queries do
      list :latest_kodases, :read
    end
  end

  postgres do
    migrate? false
    schema "history"
    table "latest_kodases"
    repo ChurchAdmin.Repo
  end

  actions do
    read :read do
      primary? true

      pagination keyset?: true,
                 countable: true,
                 required?: false,
                 default_limit: 100,
                 max_page_size: 1000
    end
  end

  policies do
    bypass System do
      authorize_if always()
    end
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
