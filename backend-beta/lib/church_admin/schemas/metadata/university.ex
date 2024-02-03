defmodule ChurchAdmin.Schemas.Metadata.University do
  alias ChurchAdmin.Schemas.Metadata
  import Metadata.Default

  metadata_schema "universities" do
    has_many :colleges, Metadata.College
  end
end
