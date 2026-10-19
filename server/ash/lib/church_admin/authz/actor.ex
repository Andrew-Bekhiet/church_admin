defmodule ChurchAdmin.Authz.Actor do
  @moduledoc """
  The Ash actor for every request, job and internal call. A request actor
  carries the verified `principal` and its `uid` (nil until onboarded) plus
  the authorization facts `ChurchAdmin.Authz.ActorLoader` reads for that uid;
  the system actor (`system/0`) stands for jobs and internal calls.

  The flags mirror the global rows of `auth.users_permissions_by_entity_id`
  and `auth.users_admin_on_meetings`: each one already includes approval and
  `readAllData` where the view required them. `permissions` holds the raw
  permission names, approved or not, for checks that read
  `auth.users_permissions` directly. Grants, `managed_user_uids` and
  `visible_servant_uids` are empty unless the user is approved; `family_id`
  is set only while the own person is live.
  """

  alias ChurchAdmin.Auth.Principal
  alias ChurchAdmin.Authz.Grant

  defstruct [
    :uid,
    :principal,
    :person_id,
    :family_id,
    system?: false,
    approved?: false,
    permissions: MapSet.new(),
    read_all?: false,
    write_all?: false,
    export_all?: false,
    manage_all_users?: false,
    record_all_attendance?: false,
    record_all_servants_attendance?: false,
    service_grants: [],
    group_grants: [],
    area_grants: [],
    managed_user_uids: [],
    visible_servant_uids: []
  ]

  @type t :: %__MODULE__{
          uid: String.t() | nil,
          principal: Principal.t() | nil,
          person_id: String.t() | nil,
          family_id: String.t() | nil,
          system?: boolean(),
          approved?: boolean(),
          permissions: MapSet.t(String.t()),
          read_all?: boolean(),
          write_all?: boolean(),
          export_all?: boolean(),
          manage_all_users?: boolean(),
          record_all_attendance?: boolean(),
          record_all_servants_attendance?: boolean(),
          service_grants: [Grant.t()],
          group_grants: [Grant.t()],
          area_grants: [Grant.t()],
          managed_user_uids: [String.t()],
          visible_servant_uids: [String.t()]
        }

  @spec system() :: t()
  def system, do: %__MODULE__{system?: true}

  @spec for_principal(Principal.t()) :: t()
  def for_principal(%Principal{} = principal),
    do: %__MODULE__{uid: principal.uid, principal: principal}

  @spec holds?(t() | nil, String.t()) :: boolean()
  def holds?(%__MODULE__{permissions: permissions}, permission),
    do: MapSet.member?(permissions, permission)

  def holds?(nil, _permission), do: false
end
