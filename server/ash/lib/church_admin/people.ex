defmodule ChurchAdmin.People do
  use Ash.Domain, otp_app: :church_admin, extensions: [AshGraphql.Domain]

  graphql do
    root_level_errors? true
  end

  resources do
    resource ChurchAdmin.People.ClassMembership
    resource ChurchAdmin.People.Contact
    resource ChurchAdmin.People.Family
    resource ChurchAdmin.People.FamilyRelation
    resource ChurchAdmin.People.GroupMembership
    resource ChurchAdmin.People.MainContact
    resource ChurchAdmin.People.Person
    resource ChurchAdmin.People.PersonHobby
    resource ChurchAdmin.People.PersonTag
    resource ChurchAdmin.People.ResolvedContact
    resource ChurchAdmin.People.ServiceMembership
  end
end
