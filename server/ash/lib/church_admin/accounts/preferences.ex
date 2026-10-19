defmodule ChurchAdmin.Accounts.Preferences do
  use Ash.Resource,
    domain: ChurchAdmin.Accounts,
    data_layer: AshPostgres.DataLayer,
    authorizers: [Ash.Policy.Authorizer],
    extensions: [AshGraphql.Resource]

  alias ChurchAdmin.Accounts.{HomeMode, User}
  alias ChurchAdmin.Accounts.Changes.MergeJsonbPatch
  alias ChurchAdmin.Authz.Checks.System
  alias ChurchAdmin.Types.{JsonbMap, Text}

  graphql do
    type :user_preferences

    mutations do
      update :update_my_preferences, :update_my_preferences, identity: false, read_action: :mine
    end
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

    read :mine do
      description "The acting user's own row."
      get? true
      filter expr(uid == ^actor(:uid))
    end

    create :seed_defaults do
      description "A new user's preferences; the account commands call it."
      accept [:uid, :order_by_preferences]
      change set_attribute(:great_feast_theme, true)
    end

    update :update_my_preferences do
      description "Sets the scalar preferences given and merges the patches into the maps; a null patch value removes its key."
      accept [:dark_theme, :great_feast_theme, :last_home_mode]
      argument :order_by_preferences_patch, JsonbMap, constraints: [preserve_nil_values?: true]
      argument :second_line_preferences_patch, JsonbMap, constraints: [preserve_nil_values?: true]

      change {MergeJsonbPatch,
              attribute: :order_by_preferences, argument: :order_by_preferences_patch}

      change {MergeJsonbPatch,
              attribute: :second_line_preferences, argument: :second_line_preferences_patch}
    end
  end

  policies do
    bypass System do
      authorize_if always()
    end

    policy always() do
      authorize_if expr(uid == ^actor(:uid))
    end
  end

  attributes do
    attribute :uid, :uuid, primary_key?: true, allow_nil?: false, public?: true
    attribute :order_by_preferences, JsonbMap, allow_nil?: false, default: %{}, public?: true
    attribute :dark_theme, :boolean, public?: true
    attribute :great_feast_theme, :boolean, allow_nil?: false, default: true, public?: true
    attribute :last_home_mode, Text, public?: true

    attribute :created_at, AshPostgres.TimestamptzUsec,
      allow_nil?: false,
      default: &DateTime.utc_now/0

    update_timestamp :updated_at, type: AshPostgres.TimestamptzUsec, public?: true

    attribute :second_line_preferences, JsonbMap, allow_nil?: false, default: %{}, public?: true
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
