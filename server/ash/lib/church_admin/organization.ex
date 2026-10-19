defmodule ChurchAdmin.Organization do
  use ChurchAdmin.Domain

  resources do
    resource ChurchAdmin.Organization.Class do
      define :create_class, action: :create_class
      define :update_class, action: :update_class
      define :delete_class, action: :destroy
    end

    resource ChurchAdmin.Organization.Group do
      define :create_group, action: :create_group
      define :update_group, action: :update_group
      define :delete_group, action: :destroy
    end

    resource ChurchAdmin.Organization.Service do
      define :create_service, action: :create_service
      define :update_service, action: :update_service
      define :delete_service, action: :destroy
    end
  end
end
