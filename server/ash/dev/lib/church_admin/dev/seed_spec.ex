defmodule ChurchAdmin.Dev.SeedSpec do
  @moduledoc """
  Target sizes of each seed scale, and the totals the database holds once the
  services seed and the generated file are loaded.

  `generated_*` fields count rows the generator writes; the services seed adds
  `services_seed_counts/0` on top for the tables it also fills.
  """

  alias ChurchAdmin.Dev.SeedGenerator.UserMatrix

  @type scale :: :small | :medium

  @scales %{
    small: %{
      areas: 6,
      grid_columns: 3,
      streets: 40,
      districts: 6,
      families: 150,
      soft_deleted_families: 8,
      families_without_address: 5,
      stores: 10,
      address_only_stores: 5,
      persons: 500,
      soft_deleted_persons: 15,
      persons_outside_service_range: 5,
      generated_classes: 30,
      groups: 8,
      generated_meetings: 12,
      contacts: 700,
      user_target: 40,
      fcm_tokens_per_user: 1,
      attendance_weeks: 26,
      attendance_history: 6_000,
      visit_history: 400,
      call_history: 300,
      confession_history: 600,
      kodas_history: 800,
      explicit_edit_history: 2_000,
      data_check_overrides: 5,
      study_year_roll_seasons: [{2025, "succeeded"}]
    },
    medium: %{
      areas: 15,
      grid_columns: 5,
      streets: 150,
      districts: 12,
      families: 700,
      soft_deleted_families: 35,
      families_without_address: 20,
      stores: 40,
      address_only_stores: 20,
      persons: 2_500,
      soft_deleted_persons: 75,
      persons_outside_service_range: 25,
      generated_classes: 70,
      groups: 25,
      generated_meetings: 35,
      contacts: 3_500,
      user_target: 120,
      fcm_tokens_per_user: 2,
      attendance_weeks: 52,
      attendance_history: 60_000,
      visit_history: 3_000,
      call_history: 2_000,
      confession_history: 5_000,
      kodas_history: 7_000,
      explicit_edit_history: 20_000,
      data_check_overrides: 20,
      study_year_roll_seasons: [{2024, "failed"}, {2025, "succeeded"}]
    }
  }

  @pending_users 3

  @services_seed_counts %{services: 7, classes: 30, meetings: 6}

  @spec scales() :: [scale()]
  def scales, do: Map.keys(@scales)

  @spec fetch!(scale()) :: map()
  def fetch!(scale), do: Map.fetch!(@scales, scale)

  @spec pending_users() :: pos_integer()
  def pending_users, do: @pending_users

  @spec services_seed_counts() :: %{atom() => non_neg_integer()}
  def services_seed_counts, do: @services_seed_counts

  @spec user_count(scale()) :: pos_integer()
  def user_count(scale) do
    matrix_users = length(UserMatrix.kinds()) + @pending_users
    max(fetch!(scale).user_target, matrix_users)
  end

  @spec live_families(scale()) :: pos_integer()
  def live_families(scale) do
    spec = fetch!(scale)
    spec.families - spec.soft_deleted_families
  end

  @spec data_check_failing_families(scale()) :: non_neg_integer()
  def data_check_failing_families(scale), do: div(live_families(scale), 10)

  @spec table_counts(scale()) :: %{String.t() => non_neg_integer()}
  def table_counts(scale) do
    spec = fetch!(scale)
    users = user_count(scale)

    %{
      "public.areas" => spec.areas,
      "public.streets" => spec.streets,
      "public.districts" => spec.districts,
      "public.families" => spec.families,
      "public.addresses" =>
        spec.families - spec.families_without_address + spec.address_only_stores,
      "public.stores" => spec.stores,
      "public.persons" => spec.persons,
      "public.services" => @services_seed_counts.services,
      "public.classes" => @services_seed_counts.classes + spec.generated_classes,
      "public.groups" => spec.groups,
      "history.meetings" => @services_seed_counts.meetings + spec.generated_meetings,
      "public.contacts" => spec.contacts,
      "auth.users_data" => users,
      "auth.invitations" => @pending_users,
      "public.users_preferences" => users,
      "public.users_fcm_tokens" => (users - @pending_users) * spec.fcm_tokens_per_user,
      "history.attendance_history" => spec.attendance_history,
      "history.visit_history" => spec.visit_history,
      "history.call_history" => spec.call_history,
      "history.confession_history" => spec.confession_history,
      "history.kodas_history" => spec.kodas_history,
      "public.data_check_overrides" => spec.data_check_overrides,
      "operations.study_year_roll_runs" => length(spec.study_year_roll_seasons)
    }
  end
end
