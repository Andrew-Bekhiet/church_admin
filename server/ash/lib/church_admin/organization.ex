defmodule ChurchAdmin.Organization do
  use Ash.Domain, otp_app: :church_admin, extensions: [AshGraphql.Domain]

  graphql do
    root_level_errors? true
  end

  resources do
    resource ChurchAdmin.Organization.Class
    resource ChurchAdmin.Organization.Group
    resource ChurchAdmin.Organization.Service
  end
end
