defmodule ChurchAdmin.Organization do
  use ChurchAdmin.Domain

  resources do
    resource ChurchAdmin.Organization.Class
    resource ChurchAdmin.Organization.Group
    resource ChurchAdmin.Organization.Service
  end
end
