defmodule ChurchAdmin.DomainTest do
  use ExUnit.Case, async: true

  @shared_error_handler {ChurchAdmin.Errors.GraphqlErrorHandler, :handle_error, []}

  defp graphql_error_settings(domain) do
    {AshGraphql.Domain.Info.root_level_errors?(domain),
     AshGraphql.Domain.Info.error_handler(domain)}
  end

  test "use ChurchAdmin.Domain sets root-level errors and the shared error handler" do
    assert graphql_error_settings(ChurchAdmin.TestDomain) == {true, @shared_error_handler}
  end

  test "every configured domain is built on ChurchAdmin.Domain" do
    for domain <- Application.fetch_env!(:church_admin, :ash_domains) do
      assert AshGraphql.Domain in Spark.extensions(domain),
             "#{inspect(domain)} must `use ChurchAdmin.Domain`"

      assert graphql_error_settings(domain) == {true, @shared_error_handler},
             "#{inspect(domain)} must `use ChurchAdmin.Domain` without overriding its graphql error settings"
    end
  end
end
