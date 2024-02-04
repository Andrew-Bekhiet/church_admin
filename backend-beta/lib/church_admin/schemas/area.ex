defmodule ChurchAdmin.Schemas.Area do
  alias Geo.PostGIS
  alias ChurchAdmin.Schemas

  import Ecto.Changeset

  use Schemas.Default

  schema "areas" do
    field :name, :string
    field :bounds, PostGIS.Geometry

    field :color, :integer

    photo_object_fields()
  end

  def changeset(%__MODULE__{} = area, params \\ %{}) do
    area
    |> cast(params, [:name, :bounds, :color, :photo_updated_at])
    |> validate_required([:name])
  end
end
