defmodule ChurchAdmin.Files.Photos.IssueUploadLink do
  @moduledoc """
  Runs `Photo.request_photo_upload`: when the actor may change the subject's
  photo, answers a five minute link the client PUTs the image to.
  """

  use Ash.Resource.Actions.Implementation

  alias ChurchAdmin.Files.Photos.Access
  alias ChurchAdminWeb.FileToken

  @impl true
  def run(input, _opts, %{actor: actor}) do
    %{subject: subject, id: id} = input.arguments

    with {:ok, _target} <- Access.resolve(actor, subject, id, :write) do
      params = %{subject: subject, id: id, content_type: input.arguments[:content_type]}
      {token, expires_at} = FileToken.issue(:photo_upload, actor.uid, params)

      {:ok, %{url: FileToken.download_url(token, "photo"), expires_at: expires_at}}
    end
  end
end
