defmodule ChurchAdmin.Places.Calculations.NearGeography do
  @moduledoc """
  Whether the geography in `attribute` lies within the `meters` argument of
  the GeoJSON point in the `from` argument (`ST_DWithin` on geography). Never
  NULL: a missing geography is near nothing.

      calculate :within_distance, :boolean, {NearGeography, attribute: :line} do
        argument :from, Geography, allow_nil?: false
        argument :meters, :float, allow_nil?: false
        public? true
      end
  """

  use Ash.Resource.Calculation

  import Ash.Expr

  @impl true
  def expression(opts, %{arguments: %{from: from, meters: meters}}) do
    geojson = Jason.encode!(from)

    expr(
      fragment(
        "coalesce(ST_DWithin(?::geography, ST_GeomFromGeoJSON(?::text)::geography, ?::float8), false)",
        ^Ash.Expr.ref(Keyword.fetch!(opts, :attribute)),
        ^geojson,
        ^meters
      )
    )
  end
end
