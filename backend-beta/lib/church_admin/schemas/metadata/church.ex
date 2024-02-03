defmodule ChurchAdmin.Schemas.Metadata.Church do
  alias ChurchAdmin.Schemas
  alias Schemas.Metadata
  import Metadata.Default

  metadata_schema "churches" do
    has_many :fathers, Metadata.Father

    has_many :persons, Schemas.Person
  end
end
