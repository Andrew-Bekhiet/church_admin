defmodule ChurchAdmin.Files.Photos.IssueDownloadLink do
  @moduledoc """
  Runs `Photo.photo_download_url`: when the actor may read the subject's
  photo, answers a five minute link the client GETs the image from. The
  `content_type` argument is accepted for old clients and ignored: the
  download announces the stored object's type.
  """

  use Ash.Resource.Actions.Implementation

  alias ChurchAdmin.Files.Photos.Access
  alias ChurchAdminWeb.FileToken

  @impl true
  def run(input, _opts, %{actor: actor}) do
    %{subject: subject, id: id} = input.arguments

    with {:ok, _target} <- Access.resolve(actor, subject, id, :read) do
      params = %{subject: subject, id: id}
      {token, expires_at} = FileToken.issue(:photo_download, actor.uid, params)

      {:ok, %{url: FileToken.download_url(token, "photo"), expires_at: expires_at}}
    end
  end
end
