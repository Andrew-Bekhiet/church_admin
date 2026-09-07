#!/bin/sh

set -eu

cd /srv/firebase/functions

if [ ! -x node_modules/.bin/tsc ]; then
    npm ci
fi

npm run build

cd /srv/firebase

exec firebase emulators:start \
    --project "${FIREBASE_PROJECT_ID:-demo-church-admin}" \
    --only auth,functions,database,storage,pubsub
