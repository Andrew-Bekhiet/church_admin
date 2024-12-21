defmodule ChurchAdmin.Support do
  use Ash.Domain

  resources do
    resource ChurchAdmin.Support.Ticket
    resource ChurchAdmin.Support.Representative
  end
end
