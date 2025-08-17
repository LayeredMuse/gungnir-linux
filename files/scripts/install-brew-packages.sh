#!/bin/bash
          
# This file will run every time a shell starts.
# We need to make sure our installation only runs ONCE.
# We do this by creating a "lock file" after a successful run.
          
LOCK_FILE="$HOME/.local/state/first-boot-brew-install-done"
          
if [ -f "$LOCK_FILE" ]; then
    exit 0
fi
          
# Check if the brew command exists before trying to use it.
# It should be in the PATH by the time this script runs.
if ! command -v brew &> /dev/null; then
    # Exit silently if brew isn't ready yet.
    exit 0
fi
          
# Install your packages
brew install gemini-cli
# brew install another-package
          
# Create the lock file to prevent the script from running again.
mkdir -p "$(dirname "$LOCK_FILE")"
touch "$LOCK_FILE"