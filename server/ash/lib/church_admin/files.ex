defmodule ChurchAdmin.Files do
  @moduledoc """
  Photos kept in object storage (`ChurchAdmin.Files.Storage`). The actions
  here hand out short-lived links straight to storage, so the bytes move
  between the client and storage; an upload is staged and only becomes the
  photo through `confirm_photo_upload`.
  """

  use ChurchAdmin.Domain

  resources do
    resource ChurchAdmin.Files.Photo do
      define :request_photo_upload, args: [:subject, :id, :content_type]
      define :confirm_photo_upload, args: [:subject, :id, :confirmation_token]
      define :photo_download_url, args: [:subject, :id, {:optional, :content_type}]
      define :delete_photo, args: [:subject, :id]
    end
  end
end
