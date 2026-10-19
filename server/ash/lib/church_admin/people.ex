defmodule ChurchAdmin.People do
  use ChurchAdmin.Domain

  resources do
    resource ChurchAdmin.People.ClassMembership
    resource ChurchAdmin.People.Contact
    resource ChurchAdmin.People.Family
    resource ChurchAdmin.People.FamilyRelation
    resource ChurchAdmin.People.GroupMembership
    resource ChurchAdmin.People.MainContact

    resource ChurchAdmin.People.Person do
      define :create_person, action: :create_person
      define :update_person, action: :update_person
      define :delete_person, action: :destroy
      define :record_person_spiritual_days, action: :record_person_spiritual_days
    end

    resource ChurchAdmin.People.PersonHobby
    resource ChurchAdmin.People.PersonTag
    resource ChurchAdmin.People.ResolvedContact
    resource ChurchAdmin.People.ServiceMembership
  end
end
