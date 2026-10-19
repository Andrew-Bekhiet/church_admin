defmodule ChurchAdmin.Accounts.Invitation do
  use Ash.Resource,
    domain: ChurchAdmin.Accounts,
    data_layer: AshPostgres.DataLayer,
    authorizers: [Ash.Policy.Authorizer],
    extensions: [AshGraphql.Resource]

  alias ChurchAdmin.Accounts.User
  alias ChurchAdmin.Accounts.Validations.ExpiresWithinThirtyDays
  alias ChurchAdmin.Authz.Checks.{RelatedInScope, System}
  alias ChurchAdmin.Changes.StampActor
  alias ChurchAdmin.Types.Text

  graphql do
    type :invitation

    mutations do
      create :create_invitation, :create_invitation
      update :update_invitation_expiry, :update_invitation_expiry
    end
  end

  postgres do
    schema "auth"
    table "invitations"
    repo ChurchAdmin.Repo

    migration_defaults created_at: ~S[fragment("now()")],
                       expires_at: ~S[fragment("(now() + '7 days'::interval)")],
                       code:
                         ~S[fragment("auth.format_invitation_code(auth.generate_invitation_code())")]

    identity_index_names unique_code: "invitations_code_key",
                         unique_user_uid: "invitations_user_uid_key"

    references do
      reference :creator, on_delete: :restrict, on_update: :restrict
      reference :user, on_delete: :delete, on_update: :restrict
    end
  end

  actions do
    defaults [:read]

    create :create_invitation do
      accept [:user_uid, :expires_at]
      change {StampActor, attribute: :created_by}
      validate ExpiresWithinThirtyDays
    end

    update :update_invitation_expiry do
      accept [:expires_at]
      require_atomic? false
      validate ExpiresWithinThirtyDays
    end

    update :mark_claimed do
      accept []
      change set_attribute(:claimed_at, &DateTime.utc_now/0)
    end
  end

  policies do
    bypass System do
      authorize_if always()
    end

    policy always() do
      authorize_if {RelatedInScope, path: :user, entity: :user, access: :edit}
    end
  end

  attributes do
    attribute :id, :uuid,
      primary_key?: true,
      allow_nil?: false,
      default: &Ash.UUID.generate/0,
      public?: true

    attribute :user_uid, :uuid, allow_nil?: false, public?: true
    attribute :created_by, :uuid, allow_nil?: false, public?: true

    attribute :created_at, AshPostgres.TimestamptzUsec,
      allow_nil?: false,
      default: &DateTime.utc_now/0,
      public?: true

    attribute :expires_at, AshPostgres.TimestamptzUsec,
      allow_nil?: false,
      generated?: true,
      public?: true

    attribute :claimed_at, AshPostgres.TimestamptzUsec, public?: true
    attribute :code, Text, allow_nil?: false, generated?: true, public?: true
  end

  relationships do
    belongs_to :creator, User,
      source_attribute: :created_by,
      destination_attribute: :uid,
      define_attribute?: false,
      public?: true

    belongs_to :user, User,
      source_attribute: :user_uid,
      destination_attribute: :uid,
      define_attribute?: false,
      public?: true
  end

  identities do
    identity :unique_code, [:code]
    identity :unique_user_uid, [:user_uid]
  end
end
