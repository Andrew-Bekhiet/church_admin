defmodule ChurchAdmin.Google.Error do
  @moduledoc """
  A failed Google API call. `code` carries Google's own error identifier when
  the response has one: the Identity Toolkit message (`USER_NOT_FOUND`), the
  Cloud Storage reason (`notFound`) or the FCM error code (`UNREGISTERED`).
  """

  @type api :: :identity_toolkit | :storage | :messaging
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

  @type t :: %__MODULE__{
          api: api() | nil,
          reason: reason(),
          status: non_neg_integer() | nil,
          code: String.t() | nil,
          message: String.t() | nil
        }

  defstruct [:api, :reason, :status, :code, :message]

  @identity_toolkit_not_found_codes ["USER_NOT_FOUND", "EMAIL_NOT_FOUND"]

  @spec from_response(api(), Req.Response.t()) :: t()
  def from_response(api, %Req.Response{status: status, body: body}) do
    error = body |> read_body() |> google_error()
    code = google_code(api, error)

    %__MODULE__{
      api: api,
      reason: reason_for(status, code),
      status: status,
      code: code,
      message: error["message"]
    }
  end

  @spec from_exception(api() | nil, reason(), Exception.t() | term()) :: t()
  def from_exception(api, reason, exception) do
    %__MODULE__{api: api, reason: reason, message: describe(exception)}
  end

  defp read_body(%Req.Response.Async{} = body), do: body |> Enum.join() |> decode_json()
  defp read_body(body) when is_binary(body), do: decode_json(body)
  defp read_body(body), do: body

  defp decode_json(binary) do
    case Jason.decode(binary) do
      {:ok, decoded} -> decoded
      {:error, _} -> binary
    end
  end

  defp google_error(%{"error" => %{} = error}), do: error
  defp google_error(_body), do: %{}

  defp google_code(:identity_toolkit, error), do: identity_toolkit_code(error)
  defp google_code(:storage, error), do: storage_reason(error)
  defp google_code(:messaging, error), do: fcm_error_code(error) || error["status"]

  defp fcm_error_code(error) do
    error["details"] |> List.wrap() |> Enum.find_value(&(is_map(&1) && &1["errorCode"]))
  end

  defp storage_reason(error) do
    error["errors"] |> List.wrap() |> Enum.find_value(&(is_map(&1) && &1["reason"]))
  end

  defp identity_toolkit_code(%{"message" => message}) when is_binary(message) do
    message |> String.split(" : ", parts: 2) |> hd()
  end

  defp identity_toolkit_code(_error), do: nil

  defp reason_for(_status, code) when code in @identity_toolkit_not_found_codes, do: :not_found
  defp reason_for(400, _code), do: :invalid_request
  defp reason_for(401, _code), do: :unauthorized
  defp reason_for(403, _code), do: :forbidden
  defp reason_for(404, _code), do: :not_found
  defp reason_for(429, _code), do: :rate_limited
  defp reason_for(status, _code) when status >= 500, do: :server_error
  defp reason_for(_status, _code), do: :unexpected_status

  defp describe(exception) when is_exception(exception), do: Exception.message(exception)
  defp describe(other), do: inspect(other)
end
