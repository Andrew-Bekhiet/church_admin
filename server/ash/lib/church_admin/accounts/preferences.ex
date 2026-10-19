defmodule ChurchAdmin.Accounts.Preferences do
  use Ash.Resource,
    domain: ChurchAdmin.Accounts,
    data_layer: AshPostgres.DataLayer,
    extensions: [AshGraphql.Resource]

  alias ChurchAdmin.Accounts.{HomeMode, User}
  alias ChurchAdmin.Types.Text

  graphql do
    type :user_preferences
  end

  postgres do
    table "users_preferences"
    repo ChurchAdmin.Repo
    migration_defaults created_at: ~S[fragment("now()")], updated_at: ~S[fragment("now()")]

    references do
      reference :last_home_mode_option, on_delete: :restrict, on_update: :update
      reference :user, on_delete: :delete, on_update: :update
    end
  end

  actions do
    defaults [:read]
  end

  attributes do
    attribute :uid, :uuid, primary_key?: true, allow_nil?: false, public?: true
    attribute :order_by_preferences, :map, allow_nil?: false, default: %{}, public?: true
    attribute :dark_theme, :boolean, public?: true
    attribute :great_feast_theme, :boolean, allow_nil?: false, default: true, public?: true
    attribute :last_home_mode, Text, public?: true

    attribute :created_at, AshPostgres.TimestamptzUsec,
      allow_nil?: false,
      default: &DateTime.utc_now/0

    attribute :updated_at, AshPostgres.TimestamptzUsec,
      allow_nil?: false,
      default: &DateTime.utc_now/0,
      public?: true

    attribute :second_line_preferences, :map, allow_nil?: false, default: %{}, public?: true
  end

  relationships do
    belongs_to :last_home_mode_option, HomeMode,
      source_attribute: :last_home_mode,
      destination_attribute: :name,
      define_attribute?: false

    belongs_to :user, User,
      source_attribute: :uid,
      destination_attribute: :uid,
      define_attribute?: false,
      public?: true
  end
end
