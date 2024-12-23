defmodule ChurchAdmin.Type.Line do
  use AshGeo.Geometry,
    storage_type: :"geography(linestring, 4326)",
    geo_types: :line_string
end
