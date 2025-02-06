#!/bin/bash

# Count the regular files (type 'f') and directories (type 'd') in the current directory and all subdirectories
count=$(find . -type f -or -type d | wc -l)

# Output the result
echo $count


# Explanation:
# find . -type f -or -type d: This command searches for both regular files (-type f) and directories (-type d) in the current directory and all subdirectories.
# wc -l: This counts the number of lines output by the find command, which corresponds to the number of files and directories.
# echo $count: This prints the count of files and directories.