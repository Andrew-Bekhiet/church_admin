defmodule ChurchAdmin.Exports.DownloadLink do
  @moduledoc "Where a file can be fetched and until when."

  use Ash.Type.NewType,
    subtype_of: :map,
    constraints: [
      fields: [
        download_url: [type: :string, allow_nil?: false],
        expires_at: [type: :utc_datetime, allow_nil?: false]
      ]
    ]

  def graphql_type(_constraints), do: :export_download_link
end
