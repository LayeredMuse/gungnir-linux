#!/usr/bin/env bash

# A simple script to copy new config files from /etc/skel
# without overwriting existing user modifications.

echo "Checking for new configuration files..."
cp -r -n -v /etc/skel/. ~
echo "Done! Your configuration files are up to date."