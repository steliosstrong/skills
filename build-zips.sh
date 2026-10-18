#!/bin/sh
# Rebuild downloads/*.zip after editing a skill. Run: sh build-zips.sh
cd "$(dirname "$0")/skills" || exit 1
mkdir -p ../downloads
for d in */; do
  n="${d%/}"
  rm -f "../downloads/$n.zip"
  zip -qr "../downloads/$n.zip" "$n"
done
echo "Built: $(ls ../downloads)"
