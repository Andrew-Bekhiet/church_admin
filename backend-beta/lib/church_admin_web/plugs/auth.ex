defmodule ChurchAdminWeb.Plugs.Auth do
  import Plug.Conn
  import Phoenix.Controller

  use Joken.Config, default_signer: nil

  add_hook(JokenJwks, strategy: ChurchAdminWeb.Plugs.Auth.FirebaseJWTStrategy)

  def init(opts), do: opts

  def call(conn, _opts) do
    conn
    |> get_token()
    |> check_token()
    |> continue_or_halt(conn)
  end

  @impl true
  def token_config() do
    default_claims(
      iss: "https://securetoken.google.com/church-data-admin",
      aud: "church-data-admin",
      skip: [:nbf, :jti]
    )
    |> add_claim("email_verified", fn -> false end, &(&1 == true))
    |> add_claim("password", fn -> nil end, &(&1 != nil))
    |> add_claim("x-hasura-user-id", fn -> nil end, &(&1 != nil))
    |> add_claim("firebase", fn -> nil end, fn claims ->
      claims |> Map.get("sign_in_second_factor") != nil
    end)
  end

  @spec get_token(Plug.Conn.t()) :: nil | binary()
  def get_token(conn = %Plug.Conn{}) do
    case get_req_header(conn, "authorization") do
      ["Bearer " <> token] -> token
      _ -> nil
    end
  end

  @spec check_token(nil | binary()) ::
          {:ok, Joken.claims()} | {:error, Joken.error_reason() | atom()}

  def check_token(token) when is_binary(token), do: verify_and_validate(token)
  def check_token(_), do: {:error, :no_token}

  def continue_or_halt({:ok, claims}, conn) do
    conn
    |> assign(:user_id, claims |> Map.get("x-hasura-user-id"))
    |> assign(:auth_id, claims |> Map.get("sub"))
  end

  def continue_or_halt(_, conn), do: send_unauthorized(conn)

  @spec send_unauthorized(Plug.Conn.t()) :: Plug.Conn.t()
  defp send_unauthorized(conn = %Plug.Conn{}) do
    conn
    |> put_status(:unauthorized)
    |> put_view(ChurchAdminWeb.ErrorJSON)
    |> render(:error, message: "Unauthorized")
    |> halt()
  end
end

defmodule ChurchAdminWeb.Plugs.Auth.FirebaseJWTStrategy do
  use JokenJwks.DefaultStrategyTemplate

  def init_opts(opts) do
    opts
    |> Keyword.merge(
      jwks_url:
        "https://www.googleapis.com/service_accounts/v1/jwk/securetoken@system.gserviceaccount.com/"
    )
    |> Keyword.merge(log_level: :info)
  end
end
