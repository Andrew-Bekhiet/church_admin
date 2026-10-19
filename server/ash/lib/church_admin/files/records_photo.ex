defmodule ChurchAdmin.Files.RecordsPhoto do
  @moduledoc """
  For a resource whose rows carry a photo (`photo_updated_at`, `blurhash`):
  the internal `:record_photo` update the photo pipeline calls as the system
  actor. No client action exposes it; policies leave it to the system bypass.
  """

  use Spark.Dsl.Fragment, of: Ash.Resource

  actions do
    update :record_photo do
      accept [:photo_updated_at, :blurhash]
      require_atomic? false
    end
  end
end
