defmodule ChurchAdmin.Domain do
  @moduledoc """
  The base of every church_admin domain: `use ChurchAdmin.Domain` in place of
  `use Ash.Domain` (same options). It adds AshGraphql with root-level errors
  and `ChurchAdmin.Errors.GraphqlErrorHandler`, so every GraphQL error carries
  `extensions.code`. Raised errors are shown too, so a raised
  `ChurchAdmin.Errors.DomainError` keeps its code; `ChurchAdmin.Errors.ClassCodes`
  keeps the details of unknown ones in the log. `ChurchAdmin.DomainTest` fails
  for a configured domain that is not built on it.
  """

  defmacro __using__(opts) do
    fragments = [ChurchAdmin.Domain.GraphqlErrors | Keyword.get(opts, :fragments, [])]
    opts = Keyword.merge(opts, otp_app: :church_admin, fragments: fragments)

    quote do
      use Ash.Domain, unquote(opts)
    end
  end
end

defmodule ChurchAdmin.Domain.GraphqlErrors do
  @moduledoc false
  use Spark.Dsl.Fragment, of: Ash.Domain, extensions: [AshGraphql.Domain]

  graphql do
    root_level_errors? true
    show_raised_errors? true
    error_handler {ChurchAdmin.Errors.GraphqlErrorHandler, :handle_error, []}
  end
end
