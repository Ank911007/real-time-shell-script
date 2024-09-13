#!/bin/bash

# Define Variables
SEARCH_STRING="old_string"
REPLACE_STRING="new_string"
FILE_DIR="/path/to/files/directory"

# Perform find and replace using
find "$FILE_DIR" -type f -exec sed -i "s/$SEARCH_STRING/$REPLACE_STRING/g" {} +

echo "find and replace completed"
