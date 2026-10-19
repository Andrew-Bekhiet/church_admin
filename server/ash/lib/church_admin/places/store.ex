defmodule ChurchAdmin.Places.Store do
  use Ash.Resource,
    domain: ChurchAdmin.Places,
    data_layer: AshPostgres.DataLayer,
    extensions: [AshGraphql.Resource]

  alias ChurchAdmin.Accounts.User
  alias ChurchAdmin.Activity.{Edit, LatestEdit, LatestVisit, Visit}
  alias ChurchAdmin.People.Family
  alias ChurchAdmin.Places.Address
  alias ChurchAdmin.Types.Text

  graphql do
    type :store
  end

  postgres do
    table "stores"
    repo ChurchAdmin.Repo
    migration_types color: :bigint

    references do
      reference :admin_family, on_delete: :nilify, on_update: :restrict
      reference :deleted_by_user, on_delete: :restrict, on_update: :restrict
    end
  end

  actions do
    defaults [:read]
  end

  attributes do
    attribute :id, :uuid,
      primary_key?: true,
      allow_nil?: false,
      default: &Ash.UUID.generate/0,
      public?: true

    attribute :name, Text, allow_nil?: false, public?: true
    attribute :admin_family_id, :uuid, source: :admin_family, public?: true
    attribute :color, :integer, public?: true
    attribute :photo_updated_at, AshPostgres.TimestamptzUsec, public?: true
    attribute :blurhash, Text, public?: true
    attribute :deleted_at, AshPostgres.TimestamptzUsec
    attribute :deleted_by, :uuid
  end

  relationships do
    belongs_to :admin_family, Family, define_attribute?: false, public?: true

    belongs_to :deleted_by_user, User,
      source_attribute: :deleted_by,
      destination_attribute: :uid,
      define_attribute?: false

    has_one :address, Address, destination_attribute: :store_id, public?: true

    has_one :latest_edit, LatestEdit,
      destination_attribute: :record_id,
      filter: expr(table == "stores"),
      public?: true

    has_many :edits, Edit,
      destination_attribute: :record_id,
      filter: expr(table == "stores"),
      public?: true

    has_one :latest_visit, LatestVisit,
      destination_attribute: :record_id,
      filter: expr(table == "stores"),
      public?: true

    has_many :visits, Visit,
      destination_attribute: :record_id,
      filter: expr(table == "stores"),
      public?: true
  end
end
