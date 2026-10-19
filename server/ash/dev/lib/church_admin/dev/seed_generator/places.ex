defmodule ChurchAdmin.Dev.SeedGenerator.Places do
  @moduledoc """
  Areas as cells of a fixed grid and streets as lines inside them, so the
  `areas_streets` pairs the geography implies are known in advance: a street
  lies in its home cell, except every eighth street, which crosses into a
  neighbouring cell and belongs to both areas.
  """

  alias ChurchAdmin.Dev.SeedGenerator.{Ids, Sql}

  @origin_longitude 31.2
  @origin_latitude 30.0
  @cell_size 0.02
  @margin 0.003
  @crossing_street_period 8

  @area_names ~w(المحبة النور السلام الرجاء الإيمان الفرح القيامة العذراء مارجرجس مارمرقس الأنبا_بولا الشهيد البشارة الميلاد الملاك)
  @street_names ~w(النيل الجمهورية الهرم فيصل التحرير رمسيس الجيش البحر الحرية الأزهر الثورة النصر المعز صلاح_سالم الجلاء بورسعيد الملك_فيصل السودان الشهيد_أحمد عمر_بن_الخطاب جامعة_الدول مصر_والسودان ابن_سندر المروة الطيران الميرغني العروبة الأندلس السلام المشير)

  @type result :: %{
          districts: [map()],
          areas: [map()],
          streets: [map()],
          streets_by_area: %{non_neg_integer() => [map()]},
          expected_areas_streets: [{String.t(), String.t()}]
        }

  @spec build(map()) :: result()
  def build(spec) do
    areas = Enum.map(0..(spec.areas - 1), &area(&1, spec.grid_columns))
    streets = Enum.map(0..(spec.streets - 1), &street(&1, spec))
    area_ids = Map.new(areas, &{&1.index, &1.id})

    pairs =
      for street <- streets, area_index <- street.area_indexes do
        {Map.fetch!(area_ids, area_index), street.id}
      end

    %{
      districts: Enum.map(0..(spec.districts - 1), &district/1),
      areas: areas,
      streets: streets,
      streets_by_area: streets_by_area(streets, spec.areas),
      expected_areas_streets: Enum.sort(pairs)
    }
  end

  @spec point_in_area(non_neg_integer(), pos_integer(), non_neg_integer()) :: Sql.raw()
  def point_in_area(area_index, grid_columns, salt) do
    {x0, y0} = cell_origin(area_index, grid_columns)
    x = x0 + @margin + rem(salt * 7, 13) * 0.001
    y = y0 + @margin + rem(salt * 11, 13) * 0.001
    Sql.geography("POINT(#{coordinate(x)} #{coordinate(y)})")
  end

  defp district(index), do: %{id: Ids.uuid("district", index), name: "حي #{index + 1}"}

  defp area(index, grid_columns) do
    {x0, y0} = cell_origin(index, grid_columns)
    {x1, y1} = {x0 + @cell_size, y0 + @cell_size}

    ring =
      [{x0, y0}, {x1, y0}, {x1, y1}, {x0, y1}, {x0, y0}]
      |> Enum.map_join(", ", fn {x, y} -> "#{coordinate(x)} #{coordinate(y)}" end)

    %{
      id: Ids.uuid("area", index),
      index: index,
      name: "منطقة #{area_name(index)}",
      bounds: Sql.geography("POLYGON((#{ring}))"),
      color: 4_278_190_080 + index * 1_315_860
    }
  end

  defp street(index, spec) do
    home = rem(index, spec.areas)
    position = div(index, spec.areas)

    neighbour =
      if rem(index, @crossing_street_period) == @crossing_street_period - 1,
        do: neighbour(home, spec)

    %{
      id: Ids.uuid("street", index),
      index: index,
      name: street_name(index),
      home_area_index: home,
      area_indexes: Enum.sort([home | List.wrap(neighbour)]),
      line: Sql.geography("LINESTRING(#{line_coordinates(home, neighbour, position, spec)})"),
      color: if(rem(index, 5) == 0, do: 4_281_545_523, else: nil)
    }
  end

  defp line_coordinates(home, neighbour, position, spec) do
    {x0, y0} = cell_origin(home, spec.grid_columns)
    y = y0 + @margin + rem(position, 6) * 0.0022
    inset = rem(div(position, 6), 3) * 0.001

    points =
      case neighbour do
        nil ->
          [
            {x0 + @margin + inset, y},
            {x0 + @cell_size / 2, y + 0.0005},
            {x0 + @cell_size - @margin - inset, y}
          ]

        n when n > home ->
          [{x0 + 0.012, y}, {x0 + 0.02, y + 0.0005}, {x0 + 0.028, y}]

        _left ->
          [{x0 + 0.008, y}, {x0, y + 0.0005}, {x0 - 0.008, y}]
      end

    Enum.map_join(points, ", ", fn {x, line_y} -> "#{coordinate(x)} #{coordinate(line_y)}" end)
  end

  defp neighbour(home, spec) do
    column = rem(home, spec.grid_columns)
    if column + 1 < spec.grid_columns and home + 1 < spec.areas, do: home + 1, else: home - 1
  end

  defp streets_by_area(streets, area_count) do
    Map.new(0..(area_count - 1), fn area_index ->
      {area_index, Enum.filter(streets, &(area_index in &1.area_indexes))}
    end)
  end

  defp cell_origin(area_index, grid_columns) do
    column = rem(area_index, grid_columns)
    row = div(area_index, grid_columns)
    {@origin_longitude + column * @cell_size, @origin_latitude + row * @cell_size}
  end

  defp coordinate(value), do: :erlang.float_to_binary(value, decimals: 6)

  defp area_name(index), do: @area_names |> Enum.at(rem(index, length(@area_names))) |> display()

  defp street_name(index) do
    base = @street_names |> Enum.at(rem(index, length(@street_names))) |> display()

    suffix =
      if index >= length(@street_names), do: " #{div(index, length(@street_names)) + 1}", else: ""

    "شارع #{base}#{suffix}"
  end

  defp display(name), do: String.replace(name, "_", " ")
end
