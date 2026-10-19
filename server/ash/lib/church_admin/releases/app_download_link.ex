defmodule ChurchAdmin.Releases.AppDownloadLink do
  @moduledoc "Where the newest build of a platform can be downloaded, until when, and its version."

  use Ash.Type.NewType,
    subtype_of: :map,
    constraints: [
      fields: [
        url: [type: :string, allow_nil?: false],
        expires_at: [type: :utc_datetime, allow_nil?: false],
        version: [type: :string, allow_nil?: false]
      ]
    ]

  def graphql_type(_constraints), do: :app_download_link
end
