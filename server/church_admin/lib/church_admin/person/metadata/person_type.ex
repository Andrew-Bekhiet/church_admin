defmodule ChurchAdmin.Person.PersonType do
  use ChurchAdmin.Person.Metadata.BaseResource, singular: :person_type, plural: :person_types

  attributes do
    attribute :is_hidden, :boolean, public?: true
    attribute :is_family_admin, :boolean, public?: true
    attribute :default_order, :integer, public?: true
  end
end
