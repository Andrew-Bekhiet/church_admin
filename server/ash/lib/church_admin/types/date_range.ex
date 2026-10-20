defmodule ChurchAdmin.Types.DateRange do
  @moduledoc "Postgres daterange carried as its range text, e.g. `[2025-09-01,2026-06-30)`; `empty` is the empty range."
  use Ash.Type

  @range_text ~r/\A([\[(])\s*(\d{4}-\d{2}-\d{2})?\s*,\s*(\d{4}-\d{2}-\d{2})?\s*([\])])\z/

  @impl Ash.Type
  def storage_type(_), do: :daterange

  def graphql_type(_), do: :string

  def graphql_input_type(_), do: :string

  @impl Ash.Type
  def cast_input(nil, _), do: {:ok, nil}
  def cast_input(%Postgrex.Range{} = range, _), do: format(range)
  def cast_input(text, _) when is_binary(text), do: normalize(text)
  def cast_input(_, _), do: :error

  @impl Ash.Type
  def cast_stored(nil, _), do: {:ok, nil}
  def cast_stored(%Postgrex.Range{} = range, _), do: format(range)
  def cast_stored(text, _) when is_binary(text), do: normalize(text)
  def cast_stored(_, _), do: :error

  @impl Ash.Type
  def dump_to_native(nil, _), do: {:ok, nil}

  def dump_to_native(text, _) when is_binary(text) do
    case parse(text) do
      {:ok, range} -> {:ok, range}
      :error -> :error
    end
  end

  def dump_to_native(_, _), do: :error

  @impl Ash.Type
  def dump_to_embedded(value, _), do: {:ok, value}

  defp normalize(text) do
    with {:ok, range} <- parse(text), do: format(range)
  end

  defp parse(text) do
    case String.trim(text) do
      "empty" ->
        {:ok, %Postgrex.Range{lower: :empty, upper: :empty}}

      trimmed ->
        with [_, open, lower, upper, close] <- Regex.run(@range_text, trimmed),
             {:ok, lower} <- parse_bound(lower),
             {:ok, upper} <- parse_bound(upper) do
          {:ok,
           %Postgrex.Range{
             lower: lower,
             upper: upper,
             lower_inclusive: open == "[",
             upper_inclusive: close == "]"
           }}
        else
          _ -> :error
        end
    end
  end

  defp parse_bound(""), do: {:ok, :unbound}
  defp parse_bound(date), do: Date.from_iso8601(date)

  defp format(%Postgrex.Range{lower: :empty}), do: {:ok, "empty"}

  defp format(%Postgrex.Range{} = range) do
    open = if range.lower_inclusive, do: "[", else: "("
    close = if range.upper_inclusive, do: "]", else: ")"
    {:ok, "#{open}#{format_bound(range.lower)},#{format_bound(range.upper)}#{close}"}
  end

  defp format_bound(:unbound), do: ""
  defp format_bound(%Date{} = date), do: Date.to_iso8601(date)
end
