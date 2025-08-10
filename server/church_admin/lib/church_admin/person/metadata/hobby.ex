defmodule ChurchAdmin.Person.Hobby do
  use ChurchAdmin.Person.Metadata.BaseResource, singular: :hobby, plural: :hobbies

  attributes do
    attribute :color, :color, public?: true
  end
end
