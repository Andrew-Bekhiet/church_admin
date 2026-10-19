defmodule ChurchAdmin.Files do
  @moduledoc """
  Photos kept in Cloud Storage. The actions here hand out short-lived
  `/api/files/:token` links; the bytes move when a link is fetched
  (`ChurchAdminWeb.FileController`).
  """

  use ChurchAdmin.Domain

  resources do
    resource ChurchAdmin.Files.Photo do
      define :request_photo_upload, args: [:subject, :id, :content_type]
      define :photo_download_url, args: [:subject, :id, {:optional, :content_type}]
      define :delete_photo, args: [:subject, :id]
    end
  end
end
