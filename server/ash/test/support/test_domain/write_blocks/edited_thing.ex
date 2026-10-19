defmodule ChurchAdmin.TestDomain.EditedThing do
  @moduledoc false

  use Ash.Resource,
    domain: ChurchAdmin.TestDomain,
    data_layer: AshPostgres.DataLayer

  alias ChurchAdmin.History.Changes.RecordEdit

  postgres do
    table "edited_things"
    repo ChurchAdmin.Repo
    migrate? false
  end

  actions do
    defaults [:read, create: [:name], update: [:name]]

    create :create_then_fail do
      accept [:name]

      change after_action(fn _changeset, _record, _context ->
               {:error, Ash.Error.Changes.InvalidChanges.exception(message: "later step failed")}
             end)
    end

    destroy :archive do
      soft? true
      change set_attribute(:deleted_at, &DateTime.utc_now/0)
    end

    destroy :hard_destroy
  end

  changes do
    change {RecordEdit, table: "edited_things"}, on: [:create, :update, :destroy]
  end

  attributes do
    uuid_primary_key :id
    attribute :name, :string, allow_nil?: false, public?: true
    attribute :deleted_at, :utc_datetime_usec
  end
end
