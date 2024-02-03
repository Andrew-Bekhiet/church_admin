defmodule ChurchAdmin.Schemas.Street do
  alias Geo.PostGIS
  alias ChurchAdmin.Schemas

  use Schemas.Default

  schema "streets" do
    field :name, :string

    field :line, PostGIS.Geometry

    field :color, :integer

    photo_object_fields()
  end
end
