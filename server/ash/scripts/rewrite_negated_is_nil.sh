#!/usr/bin/env bash
# Rewrites `not is_nil(x)` to `x != nil` on the lines Credo's
# Refactor.NegatedIsNil flags. Run from server/ash:
#
#   scripts/rewrite_negated_is_nil.sh
set -euo pipefail

{ mix credo --strict --format json || true; } |
  jq -r '.issues[] | select(.check == "Credo.Check.Refactor.NegatedIsNil") | "\(.filename)\t\(.line_no)"' |
  while IFS=$'\t' read -r file line; do
    perl -i -pe "s/\bnot is_nil\((\w+)\)/\$1 != nil/g if \$. == $line" "$file"
  done
