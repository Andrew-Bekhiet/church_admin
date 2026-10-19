defmodule ChurchAdmin.Places.Street do
  use Ash.Resource,
    domain: ChurchAdmin.Places,
    data_layer: AshPostgres.DataLayer,
    extensions: [AshGraphql.Resource, AshArchival.Resource],
    fragments: [
      ChurchAdmin.Authz.Fragments.ScopedEntity,
      ChurchAdmin.Archival.HideArchived,
      ChurchAdmin.Files.RecordsPhoto
    ]

  alias ChurchAdmin.Accounts.User
  alias ChurchAdmin.Activity.Changes.RecordLastVisit
  alias ChurchAdmin.Activity.{Edit, LatestEdit, LatestVisit, Visit}
  alias ChurchAdmin.Authz.Calculations.UserCanEdit
  alias ChurchAdmin.Authz.Checks.{HasPermission, System}
  alias ChurchAdmin.Changes.{InUseOnForeignKey, StampActor}
  alias ChurchAdmin.Errors.Codes
  alias ChurchAdmin.History.Changes.RecordEdit
  alias ChurchAdmin.Places.Calculations.{IntersectsGeography, NearGeography}
  alias ChurchAdmin.Places.Changes.{ApplyStreetAreas, SyncAreasStreets}
  alias ChurchAdmin.Places.Invariants
  alias ChurchAdmin.Places.{Address, Area, AreaStreet}
  alias ChurchAdmin.Types.{Geography, Text}
  alias ChurchAdmin.Validations.{InvariantHolds, ReferencesVisible}

  graphql do
    type :street

    relationships [
      :addresses,
      :area_streets,
      :areas,
      :latest_edit,
      :edits,
      :latest_visit,
      :visits
    ]

    queries do
      get :street, :read
      list :streets, :read
    end

    mutations do
      create :create_street, :create_street
      update :update_street, :update_street
      destroy :delete_street, :destroy
    end
  end

  postgres do
    table "streets"
    repo ChurchAdmin.Repo
    foreign_key_names [{:addresses, "addresses_streets_fk"}]
    migration_types line: :"geography(LineString,4326)", color: :bigint

    references do
      reference :deleted_by_user, on_delete: :restrict, on_update: :restrict
    end
  end

  archive do
    attribute :deleted_at
    base_filter?(true)
    exclude_destroy_actions([:hard_destroy])
  end

  actions do
    read :read do
      primary? true

      pagination keyset?: true,
                 countable: true,
                 required?: false,
                 default_limit: 100,
                 max_page_size: 1000
    end

    create :create_street do
      accept [:name, :line, :color]
      argument :areas, {:array, :uuid}
      argument :last_visit, :utc_datetime_usec

      validate {ReferencesVisible, argument: :areas, resource: Area}
      change {SyncAreasStreets, geography: :line}
      change ApplyStreetAreas

      change {InvariantHolds,
              code: Codes.street_area_required(),
              fields: [:areas],
              violations: &Invariants.street_without_area/1}

      change {RecordLastVisit, table: "streets"}
    end

    update :update_street do
      require_atomic? false
      accept [:name, :line, :color]
      argument :areas, {:array, :uuid}
      argument :last_visit, :utc_datetime_usec

      validate {ReferencesVisible, argument: :areas, resource: Area}
      change {SyncAreasStreets, geography: :line}
      change ApplyStreetAreas

      change {InvariantHolds,
              code: Codes.street_area_required(),
              fields: [:areas],
              violations: &Invariants.street_without_area/1},
             where: changing(:line)

      change {RecordLastVisit, table: "streets"}
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

  changes do
    change {RecordEdit, table: "streets"}, on: [:create, :update, :destroy]
    change {InUseOnForeignKey, code: Codes.street_in_use()}, on: [:destroy]
  end

  policies do
    bypass System do
      authorize_if always()
    end

    policy action_type(:read) do
      authorize_if actor_present()
    end

    policy action(:create_street) do
      authorize_if {HasPermission, name: "writeAllData"}
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

  attributes do
    attribute :id, :uuid,
      primary_key?: true,
      allow_nil?: false,
      default: &Ash.UUID.generate/0,
      public?: true

    attribute :name, Text, allow_nil?: false, public?: true
    attribute :line, Geography, public?: true
    attribute :color, :integer, public?: true
    attribute :photo_updated_at, AshPostgres.TimestamptzUsec, public?: true
    attribute :blurhash, Text, public?: true
    attribute :deleted_at, AshPostgres.TimestamptzUsec
    attribute :deleted_by, :uuid
  end

  relationships do
    belongs_to :deleted_by_user, User,
      source_attribute: :deleted_by,
      destination_attribute: :uid,
      define_attribute?: false

    has_many :addresses, Address, destination_attribute: :street_id, public?: true
    has_many :area_streets, AreaStreet, destination_attribute: :street_id, public?: true

    many_to_many :areas, Area,
      through: AreaStreet,
      source_attribute_on_join_resource: :street_id,
      destination_attribute_on_join_resource: :area_id,
      public?: true

    has_one :latest_edit, LatestEdit,
      destination_attribute: :record_id,
      filter: expr(table == "streets"),
      public?: true

    has_many :edits, Edit,
      destination_attribute: :record_id,
      filter: expr(table == "streets"),
      public?: true

    has_one :latest_visit, LatestVisit,
      destination_attribute: :record_id,
      filter: expr(table == "streets"),
      public?: true

    has_many :visits, Visit,
      destination_attribute: :record_id,
      filter: expr(table == "streets"),
      public?: true
  end

  calculations do
    calculate :user_can_edit, :boolean, {UserCanEdit, entity: :street},
      allow_nil?: false,
      public?: true

    calculate :within_polygon,
              :boolean,
              {IntersectsGeography, attribute: :line, argument: :polygon} do
      argument :polygon, Geography, allow_nil?: false
      public? true
    end

    calculate :within_distance, :boolean, {NearGeography, attribute: :line} do
      argument :from, Geography, allow_nil?: false
      argument :meters, :float, allow_nil?: false
      public? true
    end
  end

  aggregates do
    first :last_edit, :latest_edit, :time, public?: true
    first :last_visit, :latest_visit, :time, public?: true
  end
end
