#!/bin/bash
# This script displays the IDs of the last 5 commits in a Git repository

# Use git log to get the commit IDs, and limit the output to the last 5
git log --oneline -n 5 | cut -d ' ' -f 1



# #!/bin/bash – Uses Bash to run the script.
# Comment – Describes the script's purpose.
# git log --oneline -n 5 – Lists the last 5 commits in a compact format.
# | cut -d ' ' -f 1 – Extracts only the commit IDs by selecting the first word from each line.