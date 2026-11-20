#!/usr/bin/env bash
# Runs every journey in one Patrol invocation: one app build, one simulator
# reset and one backend start, instead of e2e.sh's per journey. E2eJourney.test
# restores the seeded database and auth accounts before each journey, but the
# app's state on the simulator (stored preferences, keychain) carries over, so
# a failure that e2e.sh does not reproduce leaked through that state; rerun
# that journey with scripts/e2e.sh.
# Usage: scripts/e2e_all.sh
set -euo pipefail

client_dir="$(cd "$(dirname "$0")/.." && pwd)"
device_name="${E2E_DEVICE_NAME:-church-admin-e2e}"
bundle_id="$(yq -r '.patrol.ios.bundle_id' "$client_dir/pubspec.yaml")"

device="$(xcrun simctl list devices available -j |
  jq -r --arg name "$device_name" '[.devices[][] | select(.name == $name)][0].udid // empty')"
[ -n "$device" ] || { echo "No $device_name simulator; run scripts/e2e.sh once to create it" >&2; exit 1; }

state="$(xcrun simctl list devices -j | jq -r --arg udid "$device" '.devices[][] | select(.udid == $udid) | .state')"
if [ "$state" != "Booted" ]; then
  xcrun simctl boot "$device"
  xcrun simctl bootstatus "$device" -b >/dev/null
fi

xcrun simctl uninstall "$device" "$bundle_id" || true
xcrun simctl keychain "$device" reset
"$client_dir/../server/scripts/e2e-backend.sh" up

cd "$client_dir"

targets=()
for journey in patrol_test/*_journey_test.dart; do
  targets+=(-t "$journey")
done

PATROL_FLUTTER_COMMAND="fvm flutter" "${PATROL:-$HOME/.pub-cache/bin/patrol}" test \
  "${targets[@]}" -d "$device" --dart-define-from-file e2e.env
