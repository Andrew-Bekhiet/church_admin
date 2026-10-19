defmodule ChurchAdmin.Activity.LatestVisit do
  use Ash.Resource,
    domain: ChurchAdmin.Activity,
    data_layer: AshPostgres.DataLayer,
    authorizers: [Ash.Policy.Authorizer],
    extensions: [AshGraphql.Resource],
    fragments: [ChurchAdmin.Authz.Fragments.HistoryRecord]

  alias ChurchAdmin.Accounts.User
  alias ChurchAdmin.Authz.Checks.{InScope, System}
  alias ChurchAdmin.Types.Text

  graphql do
    type :latest_visit

    relationships [:user]

    queries do
      list :latest_visits, :read
    end
  end

  postgres do
    migrate? false
    schema "history"
    table "latest_visits"
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

    policy action_type(:read) do
      authorize_if {InScope, entity: :history_record, access: :read}
    end
  end

  attributes do
    attribute :table, Text, primary_key?: true, allow_nil?: false, public?: true
    attribute :record_id, :uuid, primary_key?: true, allow_nil?: false, public?: true
    attribute :time, AshPostgres.TimestamptzUsec, public?: true
    attribute :recorded_by, :uuid, public?: true
    attribute :visit_id, :uuid, public?: true
  end

  relationships do
    belongs_to :user, User,
      source_attribute: :recorded_by,
      destination_attribute: :uid,
      define_attribute?: false,
      public?: true
  end
end
