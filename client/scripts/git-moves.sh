#!/bin/bash

# Get the common ancestor between current branch and master
merge_base=$(git merge-base HEAD master)

# Get all file moves between merge base and HEAD
git diff --name-status --diff-filter=R "$merge_base" HEAD | while read -r status old new; do
    # Remove the R100 status prefix and tab characters
    old="${old#R???}"
    echo "Moved: $old -> $new"
done

# Exit with git's exit code
exit ${PIPESTATUS[0]}
