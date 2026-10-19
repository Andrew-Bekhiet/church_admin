defmodule ChurchAdmin.Dev.SeedGenerator.Services do
  @moduledoc """
  The seven services of the services seed, by slug, with the study years each
  covers (`nil` for the unbounded ones).
  """

  alias ChurchAdmin.Dev.SeedGenerator.Ids

  @ranges %{
    edad_khodam: nil,
    gam3a: nil,
    gam3a_wa_khrigeen: nil,
    kg: {-4, 0},
    ebtedaey: {1, 6},
    e3dady: {7, 9},
    thanawy: {10, 12}
  }
  @bounded ~w(kg ebtedaey e3dady thanawy)a
  @with_default_meeting ~w(edad_khodam gam3a_wa_khrigeen kg e3dady thanawy ebtedaey)a

  @type t :: %{
          slug: atom(),
          id: String.t(),
          range: {integer(), integer()} | nil,
          default_meeting_id: String.t() | nil
        }

  @spec all() :: [t()]
  def all do
    for slug <- Ids.seed_services() do
      %{
        slug: slug,
        id: Ids.seed_service(slug),
        range: Map.fetch!(@ranges, slug),
        default_meeting_id: if(slug in @with_default_meeting, do: Ids.seed_meeting(slug))
      }
    end
  end

  @spec primary() :: t()
  def primary, do: fetch!(:ebtedaey)

  @spec fetch!(atom()) :: t()
  def fetch!(slug),
    do: Enum.find(all(), &(&1.slug == slug)) || raise(KeyError, key: slug, term: @ranges)

  @spec bounded() :: [t()]
  def bounded, do: Enum.map(@bounded, &fetch!/1)

  @spec containing_study_year(integer()) :: t() | nil
  def containing_study_year(study_year) do
    Enum.find(bounded(), fn %{range: {low, high}} -> study_year in low..high end)
  end

  @spec accepts?(t(), integer() | nil) :: boolean()
  def accepts?(%{range: nil}, _study_year), do: true
  def accepts?(_service, nil), do: true
  def accepts?(%{range: {low, high}}, study_year), do: study_year in low..high
end
