defmodule ChurchAdmin.Places.AreaStreet do
  use Ash.Resource,
    domain: ChurchAdmin.Places,
    data_layer: AshPostgres.DataLayer,
    authorizers: [Ash.Policy.Authorizer],
    extensions: [AshGraphql.Resource]

  alias ChurchAdmin.Authz.Checks.{Approved, RelatedInScope, System}
  alias ChurchAdmin.Places.{Area, Street}

  graphql do
    type :area_street

    relationships [:area, :street]

    queries do
      list :area_streets, :read
    end
  end

  postgres do
    table "areas_streets"
    repo ChurchAdmin.Repo

    references do
      reference :area, on_delete: :delete, on_update: :update, name: "areas_streets_areas_fk"
      reference :street, on_delete: :delete, on_update: :update, name: "areas_streets_streets_fk"
    end
  end

  actions do
    read :read do
      primary? true

      pagination keyset?: true,
                 countable: true,
                 required?: false,
                 default_limit: 100,
                 max_page_size: 100
    end

    create :create do
      public? false
      accept [:area_id, :street_id]
    end

    destroy :destroy do
      primary? true
      require_atomic? false
    end
  end

  policies do
    bypass System do
      authorize_if always()
    end

    policy action_type(:read) do
      authorize_if Approved
    end

    policy action_type([:create, :destroy]) do
      authorize_if {RelatedInScope, path: :area, entity: :area, access: :edit}
    end

    policy action_type([:create, :destroy]) do
      authorize_if {RelatedInScope, path: :street, entity: :street, access: :edit}
    end
  end

  attributes do
    attribute :area_id, :uuid, primary_key?: true, allow_nil?: false, public?: true
    attribute :street_id, :uuid, primary_key?: true, allow_nil?: false, public?: true
  end

  relationships do
    belongs_to :area, Area, define_attribute?: false, public?: true
    belongs_to :street, Street, define_attribute?: false, public?: true
  end
end
