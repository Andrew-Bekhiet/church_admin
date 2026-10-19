defmodule ChurchAdmin.Accounts do
  use Ash.Domain, otp_app: :church_admin, extensions: [AshGraphql.Domain]

  graphql do
    root_level_errors? true
  end

  resources do
    resource ChurchAdmin.Accounts.DeviceToken
    resource ChurchAdmin.Accounts.HomeMode
    resource ChurchAdmin.Accounts.Invitation
    resource ChurchAdmin.Accounts.Permission
    resource ChurchAdmin.Accounts.Preferences
    resource ChurchAdmin.Accounts.ScopeGrant
    resource ChurchAdmin.Accounts.User
    resource ChurchAdmin.Accounts.UserPermission
  end
end
