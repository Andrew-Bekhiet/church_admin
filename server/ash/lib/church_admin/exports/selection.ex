defmodule ChurchAdmin.Exports.Selection do
  @moduledoc """
  What an export covers: the areas, services, classes and groups the user
  picked. A plain map of the four id lists travels in the download token.
  """

  defstruct areas_ids: [], services_ids: [], classes_ids: [], groups_ids: []

  @type t :: %__MODULE__{
          areas_ids: [String.t()],
          services_ids: [String.t()],
          classes_ids: [String.t()],
          groups_ids: [String.t()]
        }

  @spec new(map()) :: t()
  def new(ids) do
    %__MODULE__{
      areas_ids: unique_ids(ids, :areas_ids),
      services_ids: unique_ids(ids, :services_ids),
      classes_ids: unique_ids(ids, :classes_ids),
      groups_ids: unique_ids(ids, :groups_ids)
    }
  end

  @spec empty?(t()) :: boolean()
  def empty?(%__MODULE__{} = selection),
    do: Enum.all?(entity_ids(selection), fn {_entity, ids} -> ids == [] end)

  @doc "The selected ids per scope entity, for `ChurchAdmin.Authz.Scope.exportable?/3`."
  @spec entity_ids(t()) :: [{ChurchAdmin.Authz.Scope.entity(), [String.t()]}]
  def entity_ids(%__MODULE__{} = selection) do
    [
      area: selection.areas_ids,
      service: selection.services_ids,
      class: selection.classes_ids,
      group: selection.groups_ids
    ]
  end

  @spec to_params(t()) :: map()
  def to_params(%__MODULE__{} = selection), do: Map.from_struct(selection)

  defp unique_ids(ids, key), do: ids |> Map.get(key, []) |> Enum.uniq()
end
