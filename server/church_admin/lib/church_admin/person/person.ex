defmodule ChurchAdmin.Person.Person do
  require Integer
  alias ChurchAdmin.Person
  alias ChurchAdmin.Attendance

  use Ash.Resource,
    domain: ChurchAdmin.Person,
    data_layer: AshPostgres.DataLayer,
    extensions: [AshGraphql.Resource]

  @moduledoc """
  Person resource maps to public.persons.
  """

  graphql do
    type :persons

    queries do
      list :persons, :read
      get :person, :read
    end

    mutations do
      create :create_person, :create
      update :update_person, :update
      destroy :destroy_person, :destroy
    end
  end

  postgres do
    repo ChurchAdmin.Repo
    table "persons"
    schema "public"

    custom_indexes do
      index [
              "replace(replace(replace(replace(replace(name, 'ى', 'ي'), 'أ', 'ا'), 'إ', 'ا'), 'آ', 'ا'), 'ة', 'ه')",
              :main_phone,
              :birthdate
            ],
            name: "idx_persons_clean_name_main_phone_birthdate",
            unique: true

      index ["get_birthday(birthdate)"], name: "idx_persons_birthdays"
      index [:deleted_at]
    end

    custom_statements do
      statement :get_birthday do
        up "CREATE OR REPLACE FUNCTION get_birthday(birthdate date) RETURNS text LANGUAGE sql IMMUTABLE AS $$
          SELECT extract(month from birthdate)::text || '-' || extract(day from birthdate)::text
        $$ ;"
        down "DROP FUNCTION IF EXISTS get_birthday(birthdate date);"
      end
    end

    references do
      reference :family, on_update: :update, on_delete: :delete
      reference :church, on_update: :update, on_delete: :restrict
      reference :serving_church, on_update: :update, on_delete: :restrict
      reference :father, on_update: :update, on_delete: :restrict
      reference :job, on_update: :update, on_delete: :restrict
      reference :qualification, on_update: :update, on_delete: :restrict
      reference :school, on_update: :update, on_delete: :restrict
      reference :college, on_update: :update, on_delete: :restrict
      reference :store, on_update: :update, on_delete: :delete
      reference :study_year, on_update: :update, on_delete: :restrict
      reference :person_type, on_update: :update, on_delete: :restrict
      reference :state, on_update: :update, on_delete: :restrict
      reference :shammas_level, on_update: :update, on_delete: :restrict
      reference :martial_status_record, on_update: :update, on_delete: :restrict
      reference :work_status_record, on_update: :update, on_delete: :restrict
    end
  end

  actions do
    defaults [:read, :create, :destroy]

    update :update do
      accept :*
      require_atomic? false
    end
  end

  validations do
    validate &validate_shammas_level/2, always_atomic?: true
    validate &validate_servant_props/2, always_atomic?: true
    validate &validate_national_id/2, always_atomic?: true
  end

  attributes do
    uuid_v7_primary_key :id

    attribute :name, :string, allow_nil?: false, public?: true
    attribute :main_phone, :string, public?: true
    attribute :other_phones, :map, allow_nil?: false, default: %{}, public?: true

    attribute :birthdate, :date, public?: true
    attribute :gender, :boolean, allow_nil?: false, default: true, public?: true
    attribute :is_shammas, :boolean, allow_nil?: false, default: false, public?: true
    attribute :is_servant, :boolean, allow_nil?: false, default: false, public?: true

    attribute :job_description, :string, public?: true

    attribute :notes, :string, public?: true

    attribute :uid, :uuid_v7, public?: true

    attribute :color, :color, public?: true
    attribute :photo_updated_at, :datetime, public?: true, writable?: false
    attribute :blurhash, :string, public?: true, writable?: false

    attribute :national_id, :integer, sensitive?: true, public?: false
    attribute :work_status, :string, public?: true
    attribute :martial_status, :string, allow_nil?: false, default: "single", public?: true
    attribute :service_type, :string, public?: true

    attribute :deleted_at, :datetime, public?: false
    attribute :deleted_by, :uuid_v7, public?: false
  end

  relationships do
    belongs_to :family, Person.Family, public?: true
    belongs_to :church, Person.Church, public?: true
    belongs_to :serving_church, Person.Church, public?: true
    belongs_to :father, Person.Father, public?: true
    belongs_to :job, Person.Job, public?: true
    belongs_to :qualification, Person.Qualification, public?: true
    belongs_to :school, Person.School, public?: true
    belongs_to :college, Person.College, public?: true
    belongs_to :store, ChurchAdmin.Geography.Store, public?: true

    belongs_to :study_year, Person.StudyYear do
      source_attribute :study_year_id
      attribute_type :integer
      public? true
    end

    belongs_to :person_type, Person.PersonType, public?: true
    belongs_to :state, Person.PersonState, public?: true
    belongs_to :shammas_level, Person.ShammasLevel, public?: true

    belongs_to :martial_status_record, Person.MartialStatus do
      define_attribute? false
      source_attribute :martial_status
      destination_attribute :name
      attribute_type :string
      allow_nil? false
      public? true
    end

    belongs_to :work_status_record, Person.WorkStatus do
      define_attribute? false
      source_attribute :work_status
      destination_attribute :name
      attribute_type :string
      public? true
    end

    many_to_many :services, Attendance.Service do
      through Attendance.PersonService
      source_attribute_on_join_resource :person_id
      destination_attribute_on_join_resource :service_id
      read_action :read
      public? true
    end

    many_to_many :groups, Attendance.Group do
      through Attendance.PersonGroup
      source_attribute_on_join_resource :person_id
      destination_attribute_on_join_resource :group_id
      read_action :read
      public? true
    end

    many_to_many :tags, Person.Tag do
      through Person.PersonTag
      source_attribute_on_join_resource :person_id
      destination_attribute_on_join_resource :tag_id
      read_action :read
      public? true
    end

    many_to_many :hobbies, Person.Hobby do
      through Person.PersonHobby
      source_attribute_on_join_resource :person_id
      destination_attribute_on_join_resource :hobby_id
      read_action :read
      public? true
    end

    # TODO: add User resource
    # belongs_to :deleted_by, Person.User, public?: true
    # belongs_to :uid, Person.User, public?: true
  end

  identities do
    identity :uid_unique, [:uid]
  end

  defp validate_shammas_level(changeset, _) do
    is_male = Ash.Changeset.get_attribute(changeset, :gender)
    is_shammas = Ash.Changeset.get_attribute(changeset, :is_shammas)
    shammas_level_id = Ash.Changeset.get_attribute(changeset, :shammas_level_id)

    cond do
      is_shammas and not is_male ->
        {
          :error,
          [gender: "must be true when is_shammas is true"]
        }

      is_shammas and is_nil(shammas_level_id) ->
        {
          :error,
          [shammas_level_id: "is required when is_shammas is true"]
        }

      not is_shammas and not is_nil(shammas_level_id) ->
        {
          :error,
          [shammas_level_id: "must be nil when is_shammas is false"]
        }

      true ->
        :ok
    end
  end

  defp validate_servant_props(changeset, _) do
    is_servant = Ash.Changeset.get_attribute(changeset, :is_servant)
    serving_church_id = Ash.Changeset.get_attribute(changeset, :serving_church_id)
    service_type = Ash.Changeset.get_attribute(changeset, :service_type)

    cond do
      not is_servant and (not is_nil(serving_church_id) or not is_nil(service_type)) ->
        {:error, "serving_church_id and service_type must be nil when is_servant is false"}

      true ->
        :ok
    end
  end

  defp validate_national_id(changeset, _opts) do
    national_id = Ash.Changeset.get_attribute(changeset, :national_id)
    birthdate = Ash.Changeset.get_attribute(changeset, :birthdate)
    gender = Ash.Changeset.get_attribute(changeset, :gender)

    cond do
      is_nil(national_id) ->
        :ok

      national_id < 20_000_000_000_000 or national_id > 99_999_999_999_999 ->
        {:error, [national_id: "must be a 14-digit number with first digit >= 2"]}

      true ->
        with [
               century_digit,
               year_0,
               year_1,
               month_0,
               month_1,
               day_0,
               day_1,
               _,
               _,
               _,
               _,
               _,
               gender_digit,
               _
             ] <- Integer.digits(national_id) do
          # Denotes the century of birth,
          # representing a span of one hundred years. Starting from 1900 to 1999 = C = 2 Starting from 2000 to 2099 = c = 3
          year = Integer.undigits([year_0, year_1])
          month = Integer.undigits([month_0, month_1])
          day = Integer.undigits([day_0, day_1])

          century =
            1700 + century_digit * 100

          nid_birthdate = Date.new(century + year, month, day)
          nid_gender = Integer.is_odd(gender_digit)

          cond do
            nid_birthdate != birthdate ->
              [:error, [:birthdate, "does not match national ID"]]

            nid_gender != gender ->
              [:error, [:gender, "does not match national ID"]]

            true ->
              :ok
          end
        end
    end
  end
end
