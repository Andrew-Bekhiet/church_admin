defmodule ChurchAdmin.Errors.DomainError do
  @moduledoc """
  A business-rule rejection with a stable machine-readable `code` (for example
  `user/email-taken`), the input `fields` it concerns and message `vars`.
  Return it from an action (`{:error, DomainError.exception(code: ...)}`,
  `Ash.Changeset.add_error/2`) or raise it; GraphQL clients read the code from
  `errors[].extensions.code`.
  """

  use Splode.Error, fields: [:code, :message, fields: []], class: :invalid

  @impl true
  def message(%{message: message}) when is_binary(message), do: message
  def message(%{code: code}), do: code

  defimpl AshGraphql.Error do
    def to_error(error) do
      message = ChurchAdmin.Errors.ClassCodes.message_without_bread_crumbs(error)

      %{
        message: message,
        short_message: message,
        code: error.code,
        fields: List.wrap(error.fields),
        vars: Map.new(error.vars)
      }
    end
  end
end
