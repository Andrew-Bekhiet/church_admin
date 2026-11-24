#!/usr/bin/env bash
set -euo pipefail

readonly SERVICE_NAME=fingerprint-sync
readonly SERVICE_USER=fingerprint-sync
readonly INSTALL_FOLDER=/opt/fingerprint_sync
readonly INSTALLED_BINARY=$INSTALL_FOLDER/fingerprint-sync
readonly CONFIG_FILE=$INSTALL_FOLDER/config.json
readonly STATE_FOLDER=/var/lib/$SERVICE_NAME
readonly DEFAULT_CURSOR_FILE=$STATE_FOLDER/cursor.json
readonly UNIT_FILE=/etc/systemd/system/$SERVICE_NAME.service
readonly RELEASE_BINARY_NAME=fingerprint-sync-linux-x64
readonly BIOTIME_PASSWORD_CREDENTIAL=biotime-password
readonly SYNC_SECRET_CREDENTIAL=fingerprint-sync-secret
readonly DEFAULT_BIOTIME_URL=http://127.0.0.1:8090
readonly DEFAULT_POLL_INTERVAL_SECONDS=20
readonly OLDEST_SYSTEMD_WITH_CREDENTIALS=247
readonly OLDEST_SYSTEMD_WITH_ENCRYPTED_CREDENTIALS=250
readonly RUNTIME_CREDENTIALS_FOLDER=/run/credentials/$SERVICE_NAME.service
readonly ENCRYPTED_CREDENTIAL_STORE=/etc/credstore.encrypted
readonly PLAIN_CREDENTIAL_STORE=/etc/credstore
readonly CHECK_COMMAND="BIOTIME_PASSWORD_FILE=\"\$CREDENTIALS_DIRECTORY/$BIOTIME_PASSWORD_CREDENTIAL\" FINGERPRINT_SYNC_SECRET_FILE=\"\$CREDENTIALS_DIRECTORY/$SYNC_SECRET_CREDENTIAL\" exec $INSTALLED_BINARY check"

SCRIPT_FOLDER=$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)
readonly SCRIPT_FOLDER
readonly RELEASE_BINARY=$SCRIPT_FOLDER/$RELEASE_BINARY_NAME

biotime_url=""
biotime_username=""
function_url=""
poll_interval_seconds=""
cursor_file=""
biotime_password=""
sync_secret=""
must_write_config=true
must_store_secrets=true
credential_store=""
credential_directive=""

say() {
  printf '%s\n' "$@"
}

fail() {
  printf 'Error: %s\n' "$1" >&2
  shift
  if (($# > 0)); then
    printf '%s\n' "$@" >&2
  fi
  exit 1
}

fail_because_input_closed() {
  fail "Input ended before the setup finished." "Run the script from a terminal: sudo bash install.sh"
}

require_root() {
  if ((EUID != 0)); then
    fail "This installer must run as root." "Run: sudo bash install.sh"
  fi
}

installed_systemd_version() {
  local version
  read -r _ version _ < <(systemctl --version)
  printf '%s' "${version%%[!0-9]*}"
}

require_systemd_with_credentials() {
  if ! command -v systemctl >/dev/null || [[ ! -d /run/systemd/system ]]; then
    fail "This machine does not run systemd, so the poller cannot be installed as a service." \
      "This installer needs a Linux server that boots with systemd."
  fi
  local version
  version=$(installed_systemd_version)
  if ((version < OLDEST_SYSTEMD_WITH_CREDENTIALS)); then
    fail "systemd $version is too old: the service keeps its secrets in systemd credentials, which need systemd $OLDEST_SYSTEMD_WITH_CREDENTIALS or newer."
  fi
}

require_x86_64() {
  local -r architecture=$(uname -m)
  if [[ $architecture != x86_64 ]]; then
    fail "$RELEASE_BINARY_NAME runs on x86_64 machines only, and this one is $architecture."
  fi
}

refuse_symlink() {
  local -r path=$1
  if [[ -L $path ]]; then
    fail "$path is a symbolic link, so the installer will not write to it." \
      "Replace it with a regular file or folder, or remove it, and run the script again."
  fi
}

refuse_hard_linked_config() {
  if [[ -f $CONFIG_FILE ]] && (($(stat -c %h "$CONFIG_FILE") > 1)); then
    fail "$CONFIG_FILE has more than one hard link, so the installer will not write to it." \
      "Remove the other links, or replace it with a copy, and run the script again."
  fi
}

refuse_linked_install_paths() {
  refuse_symlink "$INSTALL_FOLDER"
  refuse_symlink "$CONFIG_FILE"
  refuse_symlink "$INSTALLED_BINARY"
  refuse_hard_linked_config
}

require_release_binary() {
  if [[ ! -f $RELEASE_BINARY ]]; then
    fail "$RELEASE_BINARY_NAME is missing from $SCRIPT_FOLDER." \
      "Download $RELEASE_BINARY_NAME from the same GitHub release as install.sh, put it next to install.sh, and run the script again."
  fi
}

confirm_yes_unless_no() {
  local answer
  while true; do
    read -r -p "$1 [Y/n] " answer || fail_because_input_closed
    case ${answer,,} in
      "" | y | yes) return 0 ;;
      n | no) return 1 ;;
    esac
    say "Answer y or n."
  done
}

