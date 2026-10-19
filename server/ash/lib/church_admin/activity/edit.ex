defmodule ChurchAdmin.Activity.Edit do
  use Ash.Resource,
    domain: ChurchAdmin.Activity,
    data_layer: AshPostgres.DataLayer,
    extensions: [AshGraphql.Resource]

  alias ChurchAdmin.Accounts.User
  alias ChurchAdmin.Types.Text

  graphql do
    type :edit
  end

  postgres do
    schema "history"
    table "edit_history"
    repo ChurchAdmin.Repo
    migration_types table: :name

    migration_defaults time: ~S[fragment("now()")],
                       recorded_by:
                         ~S[fragment("(((current_setting('hasura.user'::text, true))::json ->> 'x-hasura-user-id'::text))::uuid")],
                       user_role:
                         ~S[fragment("COALESCE(((current_setting('hasura.user'::text, true))::json ->> 'x-hasura-role'::text), 'postgres'::text)")]

    references do
      reference :user,
        on_delete: :restrict,
        on_update: :restrict,
        name: "edit_history_user_uid_fkey"
    end
  end

  actions do
    defaults [:read]

    create :record do
      public? false
      accept [:table, :record_id, :recorded_by, :user_role]
      change atomic_set(:time, expr(fragment("now()")))
    end
  end

  attributes do
    attribute :table, Text, allow_nil?: false, public?: true
    attribute :record_id, :uuid, allow_nil?: false, public?: true

    attribute :time, AshPostgres.TimestamptzUsec,
      allow_nil?: false,
      default: &DateTime.utc_now/0,
      public?: true

    attribute :recorded_by, :uuid, generated?: true, public?: true
    attribute :user_role, Text, allow_nil?: false, generated?: true

    attribute :audit_id, :uuid,
      primary_key?: true,
      allow_nil?: false,
      default: &Ash.UUID.generate/0
  end

  relationships do
    belongs_to :user, User,
      source_attribute: :recorded_by,
      destination_attribute: :uid,
      define_attribute?: false,
      public?: true
  end
end
