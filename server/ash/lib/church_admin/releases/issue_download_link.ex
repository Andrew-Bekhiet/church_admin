defmodule ChurchAdmin.Releases.IssueDownloadLink do
  @moduledoc """
  Runs `AppRelease.app_download_link`: finds the newest build of the platform
  and answers a 20 minute link to it. The link carries what the file needs
  (size, content type, version), so fetching it lists nothing.
  """

  use Ash.Resource.Actions.Implementation

  alias ChurchAdmin.Errors.{Codes, DomainError}
  alias ChurchAdmin.Files.Buckets
  alias ChurchAdmin.Releases.{AppPlatform, LatestRelease}
  alias ChurchAdminWeb.FileToken

  @impl Ash.Resource.Actions.Implementation
  def run(input, _opts, %{actor: actor}) do
    platform = input.arguments.platform
    bucket = Buckets.app_releases()

    case LatestRelease.find(bucket, platform) do
      {:ok, %{version: version, object: object}} ->
        extension = AppPlatform.extension(platform)

        params = %{
          bucket: bucket,
          object: object.name,
          version: version,
          extension: extension,
          size: object.size,
          content_type: object.content_type || AppPlatform.default_content_type(platform)
        }

        {token, expires_at} = FileToken.issue(:app_download, actor.uid, params)
        file_name = "church-admin-v#{version}.#{extension}"

        {:ok,
         %{
           url: FileToken.download_url(token, file_name),
           expires_at: expires_at,
           version: version
         }}

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
