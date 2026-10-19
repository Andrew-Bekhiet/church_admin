defmodule ChurchAdminWeb.GraphqlSocket do
  use Phoenix.Socket

  # `Module.concat/1` keeps this module from depending on the schema, which
  # would otherwise make the socket and endpoint stale whenever a resource
  # changes. See the "Compile Times" guide in the AshGraphql docs.
  use Absinthe.Phoenix.Socket,
    schema: Module.concat(["ChurchAdminWeb.GraphqlSchema"])

  @impl true
  def connect(_params, socket, _connect_info) do
    {:ok, socket}
  end

  @impl true
  def id(_socket), do: nil
end
