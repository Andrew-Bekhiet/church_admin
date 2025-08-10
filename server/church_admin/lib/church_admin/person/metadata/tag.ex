defmodule ChurchAdmin.Person.Tag do
  use ChurchAdmin.Person.Metadata.BaseResource, singular: :tag, plural: :tags

  attributes do
    attribute :color, :color, public?: true
  end
end
