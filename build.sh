#!/bin/bash
set -e

echo "🔧 Installing FVM..."
curl -fsSL https://fvm.app/install.sh | bash

echo "📦 Installing Flutter SDK..."
/vercel/fvm/bin/fvm install

echo "🚀 Building Flutter Web..."
/vercel/fvm/bin/fvm flutter build web --release

echo "✅ Done!"