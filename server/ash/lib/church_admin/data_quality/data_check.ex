defmodule ChurchAdmin.DataQuality.DataCheck do
  use Ash.Resource,
    domain: ChurchAdmin.DataQuality,
    data_layer: AshPostgres.DataLayer,
    extensions: [AshGraphql.Resource]

  alias ChurchAdmin.People.Family

  graphql do
    type :data_check
  end

  postgres do
    migrate? false
    table "data_checks"
    repo ChurchAdmin.Repo
  end

  actions do
    defaults [:read]
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
