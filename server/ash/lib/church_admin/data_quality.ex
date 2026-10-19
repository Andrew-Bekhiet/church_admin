defmodule ChurchAdmin.DataQuality do
  use Ash.Domain, otp_app: :church_admin, extensions: [AshGraphql.Domain]

  graphql do
    root_level_errors? true
  end

  resources do
    resource ChurchAdmin.DataQuality.DataCheck
    resource ChurchAdmin.DataQuality.Override
  end
end
