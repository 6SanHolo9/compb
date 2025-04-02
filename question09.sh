#!/bin/bash

# Create and switch to a new branch named branch1
git checkout -b branch1

# Create a new file named file3
touch file3

# Stage the new file
git add file3

# Commit the new file
git commit -m "Add file3 in branch1"
