defmodule ChurchAdmin.Types.Geography do
  @moduledoc "PostGIS geography(…, 4326) exposed as a GeoJSON map with string keys."
  use Ash.Type

  @srid 4326

  @impl true
  def storage_type(_), do: :geography

  def graphql_type(_), do: :json

  def graphql_input_type(_), do: :json

  @impl true
  def cast_input(nil, _), do: {:ok, nil}
  def cast_input(%{__struct__: _} = geo, _), do: {:ok, Geo.JSON.encode!(geo)}
  def cast_input(%{"type" => _} = geojson, _), do: normalize(geojson)
  def cast_input(%{type: _} = geojson, _), do: geojson |> stringify_keys() |> normalize()

  def cast_input(json, constraints) when is_binary(json) do
    case Jason.decode(json) do
      {:ok, map} -> cast_input(map, constraints)
      _ -> :error
    end
  end

  def cast_input(_, _), do: :error

  @impl true
  def cast_stored(nil, _), do: {:ok, nil}
  def cast_stored(%{__struct__: _} = geo, _), do: {:ok, Geo.JSON.encode!(geo)}
  def cast_stored(%{"type" => _} = geojson, _), do: {:ok, geojson}
  def cast_stored(_, _), do: :error

  @impl true
  def dump_to_native(nil, _), do: {:ok, nil}

  def dump_to_native(geojson, _) do
    case normalize(geojson) do
      {:ok, map} -> {:ok, map |> Geo.JSON.decode!() |> Map.put(:srid, @srid)}
      :error -> :error
    end
  end

  @impl true
  def dump_to_embedded(value, _), do: {:ok, value}

  defp normalize(geojson) do
    {:ok, geojson |> Geo.JSON.decode!() |> Geo.JSON.encode!()}
  rescue
    _ -> :error
  end

  defp stringify_keys(map), do: map |> Jason.encode!() |> Jason.decode!()
end
