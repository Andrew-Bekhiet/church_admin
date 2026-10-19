defmodule ChurchAdmin.Files.Buckets do
  @moduledoc """
  The Cloud Storage buckets, from `config :church_admin, ChurchAdmin.Files,
  buckets: [photos: name, app_releases: name]`.
  """

  @spec photos() :: String.t()
  def photos, do: fetch(:photos)

  @spec app_releases() :: String.t()
  def app_releases, do: fetch(:app_releases)

  defp fetch(bucket) do
    :church_admin
    |> Application.fetch_env!(ChurchAdmin.Files)
    |> Keyword.fetch!(:buckets)
    |> Keyword.fetch!(bucket)
  end
end
