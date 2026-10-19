defmodule ChurchAdmin.DataQuality.Override do
  use Ash.Resource,
    domain: ChurchAdmin.DataQuality,
    data_layer: AshPostgres.DataLayer,
    extensions: [AshGraphql.Resource]

  alias ChurchAdmin.Accounts.User
  alias ChurchAdmin.People.Family

  graphql do
    type :data_check_override
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
    defaults [:read]
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
