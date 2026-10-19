defmodule ChurchAdmin.Google.Client do
  @moduledoc """
  Runs one authorized Req request against a configured Google API. Paths use
  `{param}` placeholders (`accounts:lookup` would read as a `:lookup` param).
  Any non-2xx status or transport failure comes back as an `Error`.
  """

  alias ChurchAdmin.Google.Config
  alias ChurchAdmin.Google.Credentials
  alias ChurchAdmin.Google.Error

  @spec request(Config.api(), keyword()) :: {:ok, Req.Response.t()} | {:error, Error.t()}
  def request(api, options) do
    case Credentials.fetch_token(Config.credentials()) do
      {:ok, token} -> api |> new(token) |> Req.request(options) |> to_result(api)
      {:error, error} -> {:error, %{error | api: api}}
    end
  end

  defp new(api, token) do
    [base_url: Config.base_url(api), auth: {:bearer, token}, path_params_style: :curly]
    |> Req.new()
    |> Req.merge(Config.req_options(api))
  end

  defp to_result({:ok, %Req.Response{status: status} = response}, _api) when status in 200..299,
    do: {:ok, response}

  defp to_result({:ok, response}, api), do: {:error, Error.from_response(api, response)}

  defp to_result({:error, exception}, api),
    do: {:error, Error.from_exception(api, :transport, exception)}
end
