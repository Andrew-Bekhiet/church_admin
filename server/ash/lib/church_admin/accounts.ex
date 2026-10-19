defmodule ChurchAdmin.Accounts do
  use ChurchAdmin.Domain

  resources do
    resource ChurchAdmin.Accounts.DeviceToken do
      define :register_fcm_token, action: :register_fcm_token, args: [:token]
    end

    resource ChurchAdmin.Accounts.HomeMode

    resource ChurchAdmin.Accounts.Invitation do
      define :create_invitation, action: :create_invitation
      define :update_invitation_expiry, action: :update_invitation_expiry
    end

    resource ChurchAdmin.Accounts.Permission

    resource ChurchAdmin.Accounts.Preferences do
      define :my_preferences, action: :mine
      define :update_my_preferences, action: :update_my_preferences
    end

    resource ChurchAdmin.Accounts.ScopeGrant

    resource ChurchAdmin.Accounts.User do
      define :create_user, action: :create_user
      define :update_user, action: :update_user
      define :update_user_permissions, action: :update_user_permissions
      define :approve_user, action: :approve_user
      define :unapprove_user, action: :unapprove_user
      define :apply_invitation_code, action: :apply_invitation_code, args: [:code]
      define :try_claim_account, action: :try_claim_account
      define :delete_my_account, action: :delete_my_account
      define :bootstrap_admin, action: :bootstrap_admin, args: [:email]
    end

    resource ChurchAdmin.Accounts.UserPermission
  end
end
