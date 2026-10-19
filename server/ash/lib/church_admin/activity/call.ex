defmodule ChurchAdmin.Activity.Call do
  use Ash.Resource,
    domain: ChurchAdmin.Activity,
    data_layer: AshPostgres.DataLayer,
    extensions: [AshGraphql.Resource],
    fragments: [ChurchAdmin.Authz.Fragments.PersonChild]

  alias ChurchAdmin.Accounts.User
  alias ChurchAdmin.Authz.Checks.System
  alias ChurchAdmin.People.Person
  alias ChurchAdmin.Types.Text

  graphql do
    type :call

    relationships [:person, :user]

    queries do
      list :calls, :read
    end
  end

  postgres do
    schema "history"
    table "call_history"
    repo ChurchAdmin.Repo

    migration_defaults time: ~S[fragment("now()")],
                       recorded_by:
                         ~S[fragment("(((current_setting('hasura.user'::text, true))::json ->> 'x-hasura-user-id'::text))::uuid")],
                       user_role:
                         ~S[fragment("COALESCE(((current_setting('hasura.user'::text, true))::json ->> 'x-hasura-role'::text), 'postgres'::text)")]

    references do
      reference :person, on_delete: :nothing, on_update: :nothing
      reference :user, on_delete: :restrict, on_update: :restrict
    end
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
    attribute :time, AshPostgres.TimestamptzUsec,
      primary_key?: true,
      allow_nil?: false,
      default: &DateTime.utc_now/0,
      public?: true

    attribute :person_id, :uuid, allow_nil?: false, public?: true
    attribute :recorded_by, :uuid, generated?: true, public?: true
    attribute :user_role, Text, generated?: true
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
