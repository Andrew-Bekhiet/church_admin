defmodule ChurchAdmin.Files.PhotoLink do
  @moduledoc "Where a photo can be uploaded or fetched and until when."

  use Ash.Type.NewType,
    subtype_of: :map,
    constraints: [
      fields: [
        url: [type: :string, allow_nil?: false],
        expires_at: [type: :utc_datetime, allow_nil?: false]
      ]
    ]

  def graphql_type(_constraints), do: :photo_link
end
