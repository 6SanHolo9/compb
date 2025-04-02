#!/bin/bash

# Create a directory named dir2 (if it doesn't already exist)
mkdir -p dir2

# Move all .txt files from the current directory to dir2
mv *.txt dir2/

# Stage all changes (both the removal and addition of files)
git add -A

# Commit the changes with a message
git commit -m "Move all text files to dir2"
