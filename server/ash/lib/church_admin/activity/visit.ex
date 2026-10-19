defmodule ChurchAdmin.Activity.Visit do
  use Ash.Resource,
    domain: ChurchAdmin.Activity,
    data_layer: AshPostgres.DataLayer,
    extensions: [AshGraphql.Resource],
    fragments: [ChurchAdmin.Authz.Fragments.HistoryRecord]

  alias ChurchAdmin.Accounts.User
  alias ChurchAdmin.Types.Text

  graphql do
    type :visit
  end

  postgres do
    schema "history"
    table "visit_history"
    repo ChurchAdmin.Repo
    migration_types table: :name

    migration_defaults time: ~S[fragment("now()")],
                       recorded_by:
                         ~S[fragment("(((current_setting('hasura.user'::text, true))::json ->> 'x-hasura-user-id'::text))::uuid")]

    references do
      reference :user,
        on_delete: :restrict,
        on_update: :restrict,
        name: "visit_history_user_uid_fkey"
    end
  end

  actions do
    defaults [:read]
  end

  attributes do
    attribute :visit_id, :uuid,
      primary_key?: true,
      allow_nil?: false,
      default: &Ash.UUID.generate/0,
      public?: true

    attribute :table, Text, allow_nil?: false, public?: true
    attribute :record_id, :uuid, allow_nil?: false, public?: true

    attribute :time, AshPostgres.TimestamptzUsec,
      allow_nil?: false,
      default: &DateTime.utc_now/0,
      public?: true

    attribute :recorded_by, :uuid, generated?: true, public?: true
    attribute :is_father_visit, :boolean, allow_nil?: false, default: false, public?: true
  end

  relationships do
    belongs_to :user, User,
      source_attribute: :recorded_by,
      destination_attribute: :uid,
      define_attribute?: false,
      public?: true
  end
end
