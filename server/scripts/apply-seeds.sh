#!/bin/sh

set -eu

if [ -z "$(find /seeds -maxdepth 1 -name '*.sql' -print -quit)" ]; then
    echo "No seed files in /seeds; nothing to apply."
    exit 0
fi

for seed in $(find /seeds -maxdepth 1 -name '*.sql' | sort); do
    echo "Applying $(basename "$seed")"
    psql -v ON_ERROR_STOP=1 --quiet --file "$seed"
done

echo "Seeds applied."
