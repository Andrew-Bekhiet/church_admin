defmodule ChurchAdmin.Schemas.Store do
  alias Geo.PostGIS
  alias ChurchAdmin.Schemas

  use Schemas.Default

  schema "stores" do
    field :name, :string

    field :address, :string
    field :geolocation, PostGIS.Geometry

    belongs_to :admin_family, Schemas.Family

    field :notes, :string

    field :color, :integer

    photo_object_fields()
  end
end
