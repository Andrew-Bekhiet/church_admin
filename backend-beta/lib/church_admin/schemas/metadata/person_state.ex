defmodule ChurchAdmin.Schemas.Metadata.PersonState do
  alias ChurchAdmin.Schemas
  alias Schemas.Metadata
  import Metadata.Default

  metadata_schema "person_states" do
    field :color, :integer

    has_many :persons, Schemas.Person, foreign_key: :state_id
  end
end
