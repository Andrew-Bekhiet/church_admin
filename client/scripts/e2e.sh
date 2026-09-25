#!/usr/bin/env bash
# Resets the hermetic backend and the app's state on a dedicated iOS simulator,
# then runs a Patrol test on it; with no argument, every journey runs in turn,
# each against a fresh backend. The simulator is separate so wiping the app
# never touches the dev app's data, which shares the bundle id. It is reset
# without shutting down because Simulator.app aborts when a device it is
# showing gets erased.
# Usage: scripts/e2e.sh [patrol_test/<file>_test.dart]
set -euo pipefail

client_dir="$(cd "$(dirname "$0")/.." && pwd)"
device_name="${E2E_DEVICE_NAME:-church-admin-e2e}"
bundle_id="$(yq -r '.patrol.ios.bundle_id' "$client_dir/pubspec.yaml")"

device="$(xcrun simctl list devices available -j |
  jq -r --arg name "$device_name" '[.devices[][] | select(.name == $name)][0].udid // empty')"

if [ -z "$device" ]; then
  runtime_json="$(xcrun simctl list runtimes available -j |
    jq -c '[.runtimes[] | select(.platform == "iOS")] | last')"
  runtime="$(jq -r '.identifier' <<<"$runtime_json")"
  device_type="$(jq -r '[.supportedDeviceTypes[] | select(.productFamily == "iPhone")] |
    sort_by(.minRuntimeVersion) | last | .identifier' <<<"$runtime_json")"
  device="$(xcrun simctl create "$device_name" "$device_type" "$runtime")"
fi

state="$(xcrun simctl list devices -j | jq -r --arg udid "$device" '.devices[][] | select(.udid == $udid) | .state')"
if [ "$state" != "Booted" ]; then
  xcrun simctl boot "$device"
  xcrun simctl bootstatus "$device" -b >/dev/null
fi

run_journey() {
  xcrun simctl uninstall "$device" "$bundle_id"
  xcrun simctl keychain "$device" reset

  "$client_dir/../server/scripts/e2e-backend.sh" up

  PATROL_FLUTTER_COMMAND="fvm flutter" "${PATROL:-$HOME/.pub-cache/bin/patrol}" test \
    -t "$1" -d "$device" --dart-define-from-file e2e.env
}

cd "$client_dir"

if [ $# -gt 0 ]; then
  run_journey "$1"
  exit
fi

for journey in patrol_test/*_journey_test.dart; do
  run_journey "$journey"
done
