defmodule ChurchAdmin.Authz.Checks.CreatedInCommand do
  @moduledoc """
  The record referenced by `attribute` (a person or family id) was created
  earlier in the same command. Replaces the baseline's
  `*_inserted_in_current_transaction` GUC list.

  Contract for the command that creates the referenced record: it records the
  new id with `remember_created/3` in the context it hands to every changeset
  it builds afterwards in the same transaction (nested `manage_relationship`
  changesets inherit the parent changeset's context):

      context = CreatedInCommand.remember_created(changeset.context, :person, person.id)

  A create action remembers its own record with
  `change {ChurchAdmin.Authz.Changes.RememberCreated, kind: :family}`.

      authorize_if {ChurchAdmin.Authz.Checks.CreatedInCommand, attribute: :person_id, kind: :person}
  """

  use Ash.Policy.SimpleCheck

  @type kind :: :person | :family

  @impl Ash.Policy.Check
  def describe(opts), do: "#{opts[:attribute]} names a #{opts[:kind]} created in this command"

  @impl Ash.Policy.SimpleCheck
  def match?(_actor, %{subject: %Ash.Changeset{} = changeset}, opts) do
    id = Ash.Changeset.get_attribute(changeset, Keyword.fetch!(opts, :attribute))
    not is_nil(id) and id in created_ids(changeset.context, Keyword.fetch!(opts, :kind))
  end

  def match?(_actor, _context, _opts), do: false

  @spec remember_created(map(), kind(), String.t()) :: map()
  def remember_created(context, kind, id) do
    update_in(context, [Access.key(:church_admin, %{}), Access.key(:created, %{})], fn created ->
      Map.update(created, kind, [id], &[id | &1])
    end)
  end

  @doc "The part of a command's context a nested changeset needs for this check."
  @spec carried(map()) :: map()
  def carried(context), do: Map.take(context, [:church_admin])

  @spec created_ids(map(), kind()) :: [String.t()]
  def created_ids(context, kind), do: get_in(context, [:church_admin, :created, kind]) || []
end
