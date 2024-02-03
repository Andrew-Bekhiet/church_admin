defmodule ChurchAdmin.Schemas.Metadata.Hobby do
  alias ChurchAdmin.Schemas
  alias Schemas.Metadata
  import Metadata.Default

  metadata_schema "hobbies" do
    field :color, :integer

    many_to_many :persons, Schemas.Person, join_through: "persons_hobbies"
  end
end
