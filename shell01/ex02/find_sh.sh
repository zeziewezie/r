#!/bin/bash

# Find all files with the .sh extension, then strip the extension using basename
find . -type f -name "*.sh" -exec basename {} .sh \;
 
# Explanation:
# find . -type f -name "*.sh": This searches the current directory and all its subdirectories for files ending in .sh.
# -exec basename {} .sh \;: For each file found, it uses the basename command to remove the .sh extension. {} is replaced by the file name, and .sh is removed from it.

 # This will display the file names ending with .sh, but without the .sh extension, as shown in the example output. Let me know if you have any questions along the way!