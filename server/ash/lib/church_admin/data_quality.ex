defmodule ChurchAdmin.DataQuality do
  use ChurchAdmin.Domain

  resources do
    resource ChurchAdmin.DataQuality.DataCheck
    resource ChurchAdmin.DataQuality.Override
  end
end
