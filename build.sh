#!/bin/bash
set -e

PROJECT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
cd "$PROJECT_DIR"

# Verify Android SDK is available
if [ -z "$ANDROID_HOME" ]; then
  echo "❌ ANDROID_HOME not set. Install Android SDK and set ANDROID_HOME env var."
  echo "   https://developer.android.com/studio/install"
  exit 1
fi

if [ ! -d "$ANDROID_HOME" ]; then
  echo "❌ ANDROID_HOME directory not found: $ANDROID_HOME"
  exit 1
fi

echo "📦 Building 711 Samui Map Android APK..."
echo "   Project: $PROJECT_DIR"
echo "   Android SDK: $ANDROID_HOME"
echo ""

# Build based on argument
BUILD_TYPE="${1:-release}"

if [ "$BUILD_TYPE" = "debug" ]; then
  echo "🔨 Building debug APK..."
  cd android
  ./gradlew assembleDebug
  APK_PATH="app/build/outputs/apk/debug/app-debug.apk"
  echo "✅ Debug APK ready at: $APK_PATH"
elif [ "$BUILD_TYPE" = "release" ]; then
  echo "🔨 Building release APK..."
  cd android
  ./gradlew assembleRelease
  APK_PATH="app/build/outputs/apk/release/app-release.apk"
  echo "✅ Release APK ready at: $APK_PATH"
  echo "   Next: Sign APK or upload unsigned to hands.build"
else
  echo "Usage: $0 [debug|release]"
  exit 1
fi

# Verify APK exists
if [ -f "$APK_PATH" ]; then
  SIZE=$(ls -lh "$APK_PATH" | awk '{print $5}')
  echo "   Size: $SIZE"
else
  echo "❌ APK not found at $APK_PATH"
  exit 1
fi
