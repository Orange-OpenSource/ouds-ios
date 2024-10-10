#!/bin/bash

# Directory containing your .docc folders
DOCS_DIR="./path/to/your/docc/folders"
# Output directory for merged documentation
OUTPUT_DIR="./mergedDocumentation"

# Create output directory if it doesn't exist
mkdir -p "$OUTPUT_DIR"

# Loop through each .docc folder
for docc in "$DOCS_DIR"/*.docc; do
    # Convert each .docc folder
    xcrun docc convert "$docc" --output-path "$OUTPUT_DIR/$(basename "$docc" .docc)"
done

# Merge the documentation (if necessary)
# Note: Merging might require additional steps depending on your needs.
# You may need to manually combine the outputs or use a tool to merge HTML files.
