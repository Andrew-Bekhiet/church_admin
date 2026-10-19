defmodule ChurchAdmin.People.Family.Commands do
  @moduledoc """
  The family commands the client calls: `createFamily` and `updateFamily`
  take the family's desired state (address, unclaimed contacts, parent and
  child families, latest visit and father visit), `deleteFamily` archives
  it. The system actor alone hard-deletes.

  An update authorizes against the family as it was and rechecks the family
  before it writes the address, so an editor may move the family out of its
  own scope, as the old mutation allowed by updating the address last.
  """

  use Spark.Dsl.Fragment, of: Ash.Resource, extensions: [Ash.Policy.Authorizer]

  alias ChurchAdmin.Activity.Changes.RecordLastVisit
  alias ChurchAdmin.Authz.Changes.{RecheckAfterUpdate, RememberCreated}
  alias ChurchAdmin.Authz.Checks.{HasPermission, InScope}
  alias ChurchAdmin.Catalog.Church
  alias ChurchAdmin.Changes.StampActor
  alias ChurchAdmin.People.{Family, FamilyContactInput}
  alias ChurchAdmin.People.Family.Changes.{ApplyRelations, NormalizeWidowhood}
  alias ChurchAdmin.People.Person.Changes.ApplyFamilyContacts
  alias ChurchAdmin.Places.Changes.ApplyOwnerAddress
  alias ChurchAdmin.Places.Types.AddressInput
  alias ChurchAdmin.Validations.ReferencesVisible

  @accepted [:name, :status, :marriage_date, :deceased_spouse_name, :church_id, :notes, :color]

  actions do
    create :create_family do
      accept @accepted

      argument :address, AddressInput
      argument :contacts, {:array, FamilyContactInput}
      argument :parents, {:array, :uuid}
      argument :children, {:array, :uuid}
      argument :last_visit, :utc_datetime_usec
      argument :last_father_visit, :utc_datetime_usec

      validate {ReferencesVisible, attribute: :church_id, resource: Church}
      validate {ReferencesVisible, argument: :parents, resource: Family}
      validate {ReferencesVisible, argument: :children, resource: Family}

      change NormalizeWidowhood
      change {RememberCreated, kind: :family}
      change {ApplyOwnerAddress, owner: :family_id}
      change {ApplyFamilyContacts, argument: :contacts, family_id: :id}
      change ApplyRelations
      change {RecordLastVisit, table: "families"}

      change {RecordLastVisit,
              table: "families", argument: :last_father_visit, is_father_visit: true}
    end

    update :update_family do
      accept @accepted
      require_atomic? false

      argument :address, AddressInput
      argument :contacts, {:array, FamilyContactInput}
      argument :parents, {:array, :uuid}
      argument :children, {:array, :uuid}
      argument :last_visit, :utc_datetime_usec
      argument :last_father_visit, :utc_datetime_usec

      validate {ReferencesVisible, attribute: :church_id, resource: Church},
        where: changing(:church_id)

      validate {ReferencesVisible, argument: :parents, resource: Family}
      validate {ReferencesVisible, argument: :children, resource: Family}

      change NormalizeWidowhood
      change ApplyRelations
      change {ApplyFamilyContacts, argument: :contacts, family_id: :id}
      change {RecordLastVisit, table: "families"}

      change {RecordLastVisit,
              table: "families", argument: :last_father_visit, is_father_visit: true}

      change set_context(%{skip_scope_recheck?: true})
      change {RecheckAfterUpdate, skippable?: false}
      change {ApplyOwnerAddress, owner: :family_id}
    end

    destroy :destroy do
      primary? true
      require_atomic? false
      change {StampActor, attribute: :deleted_by}
    end

    destroy :hard_destroy do
      require_atomic? false
    end
  end

  policies do
    policy action(:create_family) do
      authorize_if {InScope, access: :edit}
    end

    policy action(:destroy) do
      authorize_if {HasPermission, name: "writeAllData"}
    end

    policy action(:destroy) do
      authorize_if {HasPermission, name: "deleteData"}
    end

    policy action(:hard_destroy) do
      forbid_if always()
    end
  end
end
