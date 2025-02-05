#!/bin/bash

# List ignored files in the Git repository git status --ignored -s gives the status of all files, including ignored ones.
# grep '^!!' filters out only the lines that start with "!!", indicating ignored files.
# sed 's/^!! //' removes the "!! " from the beginning of each line to only display the file names.

git status --ignored -s | grep '^!!' | sed 's/^!! //'
