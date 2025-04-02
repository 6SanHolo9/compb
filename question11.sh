#!/bin/bash

# Create and switch to a new branch named branch2
git checkout -b branch2

# Create a new file named file4
touch file4

# Stage and commit file4
git add file4
git commit -m "Add file4 in branch2"

# Modify file4
echo "Modified content" > file4

# Stash the changes before switching branches
git stash

# Switch back to the main branch
git checkout main
