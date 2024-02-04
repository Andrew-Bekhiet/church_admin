defmodule ChurchAdminWeb.ErrorJSON do
  def render(_, %{message: message, details: details}) do
    %{
      errors: %{
        message: message,
        details: details
      }
    }
  end

  def render(_, %{message: message}) do
    render(nil, message)
  end

  def render(_, message) do
    %{errors: %{message: message}}
  end
end
