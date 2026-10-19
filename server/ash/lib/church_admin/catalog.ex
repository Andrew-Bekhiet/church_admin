defmodule ChurchAdmin.Catalog do
  use Ash.Domain, otp_app: :church_admin, extensions: [AshGraphql.Domain]

  graphql do
    root_level_errors? true
  end

  resources do
    resource ChurchAdmin.Catalog.Church
    resource ChurchAdmin.Catalog.College
    resource ChurchAdmin.Catalog.Father
    resource ChurchAdmin.Catalog.Hobby
    resource ChurchAdmin.Catalog.Job
    resource ChurchAdmin.Catalog.MaritalStatus
    resource ChurchAdmin.Catalog.PersonState
    resource ChurchAdmin.Catalog.PersonType
    resource ChurchAdmin.Catalog.Qualification
    resource ChurchAdmin.Catalog.School
    resource ChurchAdmin.Catalog.ShammasLevel
    resource ChurchAdmin.Catalog.StudyYear
    resource ChurchAdmin.Catalog.Tag
    resource ChurchAdmin.Catalog.University
    resource ChurchAdmin.Catalog.WorkStatus
  end
end
