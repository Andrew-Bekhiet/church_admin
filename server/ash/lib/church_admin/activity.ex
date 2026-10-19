defmodule ChurchAdmin.Activity do
  use Ash.Domain, otp_app: :church_admin, extensions: [AshGraphql.Domain]

  graphql do
    root_level_errors? true
  end

  resources do
    resource ChurchAdmin.Activity.ActivityDay
    resource ChurchAdmin.Activity.Call
    resource ChurchAdmin.Activity.Confession
    resource ChurchAdmin.Activity.Edit
    resource ChurchAdmin.Activity.Kodas
    resource ChurchAdmin.Activity.LatestCall
    resource ChurchAdmin.Activity.LatestConfession
    resource ChurchAdmin.Activity.LatestEdit
    resource ChurchAdmin.Activity.LatestFatherVisit
    resource ChurchAdmin.Activity.LatestKodas
    resource ChurchAdmin.Activity.LatestVisit
    resource ChurchAdmin.Activity.Visit
  end
end
