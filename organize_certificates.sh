#!/bin/bash

# Step 1: Create certificates folder if it doesn't exist
mkdir -p certificates

# Step 2: Move all PDFs into the certificates folder
mv *.pdf certificates/

# Step 3: Update README.md links to point to the new folder
# Make a backup first
cp README.md README_backup.md

# Replace links in README.md (assuming links are like [file.pdf](file.pdf))
sed -i 's/](\([^)]*\.pdf\))/](certificates\/\1)/g' README.md

echo "Done! All PDFs moved to certificates/ and README.md links updated."

