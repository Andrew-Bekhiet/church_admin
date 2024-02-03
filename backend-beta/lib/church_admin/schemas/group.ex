defmodule ChurchAdmin.Schemas.Group do
  alias ChurchAdmin.Schemas

  use Schemas.Default

  schema "groups" do
    field :name, :string

    belongs_to :service, Schemas.Service
    field :validity, PgRanges.DateRange

    field :color, :integer

    photo_object_fields()
  end
end
