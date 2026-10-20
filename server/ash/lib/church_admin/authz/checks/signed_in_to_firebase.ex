defmodule ChurchAdmin.Authz.Checks.SignedInToFirebase do
  @moduledoc """
  The request carries a verified Firebase account, onboarded or not: the
  actions that onboard or delete that account need nothing more.

      authorize_if ChurchAdmin.Authz.Checks.SignedInToFirebase
  """

  use Ash.Policy.SimpleCheck

  alias ChurchAdmin.Auth.Principal
  alias ChurchAdmin.Authz.Actor

  @impl Ash.Policy.Check
  def describe(_opts), do: "the request is signed in to Firebase"

  @impl Ash.Policy.SimpleCheck
  def match?(%Actor{principal: %Principal{}}, _context, _opts), do: true
  def match?(_actor, _context, _opts), do: false
end
