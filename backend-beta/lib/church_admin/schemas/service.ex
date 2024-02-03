defmodule ChurchAdmin.Schemas.Service do
  alias ChurchAdmin.Schemas
  alias Schemas.Metadata

  use Schemas.Default

  schema "services" do
    field :name, :string

    belongs_to :study_year_from, Metadata.StudyYear
    belongs_to :study_year_to, Metadata.StudyYear

    belongs_to :next_service, Schemas.Service
    has_many :previous_services, Schemas.Service, foreign_key: :next_service_id

    field :color, :integer

    photo_object_fields()
  end
end
