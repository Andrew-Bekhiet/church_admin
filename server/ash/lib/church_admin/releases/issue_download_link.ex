defmodule ChurchAdmin.Releases.IssueDownloadLink do
  @moduledoc """
  Runs `AppRelease.app_download_link`: finds the newest build of the platform
  and answers a 20 minute link straight to it in storage, which downloads
  under the name `church-admin-v{version}.{extension}` with the build's
  content type.
  """

  use Ash.Resource.Actions.Implementation

  alias ChurchAdmin.Errors.{Codes, DomainError}
  alias ChurchAdmin.Files.{Buckets, Storage}
  alias ChurchAdmin.Releases.{AppPlatform, LatestRelease}

  @link_seconds 20 * 60

  @impl Ash.Resource.Actions.Implementation
  def run(input, _opts, _context) do
    platform = input.arguments.platform
    bucket = Buckets.app_releases()

    case LatestRelease.find(bucket, platform) do
      {:ok, %{version: version, object: object}} ->
        with {:ok, link} <-
               Storage.download_link(bucket, object.name,
                 expires_in: @link_seconds,
                 file_name: "church-admin-v#{version}.#{AppPlatform.extension(platform)}",
                 content_type: object.content_type || AppPlatform.default_content_type(platform)
               ) do
          {:ok, %{url: link.url, expires_at: link.expires_at, version: version}}
        end

      :none ->
        {:error,
         DomainError.exception(
           code: Codes.not_found(),
           message: "No #{platform} release was found"
         )}

      {:error, _error} = failure ->
        failure
    end
  end
end
