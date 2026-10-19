defmodule ChurchAdmin.Activity.LatestEdit do
  use Ash.Resource,
    domain: ChurchAdmin.Activity,
    data_layer: AshPostgres.DataLayer,
    extensions: [AshGraphql.Resource]

  alias ChurchAdmin.Accounts.User
  alias ChurchAdmin.Types.Text

  graphql do
    type :latest_edit
  end

  postgres do
    migrate? false
    schema "history"
    table "latest_edits"
    repo ChurchAdmin.Repo
  end

  actions do
    defaults [:read]
  end

  attributes do
    attribute :table, Text, primary_key?: true, allow_nil?: false, public?: true
    attribute :record_id, :uuid, primary_key?: true, allow_nil?: false, public?: true
    attribute :time, AshPostgres.TimestamptzUsec, public?: true
    attribute :recorded_by, :uuid, public?: true
    attribute :user_role, Text
    attribute :audit_id, :uuid
  end

  relationships do
    belongs_to :user, User,
      source_attribute: :recorded_by,
      destination_attribute: :uid,
      define_attribute?: false,
      public?: true
  end
end
