#!/bin/bash

# Identify all branches
git branch -r

# Merge all branches starting with 'ready' into main
for branch in $(git branch -r | grep 'ready' | sed 's/origin\///'); do
  git checkout main
  git merge --no-ff $branch -m "Merging $branch into main"
  if [ $? -ne 0 ]; then
    echo "Merge conflict detected in $branch. Please resolve manually."
    exit 1
  fi
  git branch -d $branch
  git push origin --delete $branch
done

# Update all branches starting with 'update' with latest changes from main
for branch in $(git branch -r | grep 'update' | sed 's/origin\///'); do
  git checkout $branch
  git merge main -m "Updating $branch with latest changes from main"
done
