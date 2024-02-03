defmodule ChurchAdmin.Schemas.Family do
  alias Geo.PostGIS
  alias ChurchAdmin.Schemas

  use Schemas.Default

  schema "families" do
    field :name, :string

    field :address, :string
    field :geolocation, PostGIS.Geometry

    many_to_many :children_families, Schemas.Family,
      join_through: "families_families",
      join_keys: [parent_family_id: :id, child_family_id: :id]

    many_to_many :parent_families, Schemas.Family,
      join_through: "families_families",
      join_keys: [child_family_id: :id, parent_family_id: :id]

    field :notes, :string

    field :color, :integer

    photo_object_fields()
  end
end
