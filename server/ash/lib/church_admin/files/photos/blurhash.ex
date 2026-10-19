defmodule ChurchAdmin.Files.Photos.Blurhash do
  @moduledoc """
  The blurhash of an image, 5 by 5 components, from a 32 pixel thumbnail
  flattened to three bands.
  """

  @thumbnail_pixels 32
  @components [x_components: 5, y_components: 5]

  @spec encode(binary()) :: {:ok, String.t()} | {:error, term()}
  def encode(image_bytes) do
    with {:ok, image} <- Image.from_binary(image_bytes),
         {:ok, thumbnail} <- Image.thumbnail(image, @thumbnail_pixels),
         {:ok, flat} <- Image.flatten(thumbnail) do
      Image.Blurhash.encode(flat, @components)
    end
  end
end
