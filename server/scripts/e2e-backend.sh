#!/usr/bin/env bash
# Hermetic backend for end-to-end runs: its own compose project, a fresh
# database, and a demo- Firebase project so the emulators can never reach real resources.
set -euo pipefail

server_dir="$(cd "$(dirname "$0")/.." && pwd)"
functions_dir="$server_dir/firebase/functions"

project_id=demo-church-admin
auth_url="http://localhost:9099"
hasura_url="http://localhost:8080"

admin_email="${E2E_ADMIN_EMAIL:-admin@e2e.test}"
admin_password="${E2E_ADMIN_PASSWORD:-Harness_Passw0rd}"

compose() {
  docker compose \
    --project-directory "$server_dir" \
    --env-file "$server_dir/e2e/backend.env" \
    -f "$server_dir/docker-compose.yml" \
    -f "$server_dir/docker-compose.e2e.yml" \
    -p church-admin-e2e \
    "$@"
}

ensure_functions_env() {
  [ -f "$functions_dir/.env.local" ] || cp "$functions_dir/example.env.local" "$functions_dir/.env.local"
  [ -f "$functions_dir/.secret.local" ] || cp "$functions_dir/example.secrets.local" "$functions_dir/.secret.local"
}

wait_for() {
  local description="$1" attempts="$2"
  shift 2

  for _ in $(seq 1 "$attempts"); do
    if "$@" >/dev/null 2>&1; then return 0; fi
    sleep 2
  done

  echo "Timed out waiting for $description" >&2
  compose logs --tail 80 firebase-emulators >&2

  return 1
}

functions_loaded() {
  compose logs firebase-emulators | grep -q "beforeUserSignUp"
}

sign_up() {
  curl -fsS -X POST "$auth_url/identitytoolkit.googleapis.com/v1/accounts:signUp?key=e2e" \
    -H 'Content-Type: application/json' \
    -d "{\"email\":\"$1\",\"password\":\"$2\",\"returnSecureToken\":true}"
}

hasura_admin_query() {
  curl -fsS "$hasura_url/v1/graphql" \
    -H 'Content-Type: application/json' \
    -H "x-hasura-admin-secret: $(grep '^HASURA_GRAPHQL_ADMIN_SECRET=' "$server_dir/e2e/backend.env" | cut -d= -f2-)" \
    -d "$(jq -n --arg q "$1" '{query: $q}')"
}

up() {
  ensure_functions_env

  compose down --remove-orphans
  docker volume rm -f church-admin-e2e_pgdata >/dev/null
  compose up -d --build --wait postgres local-unsigned-jwt-verifier hasura firebase-emulators
  compose --profile plant_seeds run --rm seed

  wait_for "the functions emulator to load the auth blocking function" 150 functions_loaded

  sign_up "$admin_email" "$admin_password" >/dev/null

  hasura_admin_query '{ authUsersData { uid email authId } }' | jq -e '.data.authUsersData | length == 1' >/dev/null ||
    { echo "The blocking function did not create the admin user" >&2; exit 1; }

  echo "Backend ready. Admin: $admin_email / $admin_password (project $project_id)"
}

case "${1:-up}" in
  up) up ;;
  down) compose down -v --remove-orphans ;;
  logs) shift; compose logs "$@" ;;
  compose) shift; compose "$@" ;;
  *) echo "usage: $0 [up|down|logs|compose ...]" >&2; exit 64 ;;
esac
