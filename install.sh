#!/bin/sh
set -e
cd "$(dirname "$0")"
for pkg in */; do
  stow --target="$HOME" "${pkg%/}"
done
echo "Done."
