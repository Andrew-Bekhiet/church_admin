defmodule ChurchAdmin.Releases.LatestRelease do
  @moduledoc """
  The newest build of a platform in the release bucket: the object named
  `app-release-v{major}.{minor}.{patch}.{extension}` with the highest version
  (compared number by number), across all pages of the listing.
  """

  alias ChurchAdmin.Google.Storage
  alias ChurchAdmin.Google.Storage.Object
  alias ChurchAdmin.Releases.AppPlatform

  @prefix "app-release-v"

  @type version :: {non_neg_integer(), non_neg_integer(), non_neg_integer()}
  @type t :: %{version: String.t(), object: Object.t()}

  @spec find(String.t(), AppPlatform.t()) :: {:ok, t()} | :none | {:error, term()}
  def find(bucket, platform) do
    pattern = ~r/\A#{@prefix}(\d+)\.(\d+)\.(\d+)\.#{AppPlatform.extension(platform)}\z/

    case scan(bucket, pattern, nil, nil) do
      {:ok, nil} -> :none
      {:ok, {version, object}} -> {:ok, %{version: format(version), object: object}}
      {:error, _error} = failure -> failure
    end
  end

  defp scan(bucket, pattern, page_token, newest) do
    with {:ok, %{objects: objects, next_page_token: next_page_token}} <-
           Storage.list(bucket, @prefix, page_token: page_token) do
      newest = Enum.reduce(objects, newest, &newer(&1, &2, pattern))

      if next_page_token,
        do: scan(bucket, pattern, next_page_token, newest),
        else: {:ok, newest}
    end
  end

  defp newer(%Object{name: name} = object, newest, pattern) do
    case Regex.run(pattern, name, capture: :all_but_first) do
      nil -> newest
      numbers -> pick_newer(newest, {parse(numbers), object})
    end
  end

  defp pick_newer(nil, candidate), do: candidate

  defp pick_newer({version, _object} = newest, {candidate, _} = other),
    do: if(candidate > version, do: other, else: newest)

  defp parse(numbers), do: numbers |> Enum.map(&String.to_integer/1) |> List.to_tuple()

  defp format({major, minor, patch}), do: "#{major}.#{minor}.#{patch}"
end
