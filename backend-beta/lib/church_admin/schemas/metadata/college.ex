defmodule ChurchAdmin.Schemas.Metadata.College do
  alias ChurchAdmin.Schemas
  alias Schemas.Metadata
  import Metadata.Default

  metadata_schema "colleges" do
    belongs_to :university, Metadata.University

    has_many :persons, Schemas.Person
  end
end
