defmodule ChurchAdmin.Places.Calculations.IntersectsGeography do
  @moduledoc """
  Whether the geography in `attribute` intersects the GeoJSON given as the
  calculation argument named by `argument` (`ST_Intersects`, boundaries
  included). Never NULL: a missing geography intersects nothing. With
  `through`, the attribute belongs to the record at that to-one relationship.

      calculate :within_polygon, :boolean,
                {IntersectsGeography, attribute: :bounds, argument: :polygon} do
        argument :polygon, Geography, allow_nil?: false
        public? true
      end
  """

  use Ash.Resource.Calculation

  import Ash.Expr

  @impl true
  def expression(opts, context) do
    geojson = context.arguments |> Map.fetch!(Keyword.fetch!(opts, :argument)) |> Jason.encode!()
    attribute = Keyword.fetch!(opts, :attribute)

    intersects =
      expr(
        fragment(
          "coalesce(ST_Intersects(?::geography, ST_GeomFromGeoJSON(?::text)::geography), false)",
          ^Ash.Expr.ref(attribute),
          ^geojson
        )
      )

    case opts[:through] do
      nil -> intersects
      relationship -> Ash.Query.Exists.new([relationship], intersects)
    end
  end
end
