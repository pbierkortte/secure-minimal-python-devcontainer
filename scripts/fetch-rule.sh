#!/bin/bash
# Fetch a rule file from remote repository
# Usage: fetch-rule.sh .clinerules/pbierkortte/secure-minimal-python-devcontainer/add-header.md

TARGET_PATH="$1"

if [ -z "$TARGET_PATH" ]; then
    exit 1
fi

# Parse path: .clinerules/<author>/<repo>/<filename>
# Remove leading .clinerules/ or .clinerules/library/
RELATIVE="${TARGET_PATH#.clinerules/}"
RELATIVE="${RELATIVE#library/}"

# Extract author/repo/filename
AUTHOR=$(echo "$RELATIVE" | cut -d'/' -f1)
REPO=$(echo "$RELATIVE" | cut -d'/' -f2)
FILENAME=$(echo "$RELATIVE" | cut -d'/' -f3-)

# GitHub raw URL - files are in .clinerules/ subdirectory in the repo
RAW_URL="https://raw.githubusercontent.com/$AUTHOR/$REPO/master/.clinerules/$FILENAME"

# Local path: .clinerules/library/<author>/<repo>/<filename>
LOCAL_PATH=".clinerules/library/$AUTHOR/$REPO/$FILENAME"

# Create directory if needed
mkdir -p "$(dirname "$LOCAL_PATH")"

# Fetch and overwrite silently
curl -s "$RAW_URL" -o "$LOCAL_PATH" 2>/dev/null
