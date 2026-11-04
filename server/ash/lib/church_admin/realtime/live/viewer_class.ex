defmodule ChurchAdmin.Realtime.Live.ViewerClass do
  @moduledoc """
  Who may share a group's result. An actor whose read scope folds to `true`
  on every scoped entity is a global reader, keyed by its `Actor` with the
  identity fields blanked and grants reduced to their content, so flags,
  permissions and grants stay in the key: two readers share only when every
  check that reads those gives the same answer. Any other actor is keyed by
  its uid.

  A document selecting a field whose value depends on the blanked fields is
  keyed by uid, decided from what it selects because a client names its
  operations freely. Some fields depend on them for every viewer. The others
  depend on them only below full write, because `userCanEdit` and
  `currentUserCanManageThisUser` fold to `true` for a viewer holding both
  write-all and manage-all, so full admins still share those.
  `ViewerClassCompletenessTest` proves both lists against every client
  document.
  """

  alias ChurchAdmin.Authz.{Actor, Grant, Scope}

  @entities_outside_scope_resources [:history_record, :contact, :resolved_contact]
  @fields_per_uid_for_everyone ~w(deviceTokens preferences)
  @fields_per_uid_below_full_write ~w(currentUserCanManageThisUser userCanEdit)

  @type t :: {:uid, String.t()} | {:global_reader, Actor.t()}

  @spec fields_per_uid_for_everyone() :: [String.t()]
  def fields_per_uid_for_everyone, do: @fields_per_uid_for_everyone

  @spec fields_per_uid_below_full_write() :: [String.t()]
  def fields_per_uid_below_full_write, do: @fields_per_uid_below_full_write

  @spec key(Actor.t(), MapSet.t(String.t())) :: t()
  def key(%Actor{} = actor, selected_fields) do
    if global_reader?(actor) and not depends_on_identity?(selected_fields, actor),
      do: {:global_reader, facts(actor)},
      else: {:uid, actor.uid}
  end

  @doc "The actor's authorization facts, without the identity they belong to."
  @spec facts(Actor.t()) :: Actor.t()
  def facts(%Actor{} = actor) do
    %{
      actor
      | uid: nil,
        principal: nil,
        person_id: nil,
        family_id: nil,
        managed_user_uids: [],
        visible_servant_uids: [],
        service_grants: grant_contents(actor.service_grants),
        group_grants: grant_contents(actor.group_grants),
        area_grants: grant_contents(actor.area_grants)
    }
  end

  @doc "Whether two actors are the same viewer with the same rights, whatever token they came with."
  @spec same_scope?(Actor.t(), Actor.t()) :: boolean()
  def same_scope?(%Actor{} = left, %Actor{} = right), do: scope(left) == scope(right)

  @spec global_reader?(Actor.t()) :: boolean()
  def global_reader?(%Actor{} = actor) do
    entities = Scope.entities() ++ @entities_outside_scope_resources

    Enum.all?(entities, &(Scope.for_entity(&1, actor, :read) == true))
  end

  defp depends_on_identity?(selected_fields, %Actor{} = actor) do
    selects_any?(selected_fields, @fields_per_uid_for_everyone) or
      (selects_any?(selected_fields, @fields_per_uid_below_full_write) and
         not full_writer?(actor))
  end

  defp selects_any?(selected_fields, fields), do: Enum.any?(fields, &(&1 in selected_fields))

  defp full_writer?(%Actor{write_all?: write_all?, manage_all_users?: manage_all_users?}),
    do: write_all? and manage_all_users?

  defp scope(%Actor{} = actor) do
    {facts(actor), actor.uid, actor.person_id, actor.family_id,
     Enum.sort(actor.managed_user_uids), Enum.sort(actor.visible_servant_uids)}
  end

  defp grant_contents(grants) do
    grants |> Enum.map(fn %Grant{} = grant -> %{grant | id: nil} end) |> Enum.sort()
  end
end
