defmodule ChurchAdmin.Accounts.User do
  use Ash.Resource,
    domain: ChurchAdmin.Accounts,
    data_layer: AshPostgres.DataLayer,
    authorizers: [Ash.Policy.Authorizer],
    extensions: [AshGraphql.Resource]

  alias ChurchAdmin.Accounts.{DeviceToken, Invitation, Preferences, ScopeGrant, UserPermission}
  alias ChurchAdmin.Activity.LatestEdit
  alias ChurchAdmin.Authz.Calculations.UserCanEdit
  alias ChurchAdmin.Authz.Checks.{InScope, System}
  alias ChurchAdmin.People.Person
  alias ChurchAdmin.Types.Text

  graphql do
    type :user

    relationships [:person, :permissions, :scope_grants]

    queries do
      get :user, :read
      list :users, :read
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
      authorize_if {InScope, access: :read}
    end
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
