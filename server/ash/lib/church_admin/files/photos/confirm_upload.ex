defmodule ChurchAdmin.Files.Photos.ConfirmUpload do
  @moduledoc """
  Runs `Photo.confirm_photo_upload`: takes the bytes a client PUT through its
  upload link and makes them the subject's photo with `Upload.store/2`. The
  confirmation token must be the actor's own for the same subject and id, and
  the actor must still be allowed to change the photo. A staging object that
  is missing is `not_found`; one over the size limit or not an allowed image
  is `invalid` and leaves the current photo alone. Once the token verifies,
  the staging object is deleted whatever the outcome.
  """

  use Ash.Resource.Actions.Implementation

  require Logger

  alias ChurchAdmin.Errors.{Codes, DomainError}
  alias ChurchAdmin.Files.{Buckets, Storage}
  alias ChurchAdmin.Files.Photos.{Access, Upload, UploadConfirmation}

  @impl Ash.Resource.Actions.Implementation
  def run(input, _opts, %{actor: actor}) do
    %{subject: subject, id: id, confirmation_token: token} = input.arguments

    with {:ok, staging_object} <- UploadConfirmation.staging_object(token, actor, subject, id) do
      result = store_staged(actor, subject, id, staging_object)
      delete_staged(staging_object)
      result
    end
  end

  defp store_staged(actor, subject, id, staging_object) do
    bucket = Buckets.photos()

    with {:ok, target} <- Access.resolve(actor, subject, id, :write),
         {:ok, %{size: size}} <- staged_metadata(bucket, staging_object),
         :ok <- within_size_limit(size),
         {:ok, chunks} <- Storage.download(bucket, staging_object),
         {:ok, bytes} <- read_within_size_limit(chunks),
         :ok <- store(target, bytes) do
      {:ok, true}
    end
  end

  defp staged_metadata(bucket, staging_object) do
    case Storage.metadata(bucket, staging_object) do
      {:ok, object} ->
        {:ok, object}

      {:error, %Storage.Error{reason: :not_found}} ->
        {:error, error(Codes.not_found(), "No photo was uploaded through this link")}

      {:error, _error} = failure ->
        failure
    end
  end

  defp within_size_limit(size) when is_integer(size) and size > 0 do
    if size > Upload.max_bytes(), do: too_large(), else: :ok
  end

  defp within_size_limit(_empty_or_unknown), do: not_an_image()

  defp read_within_size_limit(chunks) do
    chunks
    |> Enum.reduce_while({:ok, 0, []}, fn chunk, {:ok, size, read} ->
      size = size + byte_size(chunk)

      if size > Upload.max_bytes(),
        do: {:halt, too_large()},
        else: {:cont, {:ok, size, [read, chunk]}}
    end)
    |> case do
      {:ok, _size, read} -> {:ok, IO.iodata_to_binary(read)}
      {:error, _error} = failure -> failure
    end
  end

  defp store(target, bytes) do
    case Upload.store(target, bytes) do
      :ok ->
        :ok

      {:error, :not_an_image} ->
        not_an_image()

      {:error, %Storage.Error{} = error} = failure ->
        Logger.error("storage failed: #{inspect(error)}")
        failure

      {:error, _error} = failure ->
        failure
    end
  end

  defp delete_staged(staging_object) do
    case Storage.delete(Buckets.photos(), staging_object) do
      :ok -> :ok
      {:error, %Storage.Error{reason: :not_found}} -> :ok
      {:error, error} -> Logger.warning("staged #{staging_object} stays: #{inspect(error)}")
    end
  end

  defp too_large, do: {:error, error(Codes.invalid(), "The photo is too large")}

  defp not_an_image, do: {:error, error(Codes.invalid(), "The file is not a supported image")}

  defp error(code, message), do: DomainError.exception(code: code, message: message)
end
