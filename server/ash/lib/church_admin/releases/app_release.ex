defmodule ChurchAdmin.Releases.AppRelease do
  @moduledoc "The `appDownloadLink` query. It holds no data; the builds live in the release bucket."

  use Ash.Resource,
    domain: ChurchAdmin.Releases,
    extensions: [AshGraphql.Resource],
    authorizers: [Ash.Policy.Authorizer]

  alias ChurchAdmin.Authz.Checks.Approved
  alias ChurchAdmin.Releases.{AppDownloadLink, AppPlatform, IssueDownloadLink}

  graphql do
    queries do
      action :app_download_link, :app_download_link
    end
  end

  actions do
    action :app_download_link, AppDownloadLink do
      argument :platform, AppPlatform, allow_nil?: false, default: :android

      run IssueDownloadLink
    end
  end

  policies do
    policy action(:app_download_link) do
      forbid_unless Approved
      authorize_if always()
    end
  end
end
