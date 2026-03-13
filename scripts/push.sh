#!/bin/bash

git status --porcelain | while read status file
do
    echo "Processing: $file"

    # Add the file
    git add "$file"

    # Commit the file
    git commit -m "Update $file"

    # Push to remote
    git push origin master

    echo "$file added, committed, and pushed"
    echo "-------------------------------"

done
