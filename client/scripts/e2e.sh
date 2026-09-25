#!/usr/bin/env bash
# Resets the hermetic backend and the app's state on a dedicated iOS simulator,
# then runs one Patrol test on it. The simulator is separate so wiping the app
# never touches the dev app's data, which shares the bundle id. It is reset
# without shutting down because Simulator.app aborts when a device it is
# showing gets erased.
# Usage: scripts/e2e.sh [patrol_test/<file>_test.dart]
set -euo pipefail

client_dir="$(cd "$(dirname "$0")/.." && pwd)"
test_file="${1:-patrol_test/user_invitation_journey_test.dart}"
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

xcrun simctl uninstall "$device" "$bundle_id"
xcrun simctl keychain "$device" reset

"$client_dir/../server/scripts/e2e-backend.sh" up

cd "$client_dir"
PATROL_FLUTTER_COMMAND="fvm flutter" "${PATROL:-$HOME/.pub-cache/bin/patrol}" test \
  -t "$test_file" -d "$device" --dart-define-from-file e2e.env
