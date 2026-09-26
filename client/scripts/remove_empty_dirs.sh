#!/bin/bash

remove_empty_dirs() {
    # Find all directories, sort by depth (deepest first)
    find "${1:-.}" -depth -type d | while read -r dir; do
        # Check if directory is empty or only contains empty directories
        if [ -z "$(find "$dir" -mindepth 1 -not -type d)" ] && \
           [ -z "$(find "$dir" -mindepth 1 -type d -not -empty)" ]; then
            echo "Removing: $dir"
            rmdir "$dir"
        fi
    done
}

# Check if path argument is provided
if [ $# -eq 1 ]; then
    if [ ! -d "$1" ]; then
        echo "Error: '$1' is not a directory"
        exit 1
    fi
    remove_empty_dirs "$1"
else
    remove_empty_dirs "."
fi
