defmodule ChurchAdmin.Accounts.UserPermission do
  use Ash.Resource,
    domain: ChurchAdmin.Accounts,
    data_layer: AshPostgres.DataLayer,
    extensions: [AshGraphql.Resource]

  alias ChurchAdmin.Accounts.{Permission, User}
  alias ChurchAdmin.Types.Text

  graphql do
    type :user_permission
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
    defaults [:read]
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
