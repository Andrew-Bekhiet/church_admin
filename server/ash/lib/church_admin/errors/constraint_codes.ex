defmodule ChurchAdmin.Errors.ConstraintCodes do
  @moduledoc """
  Gives a database constraint violation the client code for that constraint:
  the action fails with a `ChurchAdmin.Errors.DomainError` instead of Ash's
  generic invalid attribute. The constraint is matched by name, also when a
  child write of the action hit it.

      change {ConstraintCodes,
              codes: %{"users_data_email_key" => Codes.user_email_taken()}}

  A constraint Ash knows (an identity, a `check_constraints` entry, a
  reference) arrives as an invalid attribute; one hit by a trigger's write
  arrives only as the database error's text, matched on the quoted name.
  `translate/2` serves code that calls other actions itself.
  """

  use Ash.Resource.Change

  alias ChurchAdmin.Errors.DomainError

  @impl Ash.Resource.Change
  def init(opts) do
    case opts[:codes] do
      %{} = codes when map_size(codes) > 0 -> {:ok, opts}
      _ -> {:error, "give `codes`, a map of constraint names to error codes"}
    end
  end

  @impl Ash.Resource.Change
  def change(changeset, opts, _context) do
    Ash.Changeset.handle_errors(changeset, fn _changeset, error ->
      translate(error, opts[:codes])
    end)
  end

  @impl Ash.Resource.Change
  def atomic(changeset, opts, context), do: {:ok, change(changeset, opts, context)}

  @spec translate(term(), %{String.t() => String.t()}) :: term()
  def translate(%{errors: errors} = error, codes) when is_list(errors),
    do: %{error | errors: Enum.map(errors, &translate(&1, codes))}

  def translate(%Ash.Error.Changes.InvalidAttribute{} = error, codes) do
    case Map.fetch(codes, error.private_vars[:constraint]) do
      {:ok, code} -> DomainError.exception(code: code, fields: [error.field])
      :error -> error
    end
  end

  def translate(%Ash.Error.Unknown.UnknownError{error: message} = error, codes)
      when is_binary(message) do
    case Enum.find(codes, fn {constraint, _code} ->
           String.contains?(message, ~s("#{constraint}"))
         end) do
      {_constraint, code} -> DomainError.exception(code: code)
      nil -> error
    end
  end

  def translate(error, _codes), do: error
end
