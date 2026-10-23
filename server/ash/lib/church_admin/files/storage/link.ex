defmodule ChurchAdmin.Files.Storage.Link do
  @moduledoc """
  A short-lived URL straight to an object in storage. An upload link takes a
  `PUT` that sends every one of `headers`; a download link takes a plain `GET`.
  """

  @type t :: %__MODULE__{
          url: String.t(),
          headers: [{String.t(), String.t()}],
          expires_at: DateTime.t()
        }

  @enforce_keys [:url, :headers, :expires_at]
  defstruct [:url, :headers, :expires_at]

  @spec expiring_in(String.t(), [{String.t(), String.t()}], pos_integer()) :: t()
  def expiring_in(url, headers, expires_in) do
    expires_at =
      DateTime.utc_now()
      |> DateTime.add(expires_in, :second)
      |> DateTime.truncate(:second)

    %__MODULE__{url: url, headers: headers, expires_at: expires_at}
  end
end
