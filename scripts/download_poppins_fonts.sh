#!/usr/bin/env bash
set -euo pipefail

ROOT_DIR="$(cd "$(dirname "$0")/.." && pwd)"
FONTS_DIR="$ROOT_DIR/assets/fonts"
mkdir -p "$FONTS_DIR"

BASE_URL="https://raw.githubusercontent.com/google/fonts/main/ofl/poppins"
FILES=(
  "Poppins-Light.ttf"
  "Poppins-Regular.ttf"
  "Poppins-Medium.ttf"
  "Poppins-SemiBold.ttf"
  "Poppins-Bold.ttf"
  "Poppins-ExtraBold.ttf"
)

for f in "${FILES[@]}"; do
  echo "Downloading $f..."
  curl -fSL "$BASE_URL/$f" -o "$FONTS_DIR/$f"
done

echo "All fonts downloaded to $FONTS_DIR"
