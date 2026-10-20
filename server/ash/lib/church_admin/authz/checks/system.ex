defmodule ChurchAdmin.Authz.Checks.System do
  @moduledoc """
  The actor is the system actor (`ChurchAdmin.Authz.Actor.system/0`): jobs and
  internal calls. Every domain built on `ChurchAdmin.Domain` lets it bypass
  its resources' policies.
  """

  use Ash.Policy.SimpleCheck

  alias ChurchAdmin.Authz.Actor

  @impl Ash.Policy.Check
  def describe(_opts), do: "the actor is the system"

  @impl Ash.Policy.SimpleCheck
  def match?(%Actor{system?: true}, _context, _opts), do: true
  def match?(_actor, _context, _opts), do: false
end
