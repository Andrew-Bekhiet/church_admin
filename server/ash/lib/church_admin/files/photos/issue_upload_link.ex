defmodule ChurchAdmin.Files.Photos.IssueUploadLink do
  @moduledoc """
  Runs `Photo.request_photo_upload`: when the actor may change the subject's
  photo, answers a five minute link the client PUTs the image to. The
  `content_type` argument is accepted for old clients and ignored: the stored
  type is the format of the uploaded bytes.
  """

  use Ash.Resource.Actions.Implementation

  alias ChurchAdmin.Files.Photos.Access
  alias ChurchAdminWeb.FileToken

  @impl Ash.Resource.Actions.Implementation
  def run(input, _opts, %{actor: actor}) do
    %{subject: subject, id: id} = input.arguments

    with {:ok, _target} <- Access.resolve(actor, subject, id, :write) do
      params = %{subject: subject, id: id}
      {token, expires_at} = FileToken.issue(:photo_upload, actor.uid, params)

      {:ok, %{url: FileToken.download_url(token, "photo"), expires_at: expires_at}}
    end
  end
end
