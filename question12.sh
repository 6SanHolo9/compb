#!/bin/bash

# Switch back to branch2
git checkout branch2

# Restore stashed changes
git stash pop

# Stage and commit the restored changes
git add file4
git commit -m "Restore and commit uncommitted changes in file4"
