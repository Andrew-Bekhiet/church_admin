#!/bin/sh
set -eu

cd /srv/firebase

data_dir="${FIREBASE_EMULATORS_DATA_DIR-/srv/firebase/emulator-data}"

if [ -n "$data_dir" ]; then
  set -- --import="$data_dir" --export-on-exit="$data_dir"
else
  set --
fi

exec firebase emulators:start \
  --project "${FIREBASE_PROJECT_ID:-demo-church-admin}" \
  --only auth,database,storage \
  "$@"
