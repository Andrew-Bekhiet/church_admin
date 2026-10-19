defmodule ChurchAdmin.DataQuality do
  use ChurchAdmin.Domain

  resources do
    resource ChurchAdmin.DataQuality.DataCheck

    resource ChurchAdmin.DataQuality.Override do
      define :override_data_check, action: :override_data_check, args: [:family_id, :is_complete]
      define :clear_data_check_override, action: :clear_data_check_override
    end
  end
end
