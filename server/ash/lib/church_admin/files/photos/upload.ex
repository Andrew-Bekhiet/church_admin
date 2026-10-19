defmodule ChurchAdmin.Files.Photos.Upload do
  @moduledoc """
  Stores an uploaded photo: puts the bytes in the photos bucket, then records
  the object's update time and the image's blurhash on the subject. A blurhash
  that cannot be computed is logged and left nil; the upload still stands.
  """

  require Logger

  alias ChurchAdmin.Files.Buckets
  alias ChurchAdmin.Files.Photos.{Blurhash, Record, Target}
  alias ChurchAdmin.Google.Storage

  @spec store(Target.t(), binary(), String.t()) :: :ok | {:error, term()}
  def store(%Target{} = target, bytes, content_type) do
    with {:ok, object} <-
           Storage.upload(Buckets.photos(), target.object, bytes, content_type: content_type) do
      Record.record(target, object.updated_at, blurhash_or_nil(target, bytes))
    end
  end

  defp blurhash_or_nil(target, bytes) do
    case encode(bytes) do
      {:ok, blurhash} ->
        blurhash

      {:error, reason} ->
        Logger.warning("no blurhash for #{target.object}: #{inspect(reason)}")
        nil
    end
  end

  defp encode(bytes) do
    Blurhash.encode(bytes)
  rescue
    error -> {:error, error}
  end
end
