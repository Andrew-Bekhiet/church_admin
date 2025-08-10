defmodule ChurchAdmin.Attendance.Service do
  use Ash.Resource,
    authorizers: [Ash.Policy.Authorizer],
    domain: ChurchAdmin.Attendance,
    data_layer: AshPostgres.DataLayer,
    extensions: [AshGraphql.Resource]

  @moduledoc """
  Service resource maps to public.services.
  """

  graphql do
    type :services

    queries do
      list :services, :read
      get :service, :read
    end

    mutations do
      create :create_service, :create
      update :update_service, :update
      destroy :destroy_service, :destroy
    end
  end

  postgres do
    repo ChurchAdmin.Repo
    table "services"
    schema "public"

    custom_indexes do
      index [:deleted_at]
    end

    references do
      reference :study_year_from, on_update: :update, on_delete: :restrict
      reference :study_year_to, on_update: :update, on_delete: :restrict
      reference :next_service, on_update: :update, on_delete: :nilify
    end

    check_constraints do
      check_constraint [:study_year_from_id, :study_year_to_id], "study_year_range",
        check:
          "((study_year_from_id IS NULL) AND (study_year_to_id IS NULL))" <>
            " OR " <>
            "((study_year_from_id IS NOT NULL) AND (study_year_to_id IS NOT NULL)" <>
            " AND (study_year_from_id <= study_year_to_id))",
        message: "study_year_from must be before or equal to study_year_to"
    end
  end

  actions do
    defaults [:read, :destroy, create: :*]

    update :update do
      accept :*
      require_atomic? false
    end
  end

  validations do
    validate &validate_study_year_range/2, always_atomic?: true
  end

  attributes do
    uuid_v7_primary_key :id

    attribute :name, :string, allow_nil?: false, public?: true
    attribute :notes, :string, public?: true

    # Explicit integer FKs to study years
    attribute :study_year_from_id, :integer, public?: true
    attribute :study_year_to_id, :integer, public?: true

    attribute :deleted_at, :datetime, public?: false
    attribute :deleted_by, :uuid_v7, public?: false
  end

  defp validate_study_year_range(changeset, _opts) do
    study_year_from_id = Ash.Changeset.get_attribute(changeset, :study_year_from_id)
    study_year_to_id = Ash.Changeset.get_attribute(changeset, :study_year_to_id)

    cond do
      is_nil(study_year_from_id) and is_nil(study_year_to_id) ->
        :ok

      not is_nil(study_year_from_id) and not is_nil(study_year_to_id) and
          study_year_from_id <= study_year_to_id ->
        :ok

      true ->
        {
          :error,
          [
            study_year_from_id: "must be before or equal to study_year_to_id",
            study_year_to_id: "must be after or equal to study_year_from_id"
          ]
        }
    end
  end

  relationships do
    belongs_to :study_year_from, ChurchAdmin.Person.StudyYear do
      source_attribute :study_year_from_id
      public? true
    end

    belongs_to :study_year_to, ChurchAdmin.Person.StudyYear do
      source_attribute :study_year_to_id
      public? true
    end

    belongs_to :next_service, ChurchAdmin.Attendance.Service, public?: true

    many_to_many :persons, ChurchAdmin.Person.Person do
      through ChurchAdmin.Attendance.PersonService
      source_attribute_on_join_resource :service_id
      destination_attribute_on_join_resource :person_id
      read_action :read
      public? true
    end
  end
end
