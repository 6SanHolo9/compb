#!/bin/bash

# Create a directory named dir2
mkdir -p dir2

# Move all text files to dir2
mv *.txt dir2/

# Stage the moved files
git add dir2/*.txt

# Commit the changes
git commit -m "Move all text files to dir2"
