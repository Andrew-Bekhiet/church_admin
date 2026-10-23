defmodule ChurchAdmin.Files.Storage.Error do
  @moduledoc """
  A failed storage call. `code` carries the provider's own error identifier
  when it has one (the Cloud Storage reason `notFound`).
  """

  @type reason ::
          :not_found
          | :invalid_request
          | :unauthorized
          | :forbidden
          | :rate_limited
          | :server_error
          | :unexpected_status
          | :unexpected_response
          | :transport
          | :credentials
          | :signing

  @type t :: %__MODULE__{
          reason: reason(),
          status: non_neg_integer() | nil,
          code: String.t() | nil,
          message: String.t() | nil
        }

  defstruct [:reason, :status, :code, :message]

  @spec from_google(ChurchAdmin.Google.Error.t()) :: t()
  def from_google(%ChurchAdmin.Google.Error{} = error) do
    %__MODULE__{
      reason: error.reason,
      status: error.status,
      code: error.code,
      message: error.message
    }
  end
end
