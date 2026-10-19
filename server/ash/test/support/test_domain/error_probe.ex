defmodule ChurchAdmin.TestDomain.ErrorProbe do
  @moduledoc false

  use Ash.Resource,
    domain: ChurchAdmin.TestDomain,
    data_layer: Ash.DataLayer.Ets,
    authorizers: [Ash.Policy.Authorizer],
    extensions: [AshGraphql.Resource]

  alias ChurchAdmin.Errors.DomainError

  graphql do
    type :error_probe

    queries do
      get :error_probe, :read, allow_nil?: false
    end

    mutations do
      create :create_error_probe, :create
      create :create_forbidden_error_probe, :create_forbidden
      action :reject_with_domain_error, :reject_with_domain_error
      action :raise_domain_error, :raise_domain_error
      action :fail_inside_framework, :fail_inside_framework
    end
  end

  actions do
    defaults [:read]

    create :create do
      accept [:name]
    end

    create :create_forbidden do
      accept [:name]
    end

    action :reject_with_domain_error, :boolean do
      run fn _input, _context ->
        {:error,
         DomainError.exception(
           code: "user/email-taken",
           message: "the email is taken",
           fields: [:email]
         )}
      end
    end

    action :raise_domain_error, :boolean do
      run fn _input, _context ->
        raise DomainError, code: "user/email-taken", fields: [:email]
      end
    end

    action :fail_inside_framework, :boolean do
      run fn _input, _context ->
        {:error, Ash.Error.Framework.AssumptionFailed.exception(message: "internal detail")}
      end
    end
  end

  policies do
    policy action(:create_forbidden) do
      forbid_if always()
    end

    policy always() do
      authorize_if always()
    end
  end

  attributes do
    uuid_primary_key :id, public?: true
    attribute :name, :string, allow_nil?: false, public?: true, constraints: [min_length: 3]
  end
end
