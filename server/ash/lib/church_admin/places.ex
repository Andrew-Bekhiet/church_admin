defmodule ChurchAdmin.Places do
  use Ash.Domain, otp_app: :church_admin, extensions: [AshGraphql.Domain]

  graphql do
    root_level_errors? true
  end

  resources do
    resource ChurchAdmin.Places.Address
    resource ChurchAdmin.Places.Area
    resource ChurchAdmin.Places.AreaStreet
    resource ChurchAdmin.Places.District
    resource ChurchAdmin.Places.Store
    resource ChurchAdmin.Places.Street
  end
end
