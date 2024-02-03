defmodule ChurchAdmin.Schemas.Metadata.PersonType do
  alias ChurchAdmin.Schemas.Metadata
  import Metadata.Default

  metadata_schema "person_types" do
    field :order, :integer
  end
end
