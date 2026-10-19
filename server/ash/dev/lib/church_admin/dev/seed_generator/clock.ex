defmodule ChurchAdmin.Dev.SeedGenerator.Clock do
  @moduledoc """
  The fixed instant the seed data is dated against, so output does not depend on
  the day it is generated: history runs back from it, never from `now()`.
  """

  @anchor ~U[2026-10-19 12:00:00Z]

  @spec anchor() :: DateTime.t()
  def anchor, do: @anchor

  @spec today() :: Date.t()
  def today, do: DateTime.to_date(@anchor)

  @spec hours_ago(non_neg_integer()) :: DateTime.t()
  def hours_ago(hours), do: DateTime.add(@anchor, -hours, :hour)

  @spec days_ago(non_neg_integer()) :: DateTime.t()
  def days_ago(days), do: DateTime.add(@anchor, -days, :day)
end
