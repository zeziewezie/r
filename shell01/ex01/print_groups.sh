#!/bin/bash
# Get the groups, strip the prefix and filter only valid group names
groups $FT_USER | sed 's/^[^=]*=//' | tr ' ' ',' | sed 's/[^a-zA-Z0-9,]//g' | sed 's/,$//'
