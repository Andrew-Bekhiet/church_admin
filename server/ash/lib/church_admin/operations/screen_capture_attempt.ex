defmodule ChurchAdmin.Operations.ScreenCaptureAttempt do
  @moduledoc """
  One report from the app that its user took a screenshot or recorded the
  screen. Any signed-in user records their own; nobody reads them back, the
  holders of `screenCaptureNotifications` are told through
  `ChurchAdmin.Notifications.ScreenCaptureAlert`.
  """

  use Ash.Resource,
    domain: ChurchAdmin.Operations,
    data_layer: AshPostgres.DataLayer,
    authorizers: [Ash.Policy.Authorizer],
    extensions: [AshGraphql.Resource]

  alias ChurchAdmin.Accounts.User
  alias ChurchAdmin.Authz.Checks.System
  alias ChurchAdmin.Changes.StampActor
  alias ChurchAdmin.Operations.CaptureKind
  alias ChurchAdmin.Operations.Changes.EnqueueScreenCaptureAlert

  graphql do
    type :screen_capture_attempt

    mutations do
      create :record_screen_capture_attempt, :record_screen_capture_attempt
    end
  end

  postgres do
    schema "operations"
    table "screen_capture_attempts"
    repo ChurchAdmin.Repo
    migration_types id: :bigint
    migration_defaults recorded_at: ~S[fragment("now()")]

    references do
      reference :user, on_delete: :delete, on_update: :update
    end
  end

  actions do
    defaults [:read]

    create :record_screen_capture_attempt do
      description "Records that the acting user took a screenshot or recorded the screen and tells the holders of screenCaptureNotifications."
      accept [:capture_kind]

      change {StampActor, attribute: :uid}
      change EnqueueScreenCaptureAlert
    end
  end

  policies do
    bypass System do
      authorize_if always()
    end

    policy action(:record_screen_capture_attempt) do
      forbid_if expr(is_nil(^actor(:uid)))
      authorize_if expr(uid == ^actor(:uid))
    end
  end

  attributes do
    attribute :id, :integer,
      primary_key?: true,
      allow_nil?: false,
      generated?: true,
      writable?: false,
      public?: true

    attribute :uid, :uuid, allow_nil?: false, writable?: false
    attribute :capture_kind, CaptureKind, allow_nil?: false, public?: true

    attribute :recorded_at, AshPostgres.TimestamptzUsec,
      allow_nil?: false,
      default: &DateTime.utc_now/0,
      writable?: false,
      public?: true
  end

  relationships do
    belongs_to :user, User,
      source_attribute: :uid,
      destination_attribute: :uid,
      define_attribute?: false
  end
end
