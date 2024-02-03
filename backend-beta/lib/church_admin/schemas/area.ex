defmodule ChurchAdmin.Schemas.Area do
  alias Geo.PostGIS
  alias ChurchAdmin.Schemas

  use Schemas.Default

  schema "areas" do
    field :name, :string
    field :bounds, PostGIS.Geometry

    field :color, :integer

    photo_object_fields()
  end
end
