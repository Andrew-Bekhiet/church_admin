defmodule ChurchAdmin.Accounts.ScopeGrant do
  use Ash.Resource,
    domain: ChurchAdmin.Accounts,
    data_layer: AshPostgres.DataLayer,
    authorizers: [Ash.Policy.Authorizer],
    extensions: [AshGraphql.Resource]

  alias ChurchAdmin.Accounts.User
  alias ChurchAdmin.Authz.Checks.{RelatedInScope, System}
  alias ChurchAdmin.Catalog.StudyYear
  alias ChurchAdmin.Organization.{Group, Service}
  alias ChurchAdmin.Places.Area

  @scope_fields ChurchAdmin.Accounts.AdminOn.field_names()

  graphql do
    type :scope_grant

    relationships [:user]

    queries do
      get :scope_grant, :read
      list :scope_grants, :read
    end
  end

  postgres do
    schema "auth"
    table "users_admin_on"
    repo ChurchAdmin.Repo
    migration_types service_study_year: :integer

    identity_index_names unique_uid_admin_on_area: "users_admin_on_area",
                         unique_uid_admin_on_group: "users_admin_on_group",
                         unique_uid_admin_on_service_service_study_year_service_gender:
                           "users_admin_on_service"

    references do
      reference :area, on_delete: :delete, on_update: :restrict
      reference :group, on_delete: :delete, on_update: :restrict
      reference :service, on_delete: :delete, on_update: :restrict
      reference :user, on_delete: :delete, on_update: :restrict
      reference :study_year, ignore?: true
    end
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

    create :create do
      primary? true
      accept @scope_fields ++ [:uid]
      validate ChurchAdmin.Accounts.Validations.GranterCoversScope
    end

    destroy :destroy do
      primary? true
    end
  end

  policies do
    bypass System do
      authorize_if always()
    end

    policy action_type(:read) do
      authorize_if {RelatedInScope, path: :user, entity: :user, access: :read}
    end

    policy action_type([:create, :destroy]) do
      authorize_if {RelatedInScope, path: :user, entity: :user, access: :edit}
    end
  end

  attributes do
    attribute :permission_id, :uuid,
      primary_key?: true,
      allow_nil?: false,
      default: &Ash.UUID.generate/0,
      public?: true

    attribute :uid, :uuid, allow_nil?: false, public?: true
    attribute :admin_on_service, :uuid, public?: true
    attribute :service_gender, :boolean, public?: true
    attribute :service_study_year, :integer, public?: true
    attribute :service_allow_edit, :boolean, public?: true
    attribute :service_admin_on_users, :boolean, public?: true
    attribute :admin_on_group, :uuid, public?: true
    attribute :group_allow_edit, :boolean, public?: true
    attribute :group_admin_on_users, :boolean, public?: true
    attribute :admin_on_area, :uuid, public?: true
    attribute :area_allow_edit, :boolean, public?: true
    attribute :area_admin_on_users, :boolean, public?: true

    attribute :service_write_related_families, :boolean,
      allow_nil?: false,
      default: false,
      public?: true

    attribute :group_write_related_families, :boolean,
      allow_nil?: false,
      default: false,
      public?: true

    attribute :area_allow_export, :boolean, public?: true
    attribute :service_allow_export, :boolean, public?: true
    attribute :group_allow_export, :boolean, public?: true
    attribute :service_allow_record_attendance, :boolean, public?: true
    attribute :service_allow_record_servants_attendance, :boolean, public?: true
    attribute :group_allow_record_attendance, :boolean, public?: true
    attribute :group_allow_record_servants_attendance, :boolean, public?: true
  end

  relationships do
    belongs_to :area, Area,
      source_attribute: :admin_on_area,
      define_attribute?: false,
      public?: true

    belongs_to :group, Group,
      source_attribute: :admin_on_group,
      define_attribute?: false,
      public?: true

    belongs_to :service, Service,
      source_attribute: :admin_on_service,
      define_attribute?: false,
      public?: true

    belongs_to :user, User,
      source_attribute: :uid,
      destination_attribute: :uid,
      define_attribute?: false,
      public?: true

    belongs_to :study_year, StudyYear,
      source_attribute: :service_study_year,
      destination_attribute: :order,
      define_attribute?: false,
      public?: true
  end

  identities do
    identity :unique_uid_admin_on_area, [:uid, :admin_on_area]
    identity :unique_uid_admin_on_group, [:uid, :admin_on_group]

    identity :unique_uid_admin_on_service_service_study_year_service_gender, [
      :uid,
      :admin_on_service,
      :service_study_year,
      :service_gender
    ]
  end
end
