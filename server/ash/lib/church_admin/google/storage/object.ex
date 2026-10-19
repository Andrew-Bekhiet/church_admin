defmodule ChurchAdmin.Google.Storage.Object do
  @moduledoc "The parts of a GCS object resource church_admin reads."

  @type t :: %__MODULE__{
          name: String.t(),
          bucket: String.t(),
          size: non_neg_integer() | nil,
          content_type: String.t() | nil,
          updated_at: DateTime.t() | nil
        }

  @enforce_keys [:name, :bucket]
  defstruct [:name, :bucket, :size, :content_type, :updated_at]

  @spec from_resource(map()) :: t()
  def from_resource(%{"name" => name, "bucket" => bucket} = resource) do
    %__MODULE__{
      name: name,
      bucket: bucket,
      size: parse_size(resource["size"]),
      content_type: resource["contentType"],
      updated_at: parse_timestamp(resource["updated"])
    }
  end

  defp parse_size(size) when is_integer(size), do: size
  defp parse_size(size) when is_binary(size), do: String.to_integer(size)
  defp parse_size(nil), do: nil

  defp parse_timestamp(timestamp) when is_binary(timestamp) do
    case DateTime.from_iso8601(timestamp) do
      {:ok, updated_at, _offset} -> updated_at
      {:error, _reason} -> nil
    end
  end

  defp parse_timestamp(nil), do: nil
end
