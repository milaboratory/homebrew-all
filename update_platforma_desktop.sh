#!/bin/bash

# Exit immediately if a command exits with a non-zero status.
set -e

# Check if version argument is provided
if [ -z "$1" ]; then
  echo "Usage: $0 <new_version>"
  exit 1
fi

NEW_VERSION="$1"
CASK_FILE="Casks/platforma-desktop.rb"
TEMP_DIR=$(mktemp -d)

echo "Updating Platforma Desktop to version $NEW_VERSION..."

# Construct URLs
ARM64_URL="https://cdn.platforma.bio/software/platforma-desktop-v2/macos/arm64/Platforma-${NEW_VERSION}-arm64.dmg"
AMD64_URL="https://cdn.platforma.bio/software/platforma-desktop-v2/macos/amd64/Platforma-${NEW_VERSION}.dmg"

ARM64_DMG="$TEMP_DIR/Platforma-${NEW_VERSION}-arm64.dmg"
AMD64_DMG="$TEMP_DIR/Platforma-${NEW_VERSION}.dmg"

echo "Downloading ARM64 DMG from $ARM64_URL..."
curl -L -o "$ARM64_DMG" "$ARM64_URL"

echo "Downloading AMD64 DMG from $AMD64_URL..."
curl -L -o "$AMD64_DMG" "$AMD64_URL"

# Calculate SHA256 checksums
ARM64_SHA256=$(shasum -a 256 "$ARM64_DMG" | awk '{print $1}')
AMD64_SHA256=$(shasum -a 256 "$AMD64_DMG" | awk '{print $1}')

echo "ARM64 SHA256: $ARM64_SHA256"
echo "AMD64 SHA256: $AMD64_SHA256"

# Update the Cask file

# Update version
sed -i -e "s/version \".*\"/version \"${NEW_VERSION}\"/g" "$CASK_FILE"

# Update ARM64 SHA256
sed -i -e "s/sha256 \".*\"   ### ARM64 DON'T DELETE/sha256 \"${ARM64_SHA256}\"   ### ARM64 DON'T DELETE/g" "$CASK_FILE"

# Update AMD64 SHA256
sed -i -e "s/sha256 \".*\"   ### AMD64 DON'T DELETE/sha256 \"${AMD64_SHA256}\"   ### AMD64 DON'T DELETE/g" "$CASK_FILE"


echo "Cask file updated successfully."

# Clean up temporary files
rm -rf "$TEMP_DIR"

# Git operations
git add "$CASK_FILE"
git commit -m "platforma-desktop: Update to version $NEW_VERSION"
git push

echo "Changes committed successfully." 