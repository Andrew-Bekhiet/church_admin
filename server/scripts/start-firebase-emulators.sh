#!/bin/sh
set -eu

cd /srv/firebase/functions

installed_lockfile=node_modules/.installed-package-lock.json

if ! cmp -s package-lock.json "$installed_lockfile"; then
  npm ci
  cp package-lock.json "$installed_lockfile"
fi

npm run build
npm run build:watch &

cd ..

data_dir="${FIREBASE_EMULATORS_DATA_DIR-/srv/firebase/emulator-data}"

if [ -n "$data_dir" ]; then
  set -- --import="$data_dir" --export-on-exit="$data_dir"
else
  set --
fi

exec firebase emulators:start \
  --project "${FIREBASE_PROJECT_ID:-demo-church-admin}" \
  --only auth,functions,database,storage,pubsub \
  "$@"
