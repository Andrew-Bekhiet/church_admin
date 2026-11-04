defmodule ChurchAdmin.Realtime.Live.ViewerClass do
  @moduledoc """
  Who may share a group's result. An actor whose read scope folds to `true`
  on every scoped entity is a global reader, keyed by its `Actor` with the
  identity fields blanked and grants reduced to their content, so flags,
  permissions and grants stay in the key: two readers share only when every
  check that reads those gives the same answer. Any other actor is keyed by
  its uid.

  Operations whose results depend on the blanked fields are keyed by uid.
  Some depend on them for every viewer. The others depend on them only below
  full write, because `userCanEdit` and `currentUserCanManageThisUser` fold
  to `true` for a viewer holding both write-all and manage-all, so full
  admins still share those. `ViewerClassCompletenessTest` proves both lists
  against every client document.
  """

  alias ChurchAdmin.Authz.{Actor, Grant, Scope}

  @entities_outside_scope_resources [:history_record, :contact, :resolved_contact]
  @operations_per_uid_for_everyone ~w(user)
  @operations_per_uid_below_full_write ~w(
    geolocatedPersons
    homeSearch
    person
    personHistoryAnalysis
    personMemberships
    persons
    users
  )

  @type t :: {:uid, String.t()} | {:global_reader, Actor.t()}

  @spec operations_per_uid_for_everyone() :: [String.t()]
  def operations_per_uid_for_everyone, do: @operations_per_uid_for_everyone

  @spec operations_per_uid_below_full_write() :: [String.t()]
  def operations_per_uid_below_full_write, do: @operations_per_uid_below_full_write

  @spec key(Actor.t(), String.t() | nil) :: t()
  def key(%Actor{} = actor, operation_name) do
    if global_reader?(actor) and not depends_on_identity?(operation_name, actor),
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

  defp depends_on_identity?(operation_name, %Actor{} = actor) do
    operation_name in @operations_per_uid_for_everyone or
      (operation_name in @operations_per_uid_below_full_write and not full_writer?(actor))
  end

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
