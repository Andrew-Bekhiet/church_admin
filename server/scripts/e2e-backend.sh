#!/usr/bin/env bash
# Hermetic backend for end-to-end runs: its own compose project, a fresh
# database, and a demo- Firebase project so the emulators can never reach real resources.
set -euo pipefail

server_dir="$(cd "$(dirname "$0")/.." && pwd)"

compose_project="${E2E_COMPOSE_PROJECT:-church-admin-e2e}"
project_id=demo-church-admin
auth_url="http://localhost:9099"
ash_url="http://localhost:8080"

admin_email="${E2E_ADMIN_EMAIL:-admin@e2e.test}"
admin_password="${E2E_ADMIN_PASSWORD:-Harness_Passw0rd}"

start_docker_compose() {
  docker compose \
    --project-directory "$server_dir" \
    --env-file "$server_dir/e2e/backend.env" \
    -f "$server_dir/docker-compose.yml" \
    -f "$server_dir/docker-compose.e2e.yml" \
    -p "$compose_project" \
    "$@"
}

auth_emulator_post() {
  curl -fsS -X POST "$auth_url/identitytoolkit.googleapis.com/v1/accounts:$1?key=e2e" \
    -H 'Content-Type: application/json' \
    -d "$2"
}

credentials_json() {
  jq -n --arg email "$1" --arg password "$2" \
    '{email: $email, password: $password, returnSecureToken: true}'
}

sign_up() {
  auth_emulator_post signUp "$(credentials_json "$1" "$2")"
}

sign_in_id_token() {
  auth_emulator_post signInWithPassword "$(credentials_json "$1" "$2")" | jq -r '.idToken'
}

ash_query() {
  curl -fsS "$ash_url/gql" \
    -H 'Content-Type: application/json' \
    -H "Authorization: Bearer $1" \
    -d "$(jq -n --arg q "$2" '{query: $q}')"
}

bootstrap_admin() {
  local output
  output="$(start_docker_compose exec -T ash mix church_admin.bootstrap_admin --email "$admin_email" 2>&1)" ||
    { echo "$output" >&2; return 1; }

  echo "${output##*$'\n'}"
}

verify_admin_through_ash() {
  local token admin_query
  token="$(sign_in_id_token "$admin_email" "$admin_password")"
  admin_query="{ users(filter: {email: {eq: \"$admin_email\"}}) { results { uid authId permissions { permission } } } }"

  ash_query "$token" "$admin_query" |
    jq -e '.data.users.results | length == 1 and (.[0].authId != null) and (.[0].permissions | length > 0)' >/dev/null ||
    { echo "Ash does not see $admin_email as a linked administrator with permissions" >&2; return 1; }

  ash_query "$token" '{ services(first: 1) { count } }' |
    jq -e '.data.services.count > 0' >/dev/null ||
    { echo "Ash serves no seeded services to $admin_email" >&2; return 1; }
}

up() {
  start_docker_compose down --remove-orphans
  docker volume rm -f "${compose_project}_pgdata_ash" >/dev/null
  start_docker_compose build
  start_docker_compose up -d --no-build --wait postgres firebase-emulators ash

  sign_up "$admin_email" "$admin_password" >/dev/null
  bootstrap_admin
  verify_admin_through_ash

  echo "Backend ready. Admin: $admin_email / $admin_password (project $project_id)"
}

case "${1:-up}" in
  up) up ;;
  down) start_docker_compose down -v --remove-orphans ;;
  logs) shift; start_docker_compose logs "$@" ;;
  compose) shift; start_docker_compose "$@" ;;
  *) echo "usage: $0 [up|down|logs|compose ...]" >&2; exit 64 ;;
esac
