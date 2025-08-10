defmodule ChurchAdmin.Person.PersonState do
  use ChurchAdmin.Person.Metadata.BaseResource, singular: :person_state, plural: :person_states

  attributes do
    attribute :color, :color, public?: true
  end
end
