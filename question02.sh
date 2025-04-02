#!/bin/bash

# Initialize a new Git repository
git init

# Add all files to the staging area
git add .

# Make an initial commit
git commit -m "Initial commit"

# Create a main branch (for older Git versions)
git branch -M main
