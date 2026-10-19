defmodule ChurchAdmin.Authz.Fragments.HistoryRecord do
  @moduledoc """
  For history rows that point at a record by (`table`, `record_id`): one
  private relationship per table the permission view names, which
  `ChurchAdmin.Authz.Scope.history_record/2` walks. Relationships, not
  unrelated `exists`, because AshSql gives an unrelated `exists` the source
  resource's schema (`history.persons`).
  """

  use Spark.Dsl.Fragment, of: Ash.Resource

  relationships do
    has_one :record_person, ChurchAdmin.People.Person,
      source_attribute: :record_id,
      destination_attribute: :id

    has_one :record_family, ChurchAdmin.People.Family,
      source_attribute: :record_id,
      destination_attribute: :id

    has_one :record_service, ChurchAdmin.Organization.Service,
      source_attribute: :record_id,
      destination_attribute: :id

    has_one :record_class, ChurchAdmin.Organization.Class,
      source_attribute: :record_id,
      destination_attribute: :id

    has_one :record_group, ChurchAdmin.Organization.Group,
      source_attribute: :record_id,
      destination_attribute: :id

    has_one :record_area, ChurchAdmin.Places.Area,
      source_attribute: :record_id,
      destination_attribute: :id

    has_one :record_street, ChurchAdmin.Places.Street,
      source_attribute: :record_id,
      destination_attribute: :id

    has_one :record_store, ChurchAdmin.Places.Store,
      source_attribute: :record_id,
      destination_attribute: :id
  end
end
