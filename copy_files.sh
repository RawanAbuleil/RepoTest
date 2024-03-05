#!/bin/bash

# Check if the correct number of arguments is provided
if [ "$#" -ne 1 ]; then
  echo "Usage: $0 <Name of repository folder>"
  exit 1
fi

# Name of the repository folder
repo_folder="$1"

# Check if the repository folder exists
if [ ! -d "$repo_folder" ]; then
  echo "Repository folder $repo_folder not found."
  exit 1
fi

# Create a new directory for the copied files
new_folder="CopiedFiles"
mkdir -p "$new_folder"

# Copy all text and log files from RepoTest folder to new folder
cp "$repo_folder"/*.txt "$repo_folder"/*.log "$new_folder"/

echo "Files copied successfully to $new_folder"