ask() {
  local -r target_variable=$1 question=$2 default_answer=${3:-}
  local typed_answer suggestion=""
  if [[ -n $default_answer ]]; then
    suggestion=" [$default_answer]"
  fi
  read -r -p "$question$suggestion: " typed_answer || fail_because_input_closed
  printf -v "$target_variable" '%s' "${typed_answer:-$default_answer}"
}

ask_required() {
  local -r target_variable=$1
  while ask "$@" && [[ -z ${!target_variable} ]]; do
    say "A value is required."
  done
}

ask_url() {
  local -r target_variable=$1
  while ask_required "$@" && [[ ! ${!target_variable} =~ ^https?://[^[:space:]]+$ ]]; do
    say "Enter a URL that starts with http:// or https://"
  done
}

ask_poll_interval() {
  local -r target_variable=$1
  while ask_required "$@" && [[ ! ${!target_variable} =~ ^[1-9][0-9]*$ ]]; do
    say "Enter a whole number of seconds, 1 or more."
  done
}

ask_secret_twice() {
  local -r target_variable=$1 label=$2
  local first_entry second_entry
  while true; do
    IFS= read -rs -p "$label: " first_entry || fail_because_input_closed
    say ""
    if [[ -z $first_entry ]]; then
      say "A value is required."
      continue
    fi
    IFS= read -rs -p "$label again: " second_entry || fail_because_input_closed
    say ""
    if [[ $first_entry == "$second_entry" ]]; then
      break
    fi
    say "The two entries differ. Type it again."
  done
  printf -v "$target_variable" '%s' "$first_entry"
}

json_escape() {
  local value=$1 code hex control_character escaped_control_character
  local -r backslash="\\" quote='"'
  value=${value//"$backslash"/"$backslash$backslash"}
  value=${value//"$quote"/"$backslash$quote"}
  for code in {1..31}; do
    printf -v hex '%02x' "$code"
    printf -v control_character '%b' "\\x$hex"
    printf -v escaped_control_character '\\u%04x' "$code"
    value=${value//"$control_character"/"$escaped_control_character"}
  done
  printf '%s' "$value"
}

json_unescape() {
  local -r escaped=$1
  local unescaped="" character
  local -i position=0
  while ((position < ${#escaped})); do
    character=${escaped:position:1}
    if [[ $character != "\\" ]]; then
      unescaped+=$character
      position+=1
      continue
    fi
    character=${escaped:position+1:1}
    case $character in
      b) unescaped+=$'\b' ;;
      f) unescaped+=$'\f' ;;
      n) unescaped+=$'\n' ;;
      r) unescaped+=$'\r' ;;
      t) unescaped+=$'\t' ;;
      u)
        printf -v character '%b' "\\u${escaped:position+2:4}"
        unescaped+=$character
        position+=4
        ;;
      *) unescaped+=$character ;;
    esac
    position+=2
  done
  printf '%s' "$unescaped"
}

json_string_value() {
  local -r key=$1 json=$2
  local -r pattern='"'"$key"'"[[:space:]]*:[[:space:]]*"(([^"\\]|\\.)*)"'
  if [[ $json =~ $pattern ]]; then
    json_unescape "${BASH_REMATCH[1]}"
  fi
}

json_number_value() {
  local -r key=$1 json=$2
  local -r pattern='"'"$key"'"[[:space:]]*:[[:space:]]*([0-9.]+)'
  if [[ $json =~ $pattern ]]; then
    printf '%s' "${BASH_REMATCH[1]}"
  fi
}

read_settings_from() {
  local -r json=$(<"$1")
  biotime_url=$(json_string_value baseUrl "$json")
  biotime_username=$(json_string_value username "$json")
  function_url=$(json_string_value url "$json")
  poll_interval_seconds=$(json_number_value pollIntervalSeconds "$json")
  cursor_file=$(json_string_value cursorFile "$json")
}

show_current_settings() {
  say "" "Current settings in $CONFIG_FILE:"
  printf '  %-24s %s\n' \
    "BioTime URL:" "${biotime_url:-(not set)}" \
    "BioTime API username:" "${biotime_username:-(not set)}" \
    "Function URL:" "${function_url:-(not set)}" \
    "Poll interval (seconds):" "${poll_interval_seconds:-$DEFAULT_POLL_INTERVAL_SECONDS}" \
    "Cursor file:" "${cursor_file:-(not set)}"
}

ask_settings_unless_kept() {
  if [[ -f $CONFIG_FILE ]]; then
    read_settings_from "$CONFIG_FILE"
    show_current_settings
    if confirm_yes_unless_no "Keep these settings?"; then
      must_write_config=false
      return
    fi
  fi
  say "" "Settings (press Enter to accept the value in brackets):"
  ask_url biotime_url "BioTime URL" "${biotime_url:-$DEFAULT_BIOTIME_URL}"
  ask_required biotime_username "BioTime API username" "$biotime_username"
  ask_url function_url "recordFingerprintPunches function URL" "$function_url"
  ask_poll_interval poll_interval_seconds "Poll interval in seconds" \
    "${poll_interval_seconds:-$DEFAULT_POLL_INTERVAL_SECONDS}"
}

store_holds_both_secrets() {
  local -r store=$1
  [[ -f $store/$BIOTIME_PASSWORD_CREDENTIAL && -f $store/$SYNC_SECRET_CREDENTIAL ]]
}

use_credential_store() {
  credential_store=$1
  credential_directive=$2
}

supports_encrypted_credentials() {
  local version
  version=$(installed_systemd_version)
  command -v systemd-creds >/dev/null && ((version >= OLDEST_SYSTEMD_WITH_ENCRYPTED_CREDENTIALS))
}

cursor_path_resolved_from_install_folder() {
  if [[ $cursor_file == /* ]]; then
    realpath -ms -- "$cursor_file"
  else
    realpath -ms -- "$INSTALL_FOLDER/$cursor_file"
  fi
}

is_cursor_unset_or_inside_install_folder() {
  if [[ -z $cursor_file ]]; then
    return 0
  fi
  local resolved_cursor
  resolved_cursor=$(cursor_path_resolved_from_install_folder)
  [[ $resolved_cursor == "$INSTALL_FOLDER" || $resolved_cursor == "$INSTALL_FOLDER"/* ]]
}

move_cursor_to_state_folder_if_unset_or_inside_install_folder() {
  if ! is_cursor_unset_or_inside_install_folder; then
    return
  fi
  if [[ -n $cursor_file ]]; then
    say "" "The cursor moves from $cursor_file to $DEFAULT_CURSOR_FILE, because only root may write in $INSTALL_FOLDER now." \
      "The service continues from the time it restarts. To send punches from the minutes before that, see \"Send the punches between two times\" in the README."
  fi
  cursor_file=$DEFAULT_CURSOR_FILE
  must_write_config=true
}

choose_credential_store() {
  if store_holds_both_secrets "$ENCRYPTED_CREDENTIAL_STORE"; then
    use_credential_store "$ENCRYPTED_CREDENTIAL_STORE" LoadCredentialEncrypted
  elif store_holds_both_secrets "$PLAIN_CREDENTIAL_STORE"; then
    use_credential_store "$PLAIN_CREDENTIAL_STORE" LoadCredential
  elif supports_encrypted_credentials; then
    use_credential_store "$ENCRYPTED_CREDENTIAL_STORE" LoadCredentialEncrypted
  else
    use_credential_store "$PLAIN_CREDENTIAL_STORE" LoadCredential
  fi
}

ask_secrets_unless_kept() {
  say ""
  if store_holds_both_secrets "$credential_store" && confirm_yes_unless_no "Keep the stored BioTime password and sync secret?"; then
    must_store_secrets=false
    return
  fi
  say "Typing is hidden. Each value is asked twice to catch typos."
  ask_secret_twice biotime_password "BioTime API password"
  ask_secret_twice sync_secret "Sync secret (the FINGERPRINT_SYNC_SECRET function secret)"
}

create_service_user_if_missing() {
  if ! id -u "$SERVICE_USER" >/dev/null 2>&1; then
    useradd --system --no-create-home --shell /usr/sbin/nologin "$SERVICE_USER"
  fi
}

take_install_folder_for_root() {
  refuse_symlink "$INSTALL_FOLDER"
  mkdir -p "$INSTALL_FOLDER"
  chown root:root "$INSTALL_FOLDER"
  chmod 755 "$INSTALL_FOLDER"
  refuse_linked_install_paths
}

install_binary() {
  install -m 755 -o root -g root "$RELEASE_BINARY" "$INSTALLED_BINARY"
}

render_config() {
  local -r baseUrl=$1 username=$2 url=$3 pollIntervalSeconds=$4 cursorFile=$5
  cat <<EOF
{
  "biotime": {
    "baseUrl": "$(json_escape "$baseUrl")",
    "username": "$(json_escape "$username")"
  },
  "recordFingerprintPunches": {
    "url": "$(json_escape "$url")"
  },
  "cursorFile": "$(json_escape "$cursorFile")",
  "pollIntervalSeconds": $pollIntervalSeconds
}
EOF
}

write_config_unless_kept() {
  if [[ $must_write_config == true ]]; then
    render_config "$biotime_url" "$biotime_username" "$function_url" \
      "${poll_interval_seconds:-$DEFAULT_POLL_INTERVAL_SECONDS}" "$cursor_file" >"$CONFIG_FILE"
  fi
}

make_config_root_owned_and_readable() {
  chown root:root "$CONFIG_FILE"
  chmod 644 "$CONFIG_FILE"
}

store_credential() {
  local -r name=$1 value=$2
  local -r path=$credential_store/$name
  if [[ $credential_directive == LoadCredentialEncrypted ]]; then
    printf '%s' "$value" | systemd-creds encrypt --name="$name" - "$path"
  else
    install -m 600 -o root -g root /dev/null "$path"
    printf '%s' "$value" >"$path"
  fi
}

store_secrets_unless_kept() {
  if [[ $must_store_secrets == true ]]; then
    install -d -m 700 "$credential_store"
    store_credential "$BIOTIME_PASSWORD_CREDENTIAL" "$biotime_password"
    store_credential "$SYNC_SECRET_CREDENTIAL" "$sync_secret"
  fi
}

forget_typed_secrets() {
  biotime_password=""
  sync_secret=""
}

run_check_through_systemd() {
  systemd-run --pipe --wait --quiet --uid="$SERVICE_USER" \
    -p WorkingDirectory="$INSTALL_FOLDER" \
    -p "$credential_directive=$BIOTIME_PASSWORD_CREDENTIAL:$credential_store/$BIOTIME_PASSWORD_CREDENTIAL" \
    -p "$credential_directive=$SYNC_SECRET_CREDENTIAL:$credential_store/$SYNC_SECRET_CREDENTIAL" \
    /bin/sh -c "$CHECK_COMMAND"
}

check_biotime_and_function_access() {
  say "" "Checking that BioTime and the function accept these settings..."
  if ! run_check_through_systemd; then
    fail "The check failed, so $SERVICE_NAME was not started or restarted." \
      "$(service_state_after_failed_check)" \
      "Usually the BioTime URL, the function URL, the BioTime password or the sync secret is wrong." \
      "Run sudo bash install.sh again, and answer n to re-enter the settings or the secrets."
  fi
}

service_state_after_failed_check() {
  if [[ -f $UNIT_FILE ]]; then
    say "The service already installed keeps running with the settings it started with. It reads the new ones whenever it restarts, for example after a reboot."
  else
    say "The service is not installed yet."
  fi
}

render_unit() {
  cat <<EOF
[Unit]
Description=Fingerprint sync from BioTime to church_admin
After=network-online.target
Wants=network-online.target

[Service]
User=$SERVICE_USER
WorkingDirectory=$INSTALL_FOLDER
StateDirectory=$SERVICE_NAME
$credential_directive=$BIOTIME_PASSWORD_CREDENTIAL:$credential_store/$BIOTIME_PASSWORD_CREDENTIAL
$credential_directive=$SYNC_SECRET_CREDENTIAL:$credential_store/$SYNC_SECRET_CREDENTIAL
Environment=BIOTIME_PASSWORD_FILE=$RUNTIME_CREDENTIALS_FOLDER/$BIOTIME_PASSWORD_CREDENTIAL
Environment=FINGERPRINT_SYNC_SECRET_FILE=$RUNTIME_CREDENTIALS_FOLDER/$SYNC_SECRET_CREDENTIAL
ExecStart=$INSTALLED_BINARY
Restart=always
RestartSec=10

[Install]
WantedBy=multi-user.target
EOF
}

install_unit_and_restart_service() {
  render_unit >"$UNIT_FILE"
  systemctl daemon-reload
  systemctl enable "$SERVICE_NAME"
  systemctl restart "$SERVICE_NAME"
}

print_log_hint() {
  say "" "$SERVICE_NAME is running." "Follow its log with: journalctl -u $SERVICE_NAME -f"
}

main() {
  require_root
  require_systemd_with_credentials
  require_x86_64
  require_release_binary
  refuse_linked_install_paths
  ask_settings_unless_kept
  move_cursor_to_state_folder_if_unset_or_inside_install_folder
  choose_credential_store
  ask_secrets_unless_kept
  create_service_user_if_missing
  take_install_folder_for_root
  install_binary
  write_config_unless_kept
  make_config_root_owned_and_readable
  store_secrets_unless_kept
  forget_typed_secrets
  check_biotime_and_function_access
  install_unit_and_restart_service
  print_log_hint
}

if [[ ${BASH_SOURCE[0]} == "$0" ]]; then
  main "$@"
fi
