#!/bin/bash

# Ensure the latest changes are fetched
git fetch --all

# Switch to branch2
git checkout branch2

# Merge branch3 into branch2
git merge branch3 -m "Merging branch3 into branch2"

# Check for merge conflicts
if [ $? -ne 0 ]; then
  echo "Merge conflict detected. Please resolve manually and commit the changes."
  exit 1
fi

# Delete branch3 after successful merge
git branch -d branch3

git push origin --delete branch3
