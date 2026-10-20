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

  @impl Ash.Policy.Check
  def describe(opts) do
    "#{Enum.join(List.wrap(opts[:path]), ".")} is in the actor's #{opts[:access]} scope"
  end

  @impl Ash.Policy.FilterCheck
  def filter(actor, _context, opts) do
    entity = Keyword.fetch!(opts, :entity)
    access = Keyword.fetch!(opts, :access)

    case Scope.for_entity(entity, actor, access) do
      false -> false
      true -> true
      scope -> opts |> Keyword.fetch!(:path) |> List.wrap() |> Ash.Query.Exists.new(scope)
    end
  end
end
