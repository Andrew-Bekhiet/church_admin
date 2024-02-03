defmodule ChurchAdmin.Schemas.Metadata.StudyYear do
  alias ChurchAdmin.Schemas
  alias Schemas.Metadata
  import Metadata.Default

  @primary_key {:order, :integer, []}
  metadata_schema "study_years" do
    has_many :persons, Schemas.Person
    has_many :classes, Schemas.Class, foreign_key: :service_study_year
  end
end
