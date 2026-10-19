defmodule ChurchAdmin.Authz.Checks.RelatedInScope do
  @moduledoc """
  Filter check: a record at relationship `path` is in the actor's
  `ChurchAdmin.Authz.Scope` of `entity` for `access`. A global scope passes
  without the related record, as Hasura's `any` row did.

      authorize_if {ChurchAdmin.Authz.Checks.RelatedInScope,
                    path: :person, entity: :person, access: :read}
  """

  use Ash.Policy.FilterCheck

  alias ChurchAdmin.Authz.Scope

  @impl true
  def describe(opts) do
    "#{Enum.join(List.wrap(opts[:path]), ".")} is in the actor's #{opts[:access]} scope"
  end

  @impl true
  def filter(actor, _context, opts) do
    case Scope.for_entity(Keyword.fetch!(opts, :entity), actor, Keyword.fetch!(opts, :access)) do
      false -> false
      true -> true
      scope -> Ash.Query.Exists.new(List.wrap(Keyword.fetch!(opts, :path)), scope)
    end
  end
end
