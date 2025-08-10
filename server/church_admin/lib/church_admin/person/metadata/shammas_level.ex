defmodule ChurchAdmin.Person.ShammasLevel do
  use ChurchAdmin.Person.Metadata.BaseResource, singular: :shammas_level, plural: :shammas_levels

  attributes do
    attribute :order, :integer, public?: true
  end
end
