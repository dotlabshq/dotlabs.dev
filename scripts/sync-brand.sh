#!/usr/bin/env bash
# Pull brand assets from the company brand kit into site/assets.
# Source of truth: company/brands/dotlabs (owned by dotlabs/sales). Never edit the copies here.
set -euo pipefail
ROOT="$(cd "$(dirname "$0")/.." && pwd)"
BRAND="${BRAND_DIR:-$ROOT/../../company/brands/dotlabs}"
A="$ROOT/site/assets"
mkdir -p "$A/fonts" "$A/logo"
cp "$BRAND/tokens/tokens.css" "$A/tokens.css"
cp "$BRAND/fonts/"*.woff2 "$BRAND/fonts/fonts.css" "$BRAND/fonts/"OFL-*.txt "$A/fonts/"
cp "$BRAND/logo/svg/"*.svg "$A/logo/"
echo "brand synced from $BRAND"
