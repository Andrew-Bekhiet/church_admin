#!/bin/bash

# This script splits a large schema.graphql.dart file into multiple smaller parts
# using Dart's part/part of directives for better maintainability.

# Path to the large schema file
SCHEMA_FILE="lib/src/core/graphql/__generated__/schema.graphql.dart"
OUTPUT_DIR="$(dirname "$SCHEMA_FILE")"
BASE_FILENAME="schema_part"
MAX_LINES_PER_PART=2500

# Make a backup of the original file
BACKUP_FILE="${SCHEMA_FILE}.bak"

cp "$SCHEMA_FILE" "$BACKUP_FILE"
echo "Created backup at $BACKUP_FILE"

# Extract imports from original file
IMPORTS=$(grep -E "^import " "$BACKUP_FILE")

# Count total lines
TOTAL_LINES=$(wc -l < "$BACKUP_FILE")
echo "Total lines in schema: $TOTAL_LINES"

# Create main schema file with imports
echo "// Auto-generated schema file - includes all parts" > "$SCHEMA_FILE"
echo "$IMPORTS" >> "$SCHEMA_FILE"
echo "" >> "$SCHEMA_FILE"

# Use awk to identify class boundaries, then create part files
awk -v output_dir="$OUTPUT_DIR" -v base_filename="$BASE_FILENAME" -v max_lines=$MAX_LINES_PER_PART -v schema_file="$SCHEMA_FILE" '
BEGIN {
  part_number = 1;
  line_count = 0;
  current_line = 0;
  current_part_file = output_dir "/" base_filename part_number ".dart";
  
  # Start the first part file
  print "// Part " part_number " of the schema" > current_part_file;
  print "part of \"schema.graphql.dart\";" >> current_part_file;
  print "" >> current_part_file;
  
  # Add part directive to main schema file
  print "part \"" base_filename part_number ".dart\";" >> schema_file;
  
  # Parse mode
  in_class = 0;
  brace_level = 0;
  
  # Count how many class openings/closings for validation
  class_openings = 0;
  class_closings = 0;
}

# Skip import lines in the parts
/^import / {
  next;
}

# Process content
{
  current_line++;

  # Track braces for class boundaries
  for (i = 1; i <= length($0); i++) {
    char = substr($0, i, 1);
    if (char == "{") {
      brace_level++;
      if (brace_level == 1 && !in_class && 
          ($0 ~ /^(class|enum|extension|abstract class|mixin)/ || 
           $0 ~ /^(@[^{]*)?(class|enum|extension|abstract|mixin)/)) {
        in_class = 1;
        class_openings++;
      }
    } else if (char == "}") {
      brace_level--;
      if (brace_level == 0 && in_class) {
        in_class = 0;
        class_closings++;
        
        # Write this line to complete the class
        print $0 >> current_part_file;
        line_count++;
        
        # If we have enough lines, start a new part, but only if we completed a class
        if (line_count >= max_lines) {
          printf("Created part %d with %d lines (ending at line %d)\n", 
                 part_number, line_count, current_line);
          
          # Start a new part
          part_number++;
          line_count = 0;
          current_part_file = output_dir "/" base_filename part_number ".dart";
          
          # Initialize the new part file
          print "// Part " part_number " of the schema" > current_part_file;
          print "part of \"schema.graphql.dart\";" >> current_part_file;
          print "" >> current_part_file;
          
          # Add part directive to main schema file
          print "part \"" base_filename part_number ".dart\";" >> schema_file;
        }
        
        # Skip to next line since we already wrote this one
        next;
      }
    }
  }
  
  # Write the current line to the current part file
  print $0 >> current_part_file;
  line_count++;
}

END {
  printf("Created part %d with %d lines (ending at line %d)\n", 
         part_number, line_count, current_line);
  printf("Total class openings: %d, closings: %d\n", class_openings, class_closings);
  printf("Schema has been split into %d parts\n", part_number);
}
' "$BACKUP_FILE"

echo "Schema split complete. Original file backed up at $BACKUP_FILE" 

