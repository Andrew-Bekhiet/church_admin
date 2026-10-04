#!/usr/bin/env bash
# Prints one line per Dependabot ceiling that can now be lifted; prints nothing when every ceiling still holds.
# Exits non-zero when the pinned dependencies already disagree, so a broken check never reads as "nothing to lift".
# Run from server/firebase/functions. Needs curl, jq, yq and npm.
set -euo pipefail

dependabot_yml=../../../.github/dependabot.yml

locked_version() {
  jq -r --arg pkg "$1" '.packages["node_modules/" + $pkg].version // empty' package-lock.json
}

# The first version Dependabot will not offer for $1, read from its npm ignore rule.
ceiling() {
  local rule floor
  rule=$(PKG=$1 yq -o=json '.updates[] | select(.package-ecosystem == "npm") | .ignore[] | select(.dependency-name == env(PKG))' "$dependabot_yml")
  [ -z "$rule" ] && return
  floor=$(jq -r '.versions // [] | map(capture(">= *(?<v>[0-9.]+)").v) | first // empty' <<<"$rule")
  if [ -n "$floor" ]; then
    echo "$floor"
  elif jq -e '."update-types" // [] | index("version-update:semver-major")' <<<"$rule" >/dev/null; then
    echo "$(($(locked_version "$1" | cut -d. -f1) + 1)).0.0"
  fi
}

version_at_least() {
  [ "$(printf '%s\n%s\n' "$2" "$1" | sort -V | head -1)" = "$2" ]
}

newest_runtime_node_major() {
  curl -fsSL https://cdn.jsdelivr.net/npm/firebase-tools@latest/lib/deploy/functions/runtimes/supported/types.js |
    awk '/nodejs[0-9]+: \{/ { match($0, /nodejs[0-9]+/); major = substr($0, RSTART + 6, RLENGTH - 6) }
         /status: "GA"/ && major { print major; major = "" }' |
    sort -n | tail -1
}

# Highest stable $1 that every other direct dependency accepts, at the newest release Dependabot can still give it
# (same major as the lockfile). Packages named after $1 are the ones being held back, so they are not asked.
newest_peer_compatible() {
  local target=$1 held=$2 candidates dep locked newest range
  candidates=$(npm view "$target" versions --json | jq -r '.[] | select(test("^[0-9]+\\.[0-9]+\\.[0-9]+$"))')
  for dep in $(jq -r '(.dependencies // {}) + (.devDependencies // {}) | keys[]' package.json); do
    [[ " $target $held " == *" $dep "* ]] && continue
    locked=$(locked_version "$dep")
    [ -z "$locked" ] && continue
    newest=$(npm view "$dep@^$locked" version --json 2>/dev/null | jq -r 'if type == "array" then last else . end // empty' || true)
    [ -z "$newest" ] && continue
    range=$(npm view "$dep@$newest" "peerDependencies.$target" 2>/dev/null || true)
    [ -z "$range" ] && continue
    candidates=$(npm view "$target@$range" version --json 2>/dev/null | jq -r 'if type == "array" then .[] else . end' |
      grep -Fxf - <(echo "$candidates") || true)
    if [ -z "$candidates" ]; then
      echo "No $target version satisfies every peer range; $dep@$newest wants $target $range." >&2
      return 1
    fi
  done
  echo "$candidates" | sort -V | tail -1
}

node_now=$(jq -r '.engines.node' package.json | grep -oE '[0-9]+' | head -1)
node_max=$(newest_runtime_node_major)
if [ -z "$node_max" ]; then
  echo "Could not read the Cloud Functions runtime list from firebase-tools." >&2
  exit 1
fi
if [ "$node_max" -gt "$node_now" ]; then
  echo "- **Node $node_now → $node_max**: Cloud Functions lists \`nodejs$node_max\` as GA. Bump \`engines.node\`, \`.nvmrc\`, \`server/firebase/Dockerfile.emulators\` and \`@types/node\` by hand; the major ignores in \`.github/dependabot.yml\` keep holding at the new major."
fi

for spec in "typescript:" "eslint:@eslint/js"; do
  pkg=${spec%%:*} held=${spec#*:}
  limit=$(ceiling "$pkg")
  [ -z "$limit" ] && continue
  best=$(newest_peer_compatible "$pkg" "$held")
  if version_at_least "$best" "$limit"; then
    echo "- **$pkg $(locked_version "$pkg") → $best**: every dependency that peers on $pkg accepts it, but Dependabot holds $pkg below $limit. Bump it${held:+ together with \`$held\`} and raise or keep its ignore in \`.github/dependabot.yml\` to match the new ceiling."
  fi
done
