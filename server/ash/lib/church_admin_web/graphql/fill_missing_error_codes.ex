defmodule ChurchAdminWeb.Graphql.FillMissingErrorCodes do
  @moduledoc """
  Runs after the Result phase. A response without `data` failed before
  execution (parse or validation), so its code-less errors get
  `invalid_document`; any other code-less error gets `something_went_wrong`.
  """

  use Absinthe.Phase

  @impl true
  def run(%{result: %{errors: errors} = result} = blueprint, _options) do
    code = if Map.has_key?(result, :data), do: "something_went_wrong", else: "invalid_document"

    {:ok,
     %{blueprint | result: %{result | errors: Enum.map(errors, &put_code_if_missing(&1, code))}}}
  end

  def run(blueprint, _options), do: {:ok, blueprint}

  defp put_code_if_missing(error, code) do
    Map.update(error, :extensions, %{code: code}, &Map.put_new(&1, :code, code))
  end
end
