#!/bin/bash

directory_name="negpod_31-q1"

# Create the directory if it doesn't exist
mkdir -p "$directory_name"

# Move all four files to the directory
mv main.sh "$directory_name"
mv students-list_1023.txt "$directory_name"
mv select-emails.sh "$directory_name"
mv student-emails.txt "$directory_name"

echo "Files moved to $directory_name successfully!"
