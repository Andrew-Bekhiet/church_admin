defmodule ChurchAdmin.Releases.AppPlatform do
  @moduledoc "The platforms the app is released for; each has the file extension of its build."

  use Ash.Type.Enum, values: [:android, :ios]

  def graphql_type(_constraints), do: :app_platform

  @spec extension(t()) :: String.t()
  def extension(:android), do: "apk"
  def extension(:ios), do: "ipa"

  @spec default_content_type(t()) :: String.t()
  def default_content_type(:android), do: "application/vnd.android.package-archive"
  def default_content_type(:ios), do: "application/octet-stream"
end
