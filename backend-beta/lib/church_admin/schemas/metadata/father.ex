defmodule ChurchAdmin.Schemas.Metadata.Father do
  alias ChurchAdmin.Schemas
  alias Schemas.Metadata
  import Metadata.Default

  metadata_schema "fathers" do
    belongs_to :church, Metadata.Church

    has_many :persons, Schemas.Person
  end
end
