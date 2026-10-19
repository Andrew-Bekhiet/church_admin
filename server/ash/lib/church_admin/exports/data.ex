defmodule ChurchAdmin.Exports.Data do
  @moduledoc """
  Reads the rows of every sheet of a selection as the requesting user, so the
  read policies decide which rows and relationships they may see, and maps
  them to sheet rows. Rows are ordered by name.
  """

  require Ash.Query

  alias ChurchAdmin.Exports.{Filters, RowMappers, Selection}
  alias ChurchAdmin.People.ResolvedContact

  @address [address: [:area, :street, :district]]
  @latest_edit [latest_edit: :user]

  @tables %{
    "persons" => {
      ChurchAdmin.People.Person,
      RowMappers.Persons,
      [
        :church,
        :college,
        :contacts,
        :family,
        :father,
        :job,
        :person_type,
        :qualification,
        :school,
        :serving_church,
        :shammas_level,
        :state,
        :store,
        :study_year,
        :user,
        :services,
        :classes,
        :groups,
        :hobbies,
        :tags,
        latest_call: :user,
        latest_confession: :user,
        latest_kodas: :user,
        latest_visit: :user,
        latest_edit: :user
      ] ++ @address
    },
    "families" => {
      ChurchAdmin.People.Family,
      RowMappers.Families,
      [:church, :stores, latest_visit: :user, latest_father_visit: :user] ++
        @address ++ @latest_edit
    },
    "stores" => {
      ChurchAdmin.Places.Store,
      RowMappers.Stores,
      [:admin_family] ++ @address ++ @latest_edit
    },
    "streets" => {ChurchAdmin.Places.Street, RowMappers.Streets, [:areas] ++ @latest_edit},
    "areas" => {ChurchAdmin.Places.Area, RowMappers.Areas, []},
    "classes" => {
      ChurchAdmin.Organization.Class,
      RowMappers.Classes,
      [:study_year_from, :study_year_to, :service] ++ @latest_edit
    },
    "groups" => {ChurchAdmin.Organization.Group, RowMappers.Groups, [:service] ++ @latest_edit},
    "services" => {
      ChurchAdmin.Organization.Service,
      RowMappers.Services,
      [:study_year_from, :study_year_to, :next_service] ++ @latest_edit
    }
  }

  @spec fetch(ChurchAdmin.Authz.Actor.t() | nil, Selection.t()) ::
          {:ok, [{String.t(), [[{String.t(), term()}]]}]} | {:error, Ash.Error.t()}
  def fetch(actor, %Selection{} = selection) do
    selection
    |> Filters.for_tables()
    |> Enum.reduce_while({:ok, []}, fn {table, filter}, {:ok, tables} ->
      case read_table(actor, table, filter) do
        {:ok, rows} -> {:cont, {:ok, [{table, rows} | tables]}}
        {:error, error} -> {:halt, {:error, error}}
      end
    end)
    |> then(fn
      {:ok, tables} -> {:ok, Enum.reverse(tables)}
      {:error, error} -> {:error, error}
    end)
  end

  defp read_table(actor, table, filter) do
    {resource, mapper, loads} = Map.fetch!(@tables, table)

    resource
    |> Ash.Query.filter(^filter)
    |> Ash.Query.load(loads ++ extra_loads(table))
    |> Ash.read(actor: actor, page: false)
    |> case do
      {:ok, records} ->
        {:ok, records |> Enum.sort_by(&{&1.name, &1.id}) |> Enum.map(&mapper.map/1)}

      {:error, error} ->
        {:error, error}
    end
  end

  defp extra_loads("persons"), do: [family_contacts: family_administrators_contacts()]
  defp extra_loads(_table), do: []

  defp family_administrators_contacts do
    ResolvedContact
    |> Ash.Query.filter(person_type.is_family_admin == true)
    |> Ash.Query.load(:person_type)
  end
end
