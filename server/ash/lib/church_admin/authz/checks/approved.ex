defmodule ChurchAdmin.Authz.Checks.Approved do
  @moduledoc """
  The actor holds `approved`. Gates the reads every approved user shares
  (places, services, activity days, lookups); a user waiting for approval
  reads only its own account and person.

      authorize_if ChurchAdmin.Authz.Checks.Approved
  """

  use Ash.Policy.SimpleCheck

  alias ChurchAdmin.Authz.Actor

  @impl Ash.Policy.Check
  def describe(_opts), do: "the actor is approved"

  @impl Ash.Policy.SimpleCheck
  def match?(%Actor{approved?: approved?}, _context, _opts), do: approved?
  def match?(_actor, _context, _opts), do: false
end
