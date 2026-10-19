defmodule ChurchAdmin.Authz.Grant do
  @moduledoc """
  One `auth.users_admin_on` row of the actor, on a service, group or area
  (`scope_id`). `study_year` and `gender` restrict service grants only; nil
  means unrestricted. Every flag is a plain boolean (a NULL column is false).
  """

  defstruct [
    :id,
    :scope_id,
    :study_year,
    :gender,
    edit?: false,
    export?: false,
    manage_users?: false,
    write_related_families?: false,
    record_persons?: false,
    record_servants?: false
  ]

  @type t :: %__MODULE__{
          id: String.t(),
          scope_id: String.t(),
          study_year: integer() | nil,
          gender: boolean() | nil,
          edit?: boolean(),
          export?: boolean(),
          manage_users?: boolean(),
          write_related_families?: boolean(),
          record_persons?: boolean(),
          record_servants?: boolean()
        }

  @spec unrestricted?(t()) :: boolean()
  def unrestricted?(%__MODULE__{study_year: nil, gender: nil}), do: true
  def unrestricted?(%__MODULE__{}), do: false

  @doc "The grants that give `access`: every grant reads, `edit?` edits, `export?` exports."
  @spec giving([t()], :read | :edit | :export) :: [t()]
  def giving(grants, :read), do: grants
  def giving(grants, :edit), do: Enum.filter(grants, & &1.edit?)
  def giving(grants, :export), do: Enum.filter(grants, & &1.export?)

  @spec scope_ids([t()]) :: [String.t()]
  def scope_ids(grants), do: grants |> Enum.map(& &1.scope_id) |> Enum.uniq()

  @spec scope_ids_giving([t()], :read | :edit | :export) :: [String.t()]
  def scope_ids_giving(grants, access), do: grants |> giving(access) |> scope_ids()
end
