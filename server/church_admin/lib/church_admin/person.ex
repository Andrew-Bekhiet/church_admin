defmodule ChurchAdmin.Person do
  alias ChurchAdmin.Person

  use Ash.Domain,
    extensions: [AshGraphql.Domain]

  @moduledoc """
  Person context: person and all person-related metadata (jobs, schools, states, types, fathers, etc.).
  """

  graphql do
  end

  resources do
    resource Person.Person
    resource Person.Family

    resource Person.FamiliesFamilies
    resource Person.FamilyStatus
    resource Person.Job
    resource Person.PersonType
    resource Person.PersonState
    resource Person.School
    resource Person.Qualification
    resource Person.Hobby
    resource Person.Tag
    resource Person.Father
    resource Person.Church
    resource Person.StudyYear
    resource Person.ShammasLevel
    resource Person.College
    resource Person.PersonTag
    resource Person.PersonHobby
    resource Person.MartialStatus
    resource Person.WorkStatus
  end
end
