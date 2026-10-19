defmodule ChurchAdmin.Releases do
  @moduledoc """
  The app builds kept in the release bucket. `appDownloadLink` answers with a
  short-lived download link to the newest one of a platform.
  """

  use ChurchAdmin.Domain

  resources do
    resource ChurchAdmin.Releases.AppRelease do
      define :app_download_link, args: [:platform]
    end
  end
end
