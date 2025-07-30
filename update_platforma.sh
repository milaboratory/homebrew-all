#!/bin/bash

# Exit immediately if a command exits with a non-zero status.
set -e

# Check if version argument is provided
if [ -z "$1" ]; then
  echo "Usage: $0 <new_version>"
  exit 1
fi

NEW_VERSION="$1"
FORMULAE_FILE="platforma.rb"
TEMP_DIR=$(mktemp -d)

echo "Updating Platforma Server to version $NEW_VERSION..."

# Construct URLs
ARM64_URL="https://cdn.platforma.bio/software/pl/macos/pl-${NEW_VERSION}-arm64.tgz"
AMD64_URL="https://cdn.platforma.bio/software/pl/macos/pl-${NEW_VERSION}-amd64.tgz"

ARM64_TGZ="$TEMP_DIR/Platforma-${NEW_VERSION}-arm64.tgz"
AMD64_TGZ="$TEMP_DIR/Platforma-${NEW_VERSION}-amd64.tgz"

echo "Downloading ARM64 from $ARM64_URL..."
curl -f -L -o "$ARM64_TGZ" "$ARM64_URL"

echo "Downloading AMD64 from $AMD64_URL..."
curl -f -L -o "$AMD64_TGZ" "$AMD64_URL"

# Calculate SHA256 checksums
ARM64_SHA256=$(shasum -a 256 "$ARM64_TGZ" | awk '{print $1}')
AMD64_SHA256=$(shasum -a 256 "$AMD64_TGZ" | awk '{print $1}')

echo "ARM64 SHA256: $ARM64_SHA256"
echo "AMD64 SHA256: $AMD64_SHA256"

# Update the Formulae file

# Update version
sed -i -e "s/version \".*\"/version \"${NEW_VERSION}\"/g" "$FORMULAE_FILE"

# Update ARM64 SHA256
sed -i -e "s/sha256 \".*\"   ### ARM64 DON'T DELETE/sha256 \"${ARM64_SHA256}\"   ### ARM64 DON'T DELETE/g" "$FORMULAE_FILE"

# Update AMD64 SHA256
sed -i -e "s/sha256 \".*\"   ### AMD64 DON'T DELETE/sha256 \"${AMD64_SHA256}\"   ### AMD64 DON'T DELETE/g" "$FORMULAE_FILE"


echo "Formulae file updated successfully."

# Clean up temporary files
rm -rf "$TEMP_DIR"

# Git operations
git add "$FORMULAE_FILE"
git commit -m "platforma: Update to version $NEW_VERSION"
git push

echo "Changes committed successfully." 