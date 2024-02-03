defmodule ChurchAdmin.Schemas.Person do
  alias Geo.PostGIS
  alias ChurchAdmin.Schemas
  alias Schemas.Metadata

  use Schemas.Default

  schema "persons" do
    field :name, :string

    field :address, :string
    field :geolocation, PostGIS.Geometry

    field :main_phone, :string
    field :other_phones, :map

    field :birthdate, :utc_datetime
    field :gender, :boolean

    field :is_shammas, :boolean

    belongs_to :shammas_level, Metadata.ShammasLevel

    belongs_to :school, Metadata.School
    belongs_to :college, Metadata.College
    belongs_to :church, Metadata.Church
    belongs_to :father, Metadata.Father

    field :is_student, :boolean

    belongs_to :job, Metadata.Job
    field :job_description, :string

    belongs_to :qualification, Metadata.Qualification
    belongs_to :person_type, Metadata.PersonType
    belongs_to :state, Metadata.PersonState

    field :is_servant, :boolean

    field :notes, :string
    field :uid, :binary_id

    belongs_to :family, Schemas.Family
    belongs_to :store, Schemas.Store
    belongs_to :study_year, Metadata.StudyYear

    many_to_many :hobbies, Metadata.Hobby, join_through: "persons_hobbies"
    many_to_many :tags, Metadata.Tag, join_through: "persons_tags"

    field :color, :integer

    photo_object_fields()
  end
end
