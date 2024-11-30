#!/bin/bash

# Path to the test directory
TEST_DIR="test"

# Read the moves from git-moves.txt
declare -A moves

while IFS=' -> ' read -r src dest; do
    # Remove 'client/lib/' prefix from paths
    src="${src#client/lib/}"
    dest="${dest#client/lib/}"

    # Replace '.dart' with '_test.dart' in file names
    src_test="${src%.dart}_test.dart"
    dest_test="${dest%.dart}_test.dart"

    # Save the move mapping
    moves["$src_test"]="$dest_test"
done < git-moves.txt

# Get unique source directories
src_dirs=()
for src_path in "${!moves[@]}"; do
    dir=$(dirname "$src_path")
    if [[ ! " ${src_dirs[*]} " =~ " $dir " ]]; then
        src_dirs+=("$dir")
    fi
done

# Process moves one directory at a time
for dir in "${src_dirs[@]}"; do
    echo "Processing directory: $dir"
    # Find all files in this directory to move
    for src in "${!moves[@]}"; do
        if [[ $(dirname "$src") == "$dir" ]]; then
            dest="${moves[$src]}"
            src_file="$TEST_DIR/$src"
            dest_file="$TEST_DIR/$dest"
            # Check if source file exists
            if [[ -f "$src_file" ]]; then
                # Create destination directory if it doesn't exist
                mkdir -p "$(dirname "$dest_file")"
                # Move the file
                mv "$src_file" "$dest_file"
                echo "Moved: $src -> $dest"
            else
                echo "File $src_file does not exist, skipping"
            fi
        fi
    done
done
