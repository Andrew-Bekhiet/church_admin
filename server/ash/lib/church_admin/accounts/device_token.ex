defmodule ChurchAdmin.Accounts.DeviceToken do
  use Ash.Resource,
    domain: ChurchAdmin.Accounts,
    data_layer: AshPostgres.DataLayer,
    extensions: [AshGraphql.Resource]

  alias ChurchAdmin.Accounts.User
  alias ChurchAdmin.Types.Text

  graphql do
    type :device_token
  end

  postgres do
    table "users_fcm_tokens"
    repo ChurchAdmin.Repo
    migration_defaults created_at: ~S[fragment("now()")]

    references do
      reference :user, on_delete: :delete, on_update: :update
    end
  end

  actions do
    defaults [:read]
  end

  attributes do
    attribute :uid, :uuid, primary_key?: true, allow_nil?: false, public?: true
    attribute :token, Text, primary_key?: true, allow_nil?: false, public?: true

    attribute :created_at, AshPostgres.TimestamptzUsec,
      allow_nil?: false,
      default: &DateTime.utc_now/0,
      public?: true
  end

  relationships do
    belongs_to :user, User,
      source_attribute: :uid,
      destination_attribute: :uid,
      define_attribute?: false,
      public?: true
  end
end
