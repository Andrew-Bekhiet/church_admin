defmodule ChurchAdmin.Files.PhotoUploadLink do
  @moduledoc """
  Where a photo is uploaded and until when: a `PUT` of the bytes to `url`
  sending every one of `headers`, then `confirmPhotoUpload` with
  `confirmation_token` to make them the subject's photo.
  """

  use Ash.Type.NewType,
    subtype_of: :map,
    constraints: [
      fields: [
        url: [type: :string, allow_nil?: false],
        expires_at: [type: :utc_datetime, allow_nil?: false],
        headers: [
          type: {:array, ChurchAdmin.Files.HttpHeader},
          allow_nil?: false,
          constraints: [nil_items?: false]
        ],
        confirmation_token: [type: :string, allow_nil?: false]
      ]
    ]

  def graphql_type(_constraints), do: :photo_upload_link
end
