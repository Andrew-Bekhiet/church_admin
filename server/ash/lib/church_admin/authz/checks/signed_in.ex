defmodule ChurchAdmin.Authz.Checks.SignedIn do
  @moduledoc """
  Filter check: any signed-in actor passes, a request without an actor reads
  nothing. Hasura had no role for anonymous requests, so resources it showed to
  every user (`filter: {}`) still hide from them.

      authorize_if ChurchAdmin.Authz.Checks.SignedIn
  """

  use Ash.Policy.FilterCheck

  @impl true
  def describe(_opts), do: "the request has an actor"

  @impl true
  def filter(nil, _context, _opts), do: false
  def filter(_actor, _context, _opts), do: true
end
