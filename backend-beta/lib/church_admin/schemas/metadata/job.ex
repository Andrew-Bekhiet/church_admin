defmodule ChurchAdmin.Schemas.Metadata.Job do
  alias ChurchAdmin.Schemas
  alias Schemas.Metadata
  import Metadata.Default

  metadata_schema "jobs" do
    has_many :persons, Schemas.Person
  end
end
