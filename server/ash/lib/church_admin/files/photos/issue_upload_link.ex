defmodule ChurchAdmin.Files.Photos.IssueUploadLink do
  @moduledoc """
  Runs `Photo.request_photo_upload`: refuses a content type that is not an
  image (`invalid`), then, when the actor may change the subject's photo,
  answers a five minute link the client PUTs the bytes to, straight to a
  staging object in storage, and the token `confirmPhotoUpload` takes. The
  stored photo's type is the format of the bytes, whatever was announced.
  """

  use Ash.Resource.Actions.Implementation

  alias ChurchAdmin.Errors.{Codes, DomainError}
  alias ChurchAdmin.Files.{Buckets, Storage}
  alias ChurchAdmin.Files.Photos.{Access, Target, Upload, UploadConfirmation}

  @link_seconds 5 * 60

  @impl Ash.Resource.Actions.Implementation
  def run(input, _opts, %{actor: actor}) do
    %{subject: subject, id: id} = input.arguments
    content_type = input.arguments[:content_type]

    with :ok <- image_content_type(content_type),
         {:ok, target} <- Access.resolve(actor, subject, id, :write),
         staging_object = Target.new_staging_object(target),
         {:ok, link} <-
           Storage.upload_link(Buckets.photos(), staging_object,
             content_type: content_type,
             max_size: Upload.max_bytes(),
             expires_in: @link_seconds
           ) do
      {:ok,
       %{
         url: link.url,
         expires_at: link.expires_at,
         headers: Enum.map(link.headers, fn {name, value} -> %{name: name, value: value} end),
         confirmation_token: UploadConfirmation.issue(actor.uid, subject, id, staging_object)
       }}
    end
  end

  defp image_content_type("image/" <> _format), do: :ok

  defp image_content_type(_content_type) do
    {:error,
     DomainError.exception(
       code: Codes.invalid(),
       message: "The file is not a supported image",
       fields: [:content_type]
     )}
  end
end
