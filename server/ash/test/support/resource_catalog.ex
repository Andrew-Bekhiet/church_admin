defmodule ChurchAdmin.ResourceCatalog do
  @moduledoc "Every Ash resource of the configured domains with the relation it maps to."

  def resources do
    :church_admin
    |> Application.fetch_env!(:ash_domains)
    |> Enum.flat_map(&Ash.Domain.Info.resources/1)
  end

  def relation(resource) do
    schema = AshPostgres.DataLayer.Info.schema(resource) || "public"
    {schema, AshPostgres.DataLayer.Info.table(resource)}
  end
end
