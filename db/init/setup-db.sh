#!/bin/bash

# --- ScoutFlow DB Bootstrap ---
# This script fetches the seed data from an external secure source (Gist)
# demonstrating professional data handling practices for DevOps portfolios.

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
GIST_URL="https://gist.githubusercontent.com/omerbeithalahmy/661196baff216d3f9150fb4161752690/raw/984f5d85ace46eaa963acf9a6181ecffe9ef91b8/scoutflow_seed.sql"
TARGET_DIR="$SCRIPT_DIR"
TARGET_FILE="$TARGET_DIR/seed.sql"

echo "Bootstrapping ScoutFlow Database..."

mkdir -p "$TARGET_DIR"

echo "Fetching 2025-26 Season Data from GitHub Gist..."
curl -L "$GIST_URL" -o "$TARGET_FILE"

if [ $? -eq 0 ]; then
    echo "Success: Seed data downloaded to $TARGET_FILE"
    echo "Info: Run 'docker-compose up --build' from the project root to start."
else
    echo "Error: Failed to download seed data. Please check your internet connection or URL."
    exit 1
fi
