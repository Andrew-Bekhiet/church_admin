defmodule ChurchAdmin.Files.Photo do
  @moduledoc """
  The photo links of records. It holds no data: `requestPhotoUpload`,
  `photoDownloadUrl` and `deletePhoto` check what the actor may do with the
  subject's photo (`ChurchAdmin.Files.Photos.Access`), and the bytes move when
  a link is fetched.
  """

  use Ash.Resource,
    domain: ChurchAdmin.Files,
    extensions: [AshGraphql.Resource],
    authorizers: [Ash.Policy.Authorizer]

  alias ChurchAdmin.Authz.Checks.Approved
  alias ChurchAdmin.Files.{PhotoLink, PhotoSubject}
  alias ChurchAdmin.Files.Photos.{Delete, IssueDownloadLink, IssueUploadLink}

  graphql do
    queries do
      action :photo_download_url, :photo_download_url
    end

    mutations do
      action :request_photo_upload, :request_photo_upload, args: [:subject, :id, :content_type]
      action :delete_photo, :delete_photo, args: [:subject, :id]
    end
  end

  actions do
    action :request_photo_upload, PhotoLink do
      argument :subject, PhotoSubject, allow_nil?: false
      argument :id, :uuid, allow_nil?: false
      argument :content_type, :string

      run IssueUploadLink
    end

    action :photo_download_url, PhotoLink do
      argument :subject, PhotoSubject, allow_nil?: false
      argument :id, :uuid, allow_nil?: false
      argument :content_type, :string

      run IssueDownloadLink
    end

    action :delete_photo, :boolean do
      argument :subject, PhotoSubject, allow_nil?: false
      argument :id, :uuid, allow_nil?: false

      run Delete
    end
  end

  policies do
    policy action([:request_photo_upload, :photo_download_url, :delete_photo]) do
      forbid_unless Approved
      authorize_if always()
    end
  end
end
