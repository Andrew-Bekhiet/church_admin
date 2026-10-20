defmodule ChurchAdmin.DataQuality.Override do
  use Ash.Resource,
    domain: ChurchAdmin.DataQuality,
    data_layer: AshPostgres.DataLayer,
    authorizers: [Ash.Policy.Authorizer],
    extensions: [AshGraphql.Resource]

  alias ChurchAdmin.Accounts.User
  alias ChurchAdmin.Authz.Checks.{RelatedInScope, System}
  alias ChurchAdmin.Changes.StampActor
  alias ChurchAdmin.DataQuality.Checks.EditablePersonInFamily
  alias ChurchAdmin.People.Family
  alias ChurchAdmin.Validations.ReferencesVisible

  graphql do
    type :data_check_override

    relationships [:family]

    queries do
      list :data_check_overrides, :read
    end

    mutations do
      create :override_data_check, :override_data_check
      destroy :clear_data_check_override, :clear_data_check_override
    end
  end

  postgres do
    table "data_check_overrides"
    repo ChurchAdmin.Repo

    references do
      reference :family, on_delete: :delete, on_update: :update
      reference :updated_by_user, on_delete: :nilify, on_update: :update
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

    create :override_data_check do
      description "Sets whether the family's data is complete, whatever the automatic check says."
      accept [:family_id, :is_complete]
      upsert? true
      upsert_fields [:is_complete, :updated_by]

      validate {ReferencesVisible, attribute: :family_id, resource: Family}

      change {StampActor, attribute: :updated_by}
    end

    destroy :clear_data_check_override do
      description "Gives the family's data check back to the automatic result."
    end
  end

  policies do
    bypass System do
      authorize_if always()
    end

    policy action_type(:read) do
      authorize_if {RelatedInScope, path: :family, entity: :family, access: :read}
    end

    policy action_type([:create, :destroy]) do
      authorize_if {RelatedInScope, path: :family, entity: :family, access: :edit}
      authorize_if EditablePersonInFamily
    end
  end

  attributes do
    attribute :family_id, :uuid, primary_key?: true, allow_nil?: false, public?: true
    attribute :is_complete, :boolean, allow_nil?: false, public?: true
    attribute :updated_by, :uuid, public?: true
  end

  relationships do
    belongs_to :family, Family, define_attribute?: false, public?: true

    belongs_to :updated_by_user, User,
      source_attribute: :updated_by,
      destination_attribute: :uid,
      define_attribute?: false
  end
end
