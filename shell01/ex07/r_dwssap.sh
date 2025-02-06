#!/bin/bash

FT_LINE1=$1
FT_LINE2=$2
cat sample_passwd.txt | \
grep -v '^#' | \
sed -n '2~2p' | \
cut -d ':' -f 1 | \
awk '{
    reversed=""
    for(i=length($0); i!=0; i--){
        reversed = reversed substr($0, i, 1)
    }
    print reversed
}' | \
sort -r | \
sed -n "${FT_LINE1},${FT_LINE2}p" | \
paste -sd, - | \
sed 's/$/./'

# The script does the following things:

# Takes two inputs: These are the line numbers (FT_LINE1 and FT_LINE2).
# Works with a file: The file it reads from is sample_passwd.txt (not the actual /etc/passwd file).
# Processes the logins (usernames):
# It removes comments (lines that start with #).
# It only keeps every second line starting from the second.
# It reverses the usernames.
# It sorts them in reverse order (Z to A).

# Step-by-Step Explanation
# FT_LINE1=$1 and FT_LINE2=$2:
# his means you give two numbers when running the script (e.g., 2 5), and those numbers are stored as FT_LINE1 and FT_LINE2.

# cat sample_passwd.txt:
# This reads the content of the sample_passwd.txt file.

# grep -v '^#':
# This removes any lines that start with a # (comments). These lines are ignored.

#sed -n '2~2p':
#This selects every other line starting from the second one. For example, it picks line 2, 4, 6, etc.

#cut -d ':' -f 1:
#This splits each line by : and gets the first part, which is the username.

#awk:
#This part reverses each username. For example, "john" becomes "nhoj".

#sort -r:
#This sorts the reversed usernames in reverse order, so they go from "Z" to "A".

#sed -n "${FT_LINE1},${FT_LINE2}p":
#This picks only the usernames between the line numbers you gave (e.g., lines 2 to 5).

#paste -sd, -:
#This joins the usernames with commas, like "user1, user2, user3".

# sed 's/$/./':
# This adds a period (.) at the end of the list.