defmodule ChurchAdminWeb.Graphql.ErrorCodesTest do
  use ExUnit.Case, async: true

  import ExUnit.CaptureLog
  import Plug.Test

  @absinthe_opts Absinthe.Plug.init(
                   schema: ChurchAdmin.TestDomain.GraphqlSchema,
                   pipeline: {ChurchAdminWeb.Graphql.Pipeline, :pipeline}
                 )

  defp run_document(document) do
    conn =
      :post
      |> conn("/", %{"query" => document})
      |> Ash.PlugHelpers.set_actor(nil)
      |> AshGraphql.Plug.call(AshGraphql.Plug.init([]))
      |> Absinthe.Plug.call(@absinthe_opts)

    Jason.decode!(conn.resp_body)
  end

  defp first_error(document) do
    %{"errors" => [error | _]} = run_document(document)
    error
  end

  test "a domain error carries its code, fields and message under extensions" do
    error = first_error("mutation { rejectWithDomainError }")

    assert error["message"] == "the email is taken"
    assert error["extensions"]["code"] == "user/email-taken"
    assert error["extensions"]["fields"] == ["email"]
    refute Map.has_key?(error, "code")
  end

  test "a raised domain error keeps its code" do
    assert first_error("mutation { raiseDomainError }")["extensions"]["code"] ==
             "user/email-taken"
  end

  test "mutation errors are reported at the response root with Ash's own code" do
    response =
      run_document(~s|mutation { createErrorProbe(input: {name: "x"}) { result { id } } }|)

    assert [%{"extensions" => %{"code" => "invalid_attribute", "fields" => ["name"]}}] =
             response["errors"]
  end

  test "a policy rejection has code forbidden" do
    error =
      first_error(
        ~s|mutation { createForbiddenErrorProbe(input: {name: "xyz"}) { result { id } } }|
      )

    assert error["extensions"]["code"] == "forbidden"
  end

  test "a missing record has code not_found" do
    error = first_error(~s|{ errorProbe(id: "#{Ash.UUID.generate()}") { id } }|)

    assert error["extensions"]["code"] == "not_found"
  end

  test "a framework error without an AshGraphql code hides its detail behind something_went_wrong" do
    {error, log} = with_log(fn -> first_error("mutation { failInsideFramework }") end)

    assert error["extensions"]["code"] == "something_went_wrong"
    refute error["message"] =~ "internal detail"
    assert log =~ "internal detail"
  end

  test "a document that fails validation has code invalid_document" do
    assert first_error("{ noSuchField }")["extensions"]["code"] == "invalid_document"
  end
end
