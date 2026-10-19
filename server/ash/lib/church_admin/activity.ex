defmodule ChurchAdmin.Activity do
  use ChurchAdmin.Domain

  resources do
    resource ChurchAdmin.Activity.ActivityDay do
      define :ensure_attendance_day, action: :ensure_attendance_day
    end

    resource ChurchAdmin.Activity.Call do
      define :record_call, action: :record_call
    end

    resource ChurchAdmin.Activity.Confession do
      define :record_confession, action: :record_confession
    end

    resource ChurchAdmin.Activity.Edit

    resource ChurchAdmin.Activity.Kodas do
      define :record_kodas, action: :record_kodas
      define :delete_kodas, action: :delete_kodas, get_by: [:id]
    end

    resource ChurchAdmin.Activity.LatestCall
    resource ChurchAdmin.Activity.LatestConfession
    resource ChurchAdmin.Activity.LatestEdit
    resource ChurchAdmin.Activity.LatestFatherVisit
    resource ChurchAdmin.Activity.LatestKodas
    resource ChurchAdmin.Activity.LatestVisit

    resource ChurchAdmin.Activity.Visit do
      define :record_visit, action: :record_visit
    end
  end
end
