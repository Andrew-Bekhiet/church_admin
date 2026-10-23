defmodule ChurchAdmin.Files.Photos.IssueDownloadLink do
  @moduledoc """
  Runs `Photo.photo_download_url`: when the actor may read the subject's
  photo, answers a five minute link the client GETs the image from, straight
  from storage. The `content_type` argument is accepted for old clients and
  ignored: the download announces the stored object's type.
  """

  use Ash.Resource.Actions.Implementation

  alias ChurchAdmin.Errors.{Codes, DomainError}
  alias ChurchAdmin.Files.{Buckets, Storage}
  alias ChurchAdmin.Files.Photos.Access

  @link_seconds 5 * 60

  @impl Ash.Resource.Actions.Implementation
  def run(input, _opts, %{actor: actor}) do
    %{subject: subject, id: id} = input.arguments

    with {:ok, target} <- Access.resolve(actor, subject, id, :read) do
      case Storage.download_link(Buckets.photos(), target.object, expires_in: @link_seconds) do
        {:ok, link} ->
          {:ok, %{url: link.url, expires_at: link.expires_at}}

        {:error, %Storage.Error{reason: :not_found}} ->
          {:error,
           DomainError.exception(
             code: Codes.not_found(),
             message: "#{subject} #{id} has no photo"
           )}

        {:error, _error} = failure ->
          failure
      end
    end
  end
end
