defmodule ChurchAdmin.Errors.GraphqlErrorHandler do
  @moduledoc """
  The AshGraphql `error_handler` of every domain (set by
  `ChurchAdmin.Domain`): fills message variables like AshGraphql's default
  handler and guarantees a `code`.
  """

  @spec handle_error(map(), map()) :: map()
  def handle_error(error, context) do
    error
    |> AshGraphql.DefaultErrorHandler.handle_error(context)
    |> Map.put_new(:code, "something_went_wrong")
  end
end
