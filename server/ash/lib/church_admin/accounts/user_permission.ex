defmodule ChurchAdmin.Accounts.UserPermission do
  use Ash.Resource,
    domain: ChurchAdmin.Accounts,
    data_layer: AshPostgres.DataLayer,
    authorizers: [Ash.Policy.Authorizer],
    notifiers: [ChurchAdmin.Accounts.DisconnectSocketsOnRevokedApproval],
    extensions: [AshGraphql.Resource]

  alias ChurchAdmin.Accounts.{Permission, User}
  alias ChurchAdmin.Authz.Checks.{RelatedInScope, System}
  alias ChurchAdmin.Types.Text

  graphql do
    type :user_permission

    relationships [:user]

    queries do
      list :user_permissions, :read
    end
  end

  postgres do
    schema "auth"
    table "users_permissions"
    repo ChurchAdmin.Repo

    references do
      reference :permission_definition, on_delete: :restrict, on_update: :update
      reference :user, on_delete: :delete, on_update: :restrict
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

    create :create do
      primary? true
      accept [:uid, :permission]
      validate ChurchAdmin.Accounts.Validations.GranterHoldsPermission
    end

    destroy :destroy do
      primary? true
    end
  end

  policies do
    bypass System do
      authorize_if always()
    end

    policy action_type(:read) do
      authorize_if {RelatedInScope, path: :user, entity: :user, access: :read}
    end

    policy action_type([:create, :destroy]) do
      authorize_if {RelatedInScope, path: :user, entity: :user, access: :edit}
    end
  end

  attributes do
    attribute :uid, :uuid, primary_key?: true, allow_nil?: false, public?: true
    attribute :permission, Text, primary_key?: true, allow_nil?: false, public?: true
  end

  relationships do
    belongs_to :permission_definition, Permission,
      source_attribute: :permission,
      destination_attribute: :name,
      define_attribute?: false

    belongs_to :user, User,
      source_attribute: :uid,
      destination_attribute: :uid,
      define_attribute?: false,
      public?: true
  end
end
