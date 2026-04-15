#!/bin/bash
# vault-autosave.sh
# Watches your Obsidian vault for changes and silently commits them to git.
# Every save = a versioned commit. Zero manual git required.
#
# Requirements: fswatch (install with: brew install fswatch)
# Usage: bash vault-autosave.sh /path/to/your/vault
#
# To run automatically at login on macOS, see the launchd plist below.

VAULT_PATH="${1:-$HOME/Documents/ObsidianVault}"
DEBOUNCE_SECONDS=10
LAST_COMMIT=0

echo "Neural Vault Auto-Save watching: $VAULT_PATH"

fswatch -r "$VAULT_PATH" | while read -r event; do
    NOW=$(date +%s)
    DIFF=$((NOW - LAST_COMMIT))

    # Debounce: only commit if at least DEBOUNCE_SECONDS have passed
    if [ "$DIFF" -ge "$DEBOUNCE_SECONDS" ]; then
        cd "$VAULT_PATH" || exit

        # Initialize git repo if it doesn't exist
        if [ ! -d ".git" ]; then
            git init
            git add .
            git commit -m "Initial vault commit"
            echo "Git repo initialized in $VAULT_PATH"
        fi

        # Stage and commit all changes
        git add -A
        CHANGED=$(git diff --cached --name-only | wc -l | tr -d ' ')

        if [ "$CHANGED" -gt "0" ]; then
            TIMESTAMP=$(date "+%Y-%m-%d %H:%M:%S")
            git commit -m "vault: auto-save $TIMESTAMP ($CHANGED file(s) changed)"
            echo "[$TIMESTAMP] Committed $CHANGED file(s)"
            LAST_COMMIT=$NOW
        fi
    fi
done
