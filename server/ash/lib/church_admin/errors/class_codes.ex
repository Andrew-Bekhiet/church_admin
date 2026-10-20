defmodule ChurchAdmin.Errors.ClassCodes do
  @moduledoc """
  Gives every Ash error that AshGraphql has no `AshGraphql.Error`
  implementation for a GraphQL error carrying its class's code: `forbidden`,
  `invalid`, or `something_went_wrong` (AshGraphql's own code for raised
  errors) for framework and unknown errors, whose details go to the log under
  an error id the client sees. Without it AshGraphql answers such errors with a
  code-less "something went wrong" that skips the domain error handler.
  """

  require Logger

  @error_apps [:ash, :ash_postgres, :ash_sql]

  @spec uncovered_error_modules() :: [module()]
  def uncovered_error_modules do
    covered = :ash_graphql |> app_modules() |> MapSet.new()

    @error_apps
    |> Enum.flat_map(&app_modules/1)
    |> Enum.filter(fn module ->
      splode_error_struct?(module) and
        not MapSet.member?(covered, Module.concat(AshGraphql.Error, module))
    end)
  end

  @spec to_error(Exception.t()) :: map()
  def to_error(%{class: :forbidden} = error), do: error_map(error, "forbidden", "forbidden")

  def to_error(%{class: :invalid} = error),
    do: error_map(error, "invalid", message_without_bread_crumbs(error))

  def to_error(error) do
    error_id = Ash.UUID.generate()
    Logger.error("#{error_id}: #{Exception.format(:error, error, stacktrace(error))}")
    error_map(error, "something_went_wrong", "Something went wrong. Error id: #{error_id}")
  end

  @spec message_without_bread_crumbs(Exception.t()) :: String.t()
  def message_without_bread_crumbs(error), do: Exception.message(%{error | bread_crumbs: []})

  defp error_map(error, code, message) do
    %{
      message: message,
      short_message: message,
      code: code,
      fields: fields(error),
      vars: if(code == "invalid", do: Map.new(error.vars), else: %{})
    }
  end

  defp stacktrace(%{stacktrace: %{stacktrace: stacktrace}}), do: stacktrace
  defp stacktrace(_error), do: []

  defp fields(%{fields: fields}) when is_list(fields), do: fields
  defp fields(%{field: field}) when field != nil, do: [field]
  defp fields(_error), do: []

  defp app_modules(app) do
    Application.load(app)
    Application.spec(app, :modules) || []
  end

  defp splode_error_struct?(module) do
    Code.ensure_loaded?(module) and function_exported?(module, :__struct__, 0) and
      function_exported?(module, :splode_error?, 0)
  end
end
