#!/bin/bash

# Find and list all mock files
mock_files=$(find . -type f -name "*_test.mocks.dart")

# Check if any files were found
if [ -z "$mock_files" ]; then
    echo "No mock files found."
    exit 0
fi

# Count files
file_count=$(echo "$mock_files" | wc -l)

# Show files and ask for confirmation
echo "Found $file_count mock files to delete:"
echo "$mock_files"
echo
read -p "Do you want to delete these files? (y/N) " -n 1 -r
echo

if [[ $REPLY =~ ^[Yy]$ ]]; then
    # Delete files
    while IFS= read -r file; do
        rm "$file"
        echo "Deleted: $file"
    done <<< "$mock_files"
    echo "All mock files have been deleted."
else
    echo "Operation cancelled."
fi
