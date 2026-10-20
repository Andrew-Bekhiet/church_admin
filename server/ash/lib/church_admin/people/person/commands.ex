defmodule ChurchAdmin.People.Person.Commands do
  @moduledoc """
  The person commands the client calls: `createPerson` and `updatePerson`
  take the person's desired state (memberships, contacts, the family's
  unclaimed contacts and address, latest activity), `deletePerson` archives
  it, `recordPersonSpiritualDays` records a confession and a kodas day. The
  system actor alone hard-deletes.
  """

  use Spark.Dsl.Fragment, of: Ash.Resource, extensions: [Ash.Policy.Authorizer]

  alias ChurchAdmin.Activity.Changes.RecordLastVisit
  alias ChurchAdmin.Authz.Changes.RememberCreated
  alias ChurchAdmin.Authz.Checks.{ApprovedWithPermission, InScope, RelatedInScope}
  alias ChurchAdmin.Catalog.{Hobby, Tag}
  alias ChurchAdmin.Changes.StampActor
  alias ChurchAdmin.Errors.Codes
  alias ChurchAdmin.Organization.{Group, Service}
  alias ChurchAdmin.People.{ContactInput, Family, FamilyContactInput}
  alias ChurchAdmin.People.Person.{Changes, Invariants}
  alias ChurchAdmin.People.Person.Validations.CallerMayRelinkUser
  alias ChurchAdmin.Places.Changes.ApplyOwnerAddress
  alias ChurchAdmin.Places.Types.AddressInput
  alias ChurchAdmin.Types.Text
  alias ChurchAdmin.Validations.{InvariantHolds, ReferencesVisible}

  @accepted [
    :name,
    :birthdate,
    :gender,
    :is_shammas,
    :shammas_level_id,
    :school_id,
    :college_id,
    :church_id,
    :father_id,
    :is_student,
    :job_id,
    :job_description,
    :qualification_id,
    :martial_status,
    :person_type_id,
    :state_id,
    :is_servant,
    :serving_church_id,
    :service_type,
    :notes,
    :uid,
    :family_id,
    :store_id,
    :study_year_id,
    :color,
    :work_status
  ]

  actions do
    create :create_person do
      accept @accepted

      argument :services, {:array, :uuid}
      argument :groups, {:array, :uuid}
      argument :tags, {:array, :uuid}
      argument :hobbies, {:array, :uuid}
      argument :contacts, {:array, ContactInput}
      argument :family_contacts, {:array, FamilyContactInput}
      argument :address, AddressInput
      argument :new_family_name, Text
      argument :last_confession, :date
      argument :last_kodas, :date
      argument :last_call, :utc_datetime_usec
      argument :last_visit, :utc_datetime_usec

      validate {ReferencesVisible, attribute: :family_id, resource: Family}
      validate {ReferencesVisible, argument: :services, resource: Service}
      validate {ReferencesVisible, argument: :groups, resource: Group}
      validate {ReferencesVisible, argument: :tags, resource: Tag}
      validate {ReferencesVisible, argument: :hobbies, resource: Hobby}

      change {RememberCreated, kind: :person}
      change Changes.NormalizeEmployment
      change Changes.CreateImplicitFamily
      change Changes.ApplyMemberships
      change Changes.ApplyOwnContacts
      change Changes.ClaimFamilyContacts
      change Changes.ApplyFamilyContacts
      change {ApplyOwnerAddress, owner: :family_id, owner_id: :family_id}

      change {Changes.RecordActivity,
              confession: :last_confession, kodas: :last_kodas, call: :last_call}

      change {RecordLastVisit, table: "persons"}

      change {InvariantHolds,
              code: Codes.person_container_required(), violations: &Invariants.unanchored/1}
    end

    update :update_person do
      accept @accepted
      require_atomic? false

      argument :services, {:array, :uuid}
      argument :groups, {:array, :uuid}
      argument :tags, {:array, :uuid}
      argument :hobbies, {:array, :uuid}
      argument :contacts, {:array, ContactInput}
      argument :family_contacts, {:array, FamilyContactInput}
      argument :address, AddressInput
      argument :last_confession, :date
      argument :last_kodas, :date
      argument :last_call, :utc_datetime_usec
      argument :last_visit, :utc_datetime_usec

      validate {ReferencesVisible, attribute: :family_id, resource: Family},
        where: changing(:family_id)

      validate {ReferencesVisible, argument: :services, resource: Service}
      validate {ReferencesVisible, argument: :groups, resource: Group}
      validate {ReferencesVisible, argument: :tags, resource: Tag}
      validate {ReferencesVisible, argument: :hobbies, resource: Hobby}
      validate present(:family_id), where: present(:address)
      validate CallerMayRelinkUser, before_action?: true

      change Changes.NormalizeEmployment
      change Changes.ApplyMemberships
      change Changes.ApplyOwnContacts
      change Changes.ClaimFamilyContacts
      change Changes.ApplyFamilyContacts
      change {ApplyOwnerAddress, owner: :family_id, owner_id: :family_id}

      change {Changes.RecordActivity,
              confession: :last_confession, kodas: :last_kodas, call: :last_call}

      change {RecordLastVisit, table: "persons"}

      change {InvariantHolds,
              code: Codes.person_container_required(), violations: &Invariants.unanchored/1}
    end

    update :record_person_spiritual_days do
      accept []
      require_atomic? false

      argument :confession_day, :date, allow_nil?: false
      argument :kodas_day, :date, allow_nil?: false

      change {Changes.RecordActivity, confession: :confession_day, kodas: :kodas_day}
    end

    destroy :destroy do
      primary? true
      require_atomic? false
      change {StampActor, attribute: :deleted_by}
      change Changes.ClaimFamilyContacts
    end

    destroy :hard_destroy do
      require_atomic? false
    end
  end

  policies do
    policy action(:create_person) do
      authorize_if expr(is_nil(uid) or uid == ^actor(:uid))
    end

    policy action(:create_person) do
      authorize_if {InScope, access: :edit}
      authorize_if {RelatedInScope, path: :family, entity: :family, access: :edit}
    end

    policy action(:destroy) do
      authorize_if {ApprovedWithPermission, name: "deleteData"}
    end

    policy action(:destroy) do
      authorize_if {InScope, access: :edit}
    end

    policy action(:hard_destroy) do
      forbid_if always()
    end
  end
end
