defmodule ChurchAdmin.Places do
  use ChurchAdmin.Domain

  resources do
    resource ChurchAdmin.Places.Address
    resource ChurchAdmin.Places.Area
    resource ChurchAdmin.Places.AreaStreet
    resource ChurchAdmin.Places.District
    resource ChurchAdmin.Places.Store
    resource ChurchAdmin.Places.Street
  end
end
