#!/usr/bin/env bash
set -euo pipefail

usage() {
  echo "Usage: GOOGLE_PLAY_ACCESS_TOKEN=<token> $0 [--validate-only] <package> <bundle.aab> <track>" >&2
  exit 2
}

validate_only=false
if [ "${1:-}" = --validate-only ]; then
  validate_only=true
  shift
fi
[ $# -eq 3 ] || usage

package_name=$1
bundle_path=$2
track=$3

: "${GOOGLE_PLAY_ACCESS_TOKEN:?GOOGLE_PLAY_ACCESS_TOKEN must be set}"
[ -f "$bundle_path" ] || { echo "Bundle not found: $bundle_path" >&2; exit 1; }

host=https://androidpublisher.googleapis.com
app_path=androidpublisher/v3/applications/$package_name

call_android_publisher() {
  curl --silent --show-error --fail-with-body --config - "$@" \
    <<<"header = \"Authorization: Bearer $GOOGLE_PLAY_ACCESS_TOKEN\""
}

edit_id=
committed=false

discard_edit_unless_committed() {
  if [ -n "$edit_id" ] && [ "$committed" = false ]; then
    echo "Discarding edit $edit_id" >&2
    call_android_publisher --request DELETE "$host/$app_path/edits/$edit_id" >/dev/null || true
  fi
}
trap discard_edit_unless_committed EXIT

echo "Creating edit for $package_name" >&2
edit_id=$(call_android_publisher --request POST --data '' "$host/$app_path/edits" | jq -er .id)

echo "Uploading $bundle_path" >&2
version_code=$(call_android_publisher --request POST \
  --header 'Content-Type: application/octet-stream' \
  --data-binary "@$bundle_path" \
  "$host/upload/$app_path/edits/$edit_id/bundles?uploadType=media" | jq -er .versionCode)

echo "Releasing version code $version_code to the $track track" >&2
call_android_publisher --request PUT \
  --header 'Content-Type: application/json' \
  --data "$(jq -n --arg track "$track" --arg versionCode "$version_code" \
    '{track: $track, releases: [{versionCodes: [$versionCode], status: "completed"}]}')" \
  "$host/$app_path/edits/$edit_id/tracks/$track" >/dev/null

echo "Validating edit $edit_id" >&2
call_android_publisher --request POST --data '' "$host/$app_path/edits/$edit_id:validate" >/dev/null

if [ "$validate_only" = true ]; then
  echo "Validation passed; nothing was published" >&2
  exit 0
fi

echo "Committing edit $edit_id" >&2
call_android_publisher --request POST --data '' "$host/$app_path/edits/$edit_id:commit" >/dev/null
committed=true
echo "Published version code $version_code to the $track track" >&2
