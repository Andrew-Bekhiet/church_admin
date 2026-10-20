defmodule ChurchAdmin.Authz.Scope do
  @moduledoc """
  Which records an actor may read, edit or export, as Ash expressions. Each
  entity function combines the actor's grants on that entity type (those
  that allow edit for `:edit`, export for `:export`) with the actor's global
  grant, and is written relative to that entity's resource. The global grant
  folds to `true`, so admins never carry a scope into SQL; a nil actor gets
  `false`.

  Every expression is NULL-free (nullable columns are guarded), so it can be
  negated and returned as a non-null boolean. Data-dependent sets stay
  `exists` subqueries; soft-deleted rows still count towards a scope, except
  persons, which reach families, classes and groups only while live.
  """

  import Ash.Expr
  import ChurchAdmin.Authz.Scope.Combine

  alias ChurchAdmin.Accounts.User
  alias ChurchAdmin.Authz.{Actor, Grant}
  alias ChurchAdmin.Organization.{Class, ClassCoverage, Group, Service}
  alias ChurchAdmin.People.{Family, Person}
  alias ChurchAdmin.Places.{Area, Store, Street}

  @type access :: :read | :edit | :export
  @type meeting_access :: :admin | :record_persons | :record_servants
  @type entity ::
          :person | :family | :store | :service | :class | :group | :area | :street | :user

  @resources %{
    person: Person,
    family: Family,
    store: Store,
    service: Service,
    class: Class,
    group: Group,
    area: Area,
    street: Street,
    user: User
  }

  @spec resource(entity()) :: module()
  def resource(entity), do: Map.fetch!(@resources, entity)

  @spec entity_of(module()) :: entity()
  def entity_of(resource) do
    Enum.find_value(@resources, fn {entity, module} -> if module == resource, do: entity end) ||
      raise ArgumentError, "#{inspect(resource)} is not a scoped entity"
  end

  @spec for_entity(
          entity() | :meeting | :history_record | :contact | :resolved_contact,
          Actor.t() | nil,
          atom()
        ) ::
          Ash.Expr.t()
  def for_entity(entity, actor, access), do: apply(__MODULE__, entity, [actor, access])

  @spec person(Actor.t() | nil, access()) :: Ash.Expr.t()
  def person(actor, access) do
    with_global(actor, access, fn actor ->
      any_of([
        own_person(actor, access),
        persons_in_services(Grant.giving(actor.service_grants, access)),
        unless_empty(
          Grant.scope_ids_giving(actor.group_grants, access),
          fn ids -> expr(exists(group_memberships, group_id in ^ids)) end
        ),
        if(access == :export,
          do: false,
          else: persons_in_areas(Grant.scope_ids_giving(actor.area_grants, access))
        ),
        if(access == :export, do: false, else: members_of_related_families(actor)),
        if(access == :read, do: uid_in(actor.visible_servant_uids), else: false)
      ])
    end)
  end

  @spec family(Actor.t() | nil, access()) :: Ash.Expr.t()
  def family(actor, access) do
    with_global(actor, access, fn actor ->
      any_of([
        own_family(actor, access),
        addressed_in_areas(Grant.scope_ids_giving(actor.area_grants, access)),
        actor.service_grants
        |> grants_reaching_families(access)
        |> persons_in_services()
        |> when_present(fn person -> expr(exists(persons, is_nil(deleted_at) and ^person)) end),
        unless_empty(
          actor.group_grants |> grants_reaching_families(access) |> Grant.scope_ids(),
          fn ids ->
            expr(
              exists(persons, is_nil(deleted_at) and exists(group_memberships, group_id in ^ids))
            )
          end
        )
      ])
    end)
  end

  @spec store(Actor.t() | nil, access()) :: Ash.Expr.t()
  def store(actor, access) do
    with_global(actor, access, fn actor ->
      addressed_in_areas(Grant.scope_ids_giving(actor.area_grants, access))
    end)
  end

  @spec service(Actor.t() | nil, access()) :: Ash.Expr.t()
  def service(actor, access) do
    with_global(actor, access, fn actor ->
      id_in(Grant.scope_ids_giving(actor.service_grants, access))
    end)
  end

  @spec class(Actor.t() | nil, access()) :: Ash.Expr.t()
  def class(actor, access) do
    with_global(actor, access, fn actor ->
      any_of([
        per_service_grant(
          Grant.giving(actor.service_grants, access),
          fn ids -> expr(service_id in ^ids) end,
          &class_of_restricted_grant(&1, access)
        ),
        if(access == :read,
          do: classes_of_area_persons(Grant.scope_ids(actor.area_grants)),
          else: false
        )
      ])
    end)
  end

  @spec group(Actor.t() | nil, access()) :: Ash.Expr.t()
  def group(actor, access) do
    with_global(actor, access, fn actor ->
      any_of([
        id_in(Grant.scope_ids_giving(actor.group_grants, access)),
        if(access == :read,
          do:
            actor.area_grants
            |> Grant.scope_ids()
            |> live_persons_in_areas()
            |> when_present(fn in_areas ->
              expr(exists(group_memberships, exists(person, ^in_areas)))
            end),
          else: false
        )
      ])
    end)
  end

  @spec area(Actor.t() | nil, access()) :: Ash.Expr.t()
  def area(actor, access) do
    with_global(actor, access, fn actor ->
      id_in(Grant.scope_ids_giving(actor.area_grants, access))
    end)
  end

  @spec street(Actor.t() | nil, access()) :: Ash.Expr.t()
  def street(actor, access) do
    with_global(actor, access, fn actor ->
      unless_empty(
        Grant.scope_ids_giving(actor.area_grants, access),
        fn ids -> expr(exists(area_streets, area_id in ^ids)) end
      )
    end)
  end

  @spec user(Actor.t() | nil, access()) :: Ash.Expr.t()
  def user(nil, _access), do: false
  def user(%Actor{system?: true}, _access), do: true
  def user(%Actor{}, :export), do: false
  def user(%Actor{approved?: true}, :read), do: true
  def user(%Actor{manage_all_users?: true}, :edit), do: true

  def user(%Actor{} = actor, access),
    do: unless_empty(listed_user_uids(actor, access), fn uids -> expr(uid in ^uids) end)

  @doc """
  The uids of the users the actor holds a per-user grant on: users the
  actor manages, and itself while unapproved (read only).
  """
  @spec listed_user_uids(Actor.t(), :read | :edit) :: [String.t()]
  def listed_user_uids(%Actor{approved?: false, uid: uid} = actor, :read) when is_binary(uid),
    do: [uid | actor.managed_user_uids]

  def listed_user_uids(%Actor{} = actor, _access), do: actor.managed_user_uids

  @spec meeting(Actor.t() | nil, meeting_access()) :: Ash.Expr.t()
  defdelegate meeting(actor, kind), to: ChurchAdmin.Authz.Scope.Meeting

  @spec history_record(Actor.t() | nil, :read | :edit) :: Ash.Expr.t()
  defdelegate history_record(actor, access), to: ChurchAdmin.Authz.Scope.HistoryRecord

  @spec contact(Actor.t() | nil, :read) :: Ash.Expr.t()
  defdelegate contact(actor, access), to: ChurchAdmin.Authz.Scope.Contact

  @spec resolved_contact(Actor.t() | nil, :read) :: Ash.Expr.t()
  defdelegate resolved_contact(actor, access), to: ChurchAdmin.Authz.Scope.Contact

  @doc "Whether the actor may export every one of `ids` of `entity`."
  @spec exportable?(Actor.t() | nil, entity(), [String.t()]) :: boolean()
  def exportable?(actor, entity, ids) do
    ids = Enum.uniq(ids)

    ids == [] or exports_everything?(actor) or every_id_in_export_scope?(actor, entity, ids)
  end

  defp exports_everything?(nil), do: false
  defp exports_everything?(%Actor{system?: true}), do: true
  defp exports_everything?(%Actor{} = actor), do: global?(actor, :export)

  defp every_id_in_export_scope?(actor, entity, ids) do
    scope = for_entity(entity, actor, :export)

    entity
    |> resource()
    |> Ash.Query.do_filter(expr(id in ^ids and ^scope))
    |> Ash.count!(authorize?: false) == length(ids)
  end

  @doc "Whether the actor holds the global grant for `access`."
  @spec global?(Actor.t(), access()) :: boolean()
  def global?(%Actor{} = actor, :read), do: actor.read_all?
  def global?(%Actor{} = actor, :edit), do: actor.write_all?
  def global?(%Actor{} = actor, :export), do: actor.export_all?

  defp with_global(nil, _access, _scoped), do: false
  defp with_global(%Actor{system?: true}, _access, _scoped), do: true

  defp with_global(%Actor{} = actor, access, scoped) do
    if global?(actor, access), do: true, else: scoped.(actor)
  end

  defp grants_reaching_families(grants, :read), do: grants

  defp grants_reaching_families(grants, :edit),
    do: Enum.filter(grants, & &1.write_related_families?)

  defp grants_reaching_families(_grants, :export), do: []

  defp id_in(ids), do: unless_empty(ids, fn ids -> expr(id in ^ids) end)

  defp uid_in(uids), do: unless_empty(uids, fn uids -> expr(not is_nil(uid) and uid in ^uids) end)

  defp addressed_in_areas(area_ids),
    do: unless_empty(area_ids, fn ids -> expr(exists(address, area_id in ^ids)) end)

  defp own_person(%Actor{uid: uid}, :read) when is_binary(uid),
    do: expr(not is_nil(uid) and uid == ^uid)

  defp own_person(%Actor{approved?: true, uid: uid}, :edit) when is_binary(uid),
    do: expr(not is_nil(uid) and uid == ^uid)

  defp own_person(_actor, _access), do: false

  defp own_family(%Actor{family_id: family_id}, :read) when is_binary(family_id),
    do: expr(id == ^family_id)

  defp own_family(_actor, _access), do: false

  defp persons_in_services(grants) do
    per_service_grant(
      grants,
      fn ids -> expr(exists(service_memberships, service_id in ^ids)) end,
      &person_in_restricted_service/1
    )
  end

  defp person_in_restricted_service(%Grant{} = grant) do
    all_of([
      expr(exists(service_memberships, service_id == ^grant.scope_id)),
      if(is_nil(grant.gender), do: true, else: expr(gender == ^grant.gender)),
      if(is_nil(grant.study_year),
        do: true,
        else: expr(not is_nil(study_year_id) and study_year_id == ^grant.study_year)
      )
    ])
  end

  defp persons_in_areas(area_ids) do
    unless_empty(area_ids, fn ids ->
      expr(exists(address, area_id in ^ids) or exists(store_address, area_id in ^ids))
    end)
  end

  defp live_persons_in_areas(area_ids) do
    area_ids
    |> persons_in_areas()
    |> when_present(fn in_areas -> expr(is_nil(deleted_at) and ^in_areas) end)
  end

  defp members_of_related_families(actor) do
    any_of([
      actor.service_grants
      |> Enum.filter(& &1.write_related_families?)
      |> persons_in_services(),
      unless_empty(
        for(grant <- actor.group_grants, grant.write_related_families?, do: grant.scope_id),
        fn ids -> expr(exists(group_memberships, group_id in ^ids)) end
      )
    ])
    |> when_present(fn member -> expr(exists(family_members, is_nil(deleted_at) and ^member)) end)
  end

  defp class_of_restricted_grant(%Grant{} = grant, access) do
    all_of([
      ClassCoverage.covers_class(
        %{service: grant.scope_id, study_year: grant.study_year, gender: grant.gender},
        ClassCoverage.class_row()
      ),
      if(access == :read, do: true, else: grant_covers_class(grant))
    ])
  end

  defp grant_covers_class(%Grant{} = grant) do
    all_of([
      if(is_nil(grant.gender),
        do: true,
        else: expr(not is_nil(service_gender) and service_gender == ^grant.gender)
      ),
      if(is_nil(grant.study_year),
        do: true,
        else:
          expr(
            service_study_year == ^grant.study_year and
              service_study_year_to == ^grant.study_year
          )
      )
    ])
  end

  defp classes_of_area_persons(area_ids) do
    area_ids
    |> live_persons_in_areas()
    |> when_present(fn in_areas ->
      expr(exists(persons_of_matching_year_and_gender, ^in_areas))
    end)
  end
end
