defmodule ChurchAdmin.Attendance.Class do
  use Ash.Resource,
    authorizers: [Ash.Policy.Authorizer],
    domain: ChurchAdmin.Attendance,
    data_layer: AshPostgres.DataLayer,
    extensions: [AshGraphql.Resource]

  @moduledoc """
  Class resource maps to public.classes.
  """

  graphql do
    type :classes

    queries do
      list :classes, :read
      get :class, :read
    end

    mutations do
      create :create_class, :create
      update :update_class, :update
      destroy :destroy_class, :destroy
    end
  end

  postgres do
    repo ChurchAdmin.Repo
    table "classes"
    schema "public"

    custom_indexes do
      index [:deleted_at]
    end

    references do
      reference :service, on_update: :update, on_delete: :delete
      reference :study_year, on_update: :update, on_delete: :restrict
    end
  end

  actions do
    defaults [:read, :destroy, create: :*, update: :*]
  end

  attributes do
    uuid_v7_primary_key :id
    attribute :name, :string, allow_nil?: false, public?: true
    attribute :gender, :boolean, public?: true

    attribute :color, :color, public?: true
    attribute :photo_updated_at, :datetime, public?: true
    attribute :blurhash, :string, public?: true

    attribute :deleted_at, :datetime, public?: false
    attribute :deleted_by, :uuid_v7, public?: false
  end

  relationships do
    belongs_to :service, ChurchAdmin.Attendance.Service, public?: true

    belongs_to :study_year, ChurchAdmin.Person.StudyYear do
      source_attribute :study_year_id
      attribute_type :integer
    end
  end
end
