defmodule ChurchAdmin.Accounts.DefaultPreferences do
  @moduledoc "The list orderings every new user starts with, copied from the baseline's `default_order_by_preferences()`."

  @path Path.expand("../../../priv/defaults/order_by_preferences.json", __DIR__)
  @external_resource @path
  @order_by @path |> File.read!() |> Jason.decode!()

  @spec order_by() :: map()
  def order_by, do: @order_by
end
