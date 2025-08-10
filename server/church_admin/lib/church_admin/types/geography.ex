defmodule ChurchAdmin.Type.Point do
  use AshGeo.Geometry,
    storage_type: :"geography(Point,4326)",
    geo_types: :point

  def graphql_input_type(_), do: :json
  def graphql_type(_), do: :json
end

defmodule ChurchAdmin.Type.LineString do
  use AshGeo.Geometry,
    storage_type: :"geography(LineString,4326)",
    geo_types: :line_string

  def graphql_input_type(_), do: :json
  def graphql_type(_), do: :json
end

defmodule ChurchAdmin.Type.Polygon do
  use AshGeo.Geometry,
    storage_type: :"geography(Polygon,4326)",
    geo_types: :polygon

  def graphql_input_type(_), do: :json
  def graphql_type(_), do: :json
end
