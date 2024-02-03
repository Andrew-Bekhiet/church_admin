defmodule ChurchAdmin.Schemas.Class do
  alias ChurchAdmin.Schemas
  alias Schemas.Metadata

  use Schemas.Default

  schema "classes" do
    field :name, :string

    belongs_to :service, Schemas.Service
    belongs_to :study_year, Metadata.StudyYear, foreign_key: :service_study_year
    field :gender, :boolean

    field :color, :integer

    photo_object_fields()
  end
end
