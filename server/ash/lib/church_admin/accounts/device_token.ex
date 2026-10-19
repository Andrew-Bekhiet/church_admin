defmodule ChurchAdmin.Accounts.DeviceToken do
  use Ash.Resource,
    domain: ChurchAdmin.Accounts,
    data_layer: AshPostgres.DataLayer,
    authorizers: [Ash.Policy.Authorizer],
    extensions: [AshGraphql.Resource]

  alias ChurchAdmin.Accounts.User
  alias ChurchAdmin.Authz.Checks.System
  alias ChurchAdmin.Types.Text

  graphql do
    type :device_token

    mutations do
      create :register_fcm_token, :register_fcm_token
    end
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
    defaults [:read, :destroy]

    create :register_fcm_token do
      description "Remembers the device token for the acting user; registering it again returns the stored row."
      accept [:token]
      upsert? true
      upsert_condition expr(false)
      return_skipped_upsert? true

      change set_attribute(:uid, actor(:uid))
    end
  end

  policies do
    bypass System do
      authorize_if always()
    end

    policy action_type(:read) do
      authorize_if expr(uid == ^actor(:uid))
    end

    policy action(:register_fcm_token) do
      forbid_if expr(is_nil(^actor(:uid)))
      authorize_if expr(uid == ^actor(:uid))
    end
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
