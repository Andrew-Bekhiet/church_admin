defmodule ChurchAdmin.Files.Photos.ImageFormat do
  @moduledoc """
  The image formats a photo may have. `detect/1` names the format from the
  bytes themselves, never from what a request claims; scriptable formats such
  as SVG are not on the list. `servable_type/1` maps a stored object's content
  type to what a download may announce.
  """

  @loader_types %{
    "jpegload_buffer" => "image/jpeg",
    "pngload_buffer" => "image/png",
    "webpload_buffer" => "image/webp",
    "gifload_buffer" => "image/gif",
    "heifload_buffer" => "image/heic"
  }
  @servable_types @loader_types |> Map.values() |> MapSet.new()
  @opaque_type "application/octet-stream"

  @spec detect(binary()) :: {:ok, String.t()} | {:error, :not_an_image}
  def detect(bytes) do
    with {:ok, image} <- Image.from_binary(bytes),
         {:ok, loader} <- Vix.Vips.Image.header_value(image, "vips-loader"),
         {:ok, content_type} <- Map.fetch(@loader_types, loader) do
      {:ok, content_type}
    else
      _unreadable_or_not_allowed -> {:error, :not_an_image}
    end
  rescue
    _error -> {:error, :not_an_image}
  end

  @spec servable_type(String.t() | nil) :: String.t()
  def servable_type(stored_type) do
    if MapSet.member?(@servable_types, stored_type), do: stored_type, else: @opaque_type
  end
end
