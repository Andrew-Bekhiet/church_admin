defmodule ChurchAdmin.Schemas.Metadata.ShammasLevel do
  alias ChurchAdmin.Schemas
  alias ChurchAdmin.Schemas.Metadata
  import Metadata.Default

  metadata_schema "shammas_levels" do
    field :order, :integer

    has_many :persons, Schemas.Person
  end
end
