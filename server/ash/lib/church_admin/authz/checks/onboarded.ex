defmodule ChurchAdmin.Authz.Checks.Onboarded do
  @moduledoc """
  The actor's account is onboarded: its token carries the `x-hasura-user-id`
  claim (approved or not). Hasura rejected tokens without it, so this is what
  Hasura's role `user` required; only the actions that onboard or delete the
  account settle for `ChurchAdmin.Authz.Checks.SignedInToFirebase`.

      authorize_if ChurchAdmin.Authz.Checks.Onboarded
  """

  use Ash.Policy.SimpleCheck

  alias ChurchAdmin.Authz.Actor

  @impl true
  def describe(_opts), do: "the actor's account is onboarded"

  @impl true
  def match?(%Actor{uid: uid}, _context, _opts), do: is_binary(uid)
  def match?(_actor, _context, _opts), do: false
end
