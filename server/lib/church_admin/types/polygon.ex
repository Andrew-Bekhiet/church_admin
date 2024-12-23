defmodule ChurchAdmin.Type.Polygon do
  use AshGeo.Geometry,
    storage_type: :"geography(polygon, 4326)",
    geo_types: :polygon
end
