defmodule ChurchAdmin.People do
  use ChurchAdmin.Domain

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
