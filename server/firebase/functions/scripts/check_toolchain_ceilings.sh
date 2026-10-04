#!/usr/bin/env bash
# Prints one line per held-back major that can now be lifted; prints nothing when every ceiling still holds.
# Run from server/firebase/functions. Needs curl, jq and npm.
set -euo pipefail

current_major() {
  jq -r --arg pkg "$1" '.dependencies[$pkg] // .devDependencies[$pkg]' package.json | grep -oE '[0-9]+' | head -1
}

newest_runtime_node_major() {
  curl -fsSL https://cdn.jsdelivr.net/npm/firebase-tools@latest/lib/deploy/functions/runtimes/supported/types.js |
    awk '/nodejs[0-9]+: \{/ { match($0, /nodejs[0-9]+/); major = substr($0, RSTART + 6, RLENGTH - 6) }
         /status: "GA"/ && major { print major; major = "" }' |
    sort -n | tail -1
}

# Highest stable version of $1 accepted by the eslint/typescript peer range of every direct dependency that declares one.
newest_peer_compatible_major() {
  local target=$1 candidates dep range
  candidates=$(npm view "$target" versions --json | jq -r '.[] | select(test("^[0-9]+\\.[0-9]+\\.[0-9]+$"))')
  for dep in $(jq -r '(.dependencies // {}) + (.devDependencies // {}) | keys[]' package.json); do
    range=$(npm view "$dep" "peerDependencies.$target" 2>/dev/null || true)
    [ -z "$range" ] && continue
    candidates=$(npm view "$target@$range" version --json 2>/dev/null | jq -r 'if type == "array" then .[] else . end' |
      grep -Fxf - <(echo "$candidates") || true)
  done
  echo "$candidates" | sort -V | tail -1 | cut -d. -f1
}

node_now=$(jq -r '.engines.node' package.json | grep -oE '[0-9]+' | head -1)
node_max=$(newest_runtime_node_major)
if [ -n "$node_max" ] && [ "$node_max" -gt "$node_now" ]; then
  echo "- **Node $node_now → $node_max**: Cloud Functions lists \`nodejs$node_max\` as GA. Bump \`engines.node\`, \`.nvmrc\`, \`server/firebase/Dockerfile.emulators\` and \`@types/node\` by hand; the major ignores in \`.github/dependabot.yml\` keep holding at the new major."
fi

for pkg in typescript eslint; do
  now=$(current_major "$pkg")
  max=$(newest_peer_compatible_major "$pkg")
  if [ -n "$max" ] && [ "$max" -gt "$now" ]; then
    echo "- **$pkg $now → $max**: every plugin that peers on $pkg now accepts $max. Bump it by hand$([ "$pkg" = eslint ] && echo ' together with `@eslint/js`'); the major ignore in \`.github/dependabot.yml\` keeps holding at the new major."
  fi
done
