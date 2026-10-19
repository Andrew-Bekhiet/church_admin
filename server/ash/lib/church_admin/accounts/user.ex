defmodule ChurchAdmin.Accounts.User do
  use Ash.Resource,
    domain: ChurchAdmin.Accounts,
    data_layer: AshPostgres.DataLayer,
    authorizers: [Ash.Policy.Authorizer],
    extensions: [AshGraphql.Resource, AshRateLimiter],
    fragments: [ChurchAdmin.Files.RecordsPhoto]

  alias ChurchAdmin.Accounts.{
    Actions,
    AdminOn,
    ClaimedAccount,
    DeviceToken,
    Invitation,
    InvitationAttempts,
    NewPerson,
    Preferences,
    ScopeGrant,
    UserPermission
  }

  alias ChurchAdmin.Accounts.Changes.{
    CanonicalizeNameAndEmail,
    CreateInvitation,
    LinkPerson,
    ManageGrants,
    PermissionLevelsConsistent,
    SeedPreferences,
    SetApproval
  }

  alias ChurchAdmin.Accounts.Validations.{
    EachScopeOnOneContainer,
    EmailLockedAfterClaim,
    GrantsWithinActorAuthority
  }

  alias ChurchAdmin.Activity.LatestEdit
  alias ChurchAdmin.Authz.Calculations.UserCanEdit
  alias ChurchAdmin.Authz.Checks.{HasPermission, InScope, SignedInToFirebase, System}
  alias ChurchAdmin.Errors.{Codes, ConstraintCodes}
  alias ChurchAdmin.People.Person
  alias ChurchAdmin.Types.Text

  graphql do
    type :user

    relationships [:person, :permissions, :scope_grants, :invitation, :preferences]

    queries do
      get :user, :read
      list :users, :read
    end

    mutations do
      create :create_user, :create_user
      update :update_user, :update_user
      update :update_user_permissions, :update_user_permissions
      update :approve_user, :approve_user
      update :unapprove_user, :unapprove_user
      action :apply_invitation_code, :apply_invitation_code
      action :try_claim_account, :try_claim_account
      action :delete_my_account, :delete_my_account
    end
  end

  postgres do
    schema "auth"
    table "users_data"
    repo ChurchAdmin.Repo

    identity_index_names unique_auth_id: "users_data_auth_id_key",
                         unique_email: "users_data_email_key",
                         unique_name: "users_data_name_key"
  end

  rate_limit do
    backend(InvitationAttempts)
    action :apply_invitation_code, limit: 6, per: :timer.hours(5), key: &InvitationAttempts.key/2
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

    create :create_user do
      accept [:name, :email]
      argument :permissions, {:array, :string}, allow_nil?: false, default: []
      argument :admin_on, {:array, AdminOn}, allow_nil?: false, default: []
      argument :person_id, :uuid
      argument :new_person, NewPerson
      argument :invitation_expires_at, :utc_datetime_usec

      validate present([:person_id, :new_person], exactly: 1)
      validate EachScopeOnOneContainer, before_action?: true
      validate GrantsWithinActorAuthority, before_action?: true
      change CanonicalizeNameAndEmail
      change ManageGrants
      change PermissionLevelsConsistent
      change {LinkPerson, as: :system}
      change CreateInvitation
    end

    update :update_user do
      accept [:name, :email]
      argument :person_id, :uuid
      require_atomic? false

      change CanonicalizeNameAndEmail
      change {LinkPerson, as: :actor}
    end

    update :update_user_permissions do
      accept []
      argument :permissions, {:array, :string}
      argument :admin_on, {:array, AdminOn}
      require_atomic? false

      validate EachScopeOnOneContainer, before_action?: true
      change ManageGrants
      change PermissionLevelsConsistent
    end

    update :approve_user do
      accept []
      require_atomic? false
      change {SetApproval, approved?: true}
    end

    update :unapprove_user do
      accept []
      require_atomic? false
      change {SetApproval, approved?: false}
    end

    update :claim_account do
      description "Links a Firebase account; callers check that no other account holds the user."
      accept [:auth_id, :email]
      require_atomic? false
    end

    update :sync_from_person do
      description "Shows the linked person's name and photo on the user; called by the person's writes."
      accept [:name, :photo_updated_at, :blurhash]
      require_atomic? false
    end

    update :release_account do
      description "Unlinks the Firebase account; the uid row stays."
      accept []
      change set_attribute(:auth_id, nil)
    end

    action :apply_invitation_code, ClaimedAccount do
      argument :code, :string, allow_nil?: false
      transaction? true
      run Actions.ApplyInvitationCode
    end

    action :try_claim_account, ClaimedAccount do
      transaction? true
      run Actions.TryClaimAccount
    end

    action :delete_my_account, :boolean do
      transaction? true
      run Actions.DeleteMyAccount
    end

    action :bootstrap_admin, :struct do
      constraints instance_of: __MODULE__
      argument :email, :string, allow_nil?: false
      argument :force?, :boolean, allow_nil?: false, default: false
      transaction? true
      run Actions.BootstrapAdmin
    end
  end

  policies do
    bypass System do
      authorize_if always()
    end

    policy action_type(:read) do
      authorize_if {InScope, access: :read}
    end

    policy action(:create_user) do
      forbid_unless actor_attribute_equals(:approved?, true)
      authorize_if {HasPermission, name: "manageAllUsers"}
      authorize_if {HasPermission, name: "onboardUsers"}
    end

    policy action(:update_user) do
      authorize_if expr(uid == ^actor(:uid))
      authorize_if {InScope, access: :edit}
    end

    policy action([:update_user_permissions, :approve_user, :unapprove_user]) do
      authorize_if {InScope, access: :edit}
    end

    policy action([:apply_invitation_code, :try_claim_account, :delete_my_account]) do
      authorize_if SignedInToFirebase
    end
  end

  changes do
    change SeedPreferences, on: [:create]

    change {ConstraintCodes,
            codes: %{
              "users_data_email_key" => Codes.user_email_taken(),
              "users_data_name_key" => Codes.user_name_taken(),
              "users_admin_on_area" => Codes.user_duplicate_scope(),
              "users_admin_on_group" => Codes.user_duplicate_scope(),
              "users_admin_on_service" => Codes.user_duplicate_scope()
            }},
           on: [:create, :update]
  end

  validations do
    validate EmailLockedAfterClaim, on: [:update]
  end

  attributes do
    attribute :uid, :uuid,
      primary_key?: true,
      allow_nil?: false,
      default: &Ash.UUID.generate/0,
      public?: true

    attribute :name, Text, allow_nil?: false, public?: true
    attribute :email, Text, public?: true
    attribute :photo_updated_at, AshPostgres.TimestamptzUsec, public?: true
    attribute :blurhash, Text, public?: true
    attribute :auth_id, Text, public?: true
  end

  relationships do
    has_one :invitation, Invitation,
      destination_attribute: :user_uid,
      source_attribute: :uid,
      public?: true

    has_one :person, Person, destination_attribute: :uid, source_attribute: :uid, public?: true

    has_one :preferences, Preferences,
      destination_attribute: :uid,
      source_attribute: :uid,
      public?: true

    has_one :latest_edit, LatestEdit,
      destination_attribute: :recorded_by,
      source_attribute: :uid,
      sort: [time: :desc],
      public?: true

    has_many :scope_grants, ScopeGrant,
      destination_attribute: :uid,
      source_attribute: :uid,
      public?: true

    has_many :device_tokens, DeviceToken,
      destination_attribute: :uid,
      source_attribute: :uid,
      public?: true

    has_many :permissions, UserPermission,
      destination_attribute: :uid,
      source_attribute: :uid,
      public?: true
  end

  calculations do
    calculate :current_user_can_manage_this_user, :boolean, {UserCanEdit, entity: :user},
      allow_nil?: false,
      public?: true
  end

  identities do
    identity :unique_auth_id, [:auth_id]
    identity :unique_email, [:email]
    identity :unique_name, [:name]
  end
end
