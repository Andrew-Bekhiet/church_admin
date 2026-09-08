#!/bin/sh
set -eu

cd /srv/firebase/functions

[ -x node_modules/.bin/tsc ] || npm ci

npm run build
npm run build:watch &

cd ..

exec firebase emulators:start \
  --project "${FIREBASE_PROJECT_ID:-demo-church-admin}" \
  --only auth,functions,database,storage,pubsub \
  --import=/srv/firebase/emulator-data \
  --export-on-exit=/srv/firebase/emulator-data
