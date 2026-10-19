defmodule ChurchAdmin.DataQuality.DataCheck do
  use Ash.Resource,
    domain: ChurchAdmin.DataQuality,
    data_layer: AshPostgres.DataLayer,
    authorizers: [Ash.Policy.Authorizer],
    extensions: [AshGraphql.Resource]

  alias ChurchAdmin.Authz.Checks.{RelatedInScope, System}
  alias ChurchAdmin.People.Family

  graphql do
    type :data_check

    relationships [:family]

    queries do
      list :data_checks, :read
    end
  end

  postgres do
    migrate? false
    table "data_checks"
    repo ChurchAdmin.Repo
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
  end

  policies do
    bypass System do
      authorize_if always()
    end

    policy action_type(:read) do
      authorize_if {RelatedInScope, path: :family, entity: :family, access: :read}
    end
  end

  attributes do
    attribute :family_id, :uuid, primary_key?: true, allow_nil?: false, public?: true
    attribute :user_override, :boolean, public?: true
    attribute :family_check, :boolean, public?: true
    attribute :address_check, :boolean, public?: true
    attribute :completeness_percent, :integer, public?: true
    attribute :is_complete, :boolean, public?: true
    attribute :details, {:array, :map}, public?: true
  end

  relationships do
    belongs_to :family, Family, define_attribute?: false, public?: true
  end
end
