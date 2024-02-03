defmodule ChurchAdmin.Schemas.Metadata.School do
  alias ChurchAdmin.Schemas
  alias Schemas.Metadata
  import Metadata.Default

  metadata_schema "schools" do
    has_many :persons, Schemas.Person
  end
end
