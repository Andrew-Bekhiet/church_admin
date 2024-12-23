defmodule ChurchAdmin.Type.Point do
  use AshGeo.Geometry,
    storage_type: :"geography(point, 4326)",
    geo_types: :point
end
