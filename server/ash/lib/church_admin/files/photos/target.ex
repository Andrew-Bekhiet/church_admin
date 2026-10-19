defmodule ChurchAdmin.Files.Photos.Target do
  @moduledoc """
  The photo a request names, once it is allowed: the `subject` and `id` the
  client sent, and the row that stores the photo's fields (`resource`,
  `record_id`), which for a `:users` subject is the user's linked person. The
  object is `{table}/{record id}`, where existing objects already live.
  """

  @enforce_keys [:subject, :id, :resource, :record_id, :object]
  defstruct [:subject, :id, :resource, :record_id, :object]

  @type t :: %__MODULE__{
          subject: ChurchAdmin.Files.PhotoSubject.t(),
          id: String.t(),
          resource: module(),
          record_id: String.t(),
          object: String.t()
        }

  @spec new(atom(), String.t(), module(), String.t()) :: t()
  def new(subject, id, resource, record_id) do
    table = AshPostgres.DataLayer.Info.table(resource)

    %__MODULE__{
      subject: subject,
      id: id,
      resource: resource,
      record_id: record_id,
      object: "#{table}/#{record_id}"
    }
  end
end
