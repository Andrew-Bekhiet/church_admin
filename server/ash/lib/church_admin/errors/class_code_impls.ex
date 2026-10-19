for error_module <- ChurchAdmin.Errors.ClassCodes.uncovered_error_modules() do
  defimpl AshGraphql.Error, for: error_module do
    defdelegate to_error(error), to: ChurchAdmin.Errors.ClassCodes
  end
end
