defmodule ChurchAdmin.Schemas.Metadata.Tag do
  alias ChurchAdmin.Schemas
  alias Schemas.Metadata
  import Metadata.Default

  metadata_schema "tags" do
    field :color, :integer

    many_to_many :persons, Schemas.Person, join_through: "persons_tags"
  end
end
