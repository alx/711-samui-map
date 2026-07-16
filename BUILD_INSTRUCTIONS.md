# 711 Samui Map Android APK Build Instructions

## Environment Setup

This Capacitor project requires:
1. **Android SDK** (API 34, configured via `ANDROID_HOME` env var)
2. **Java 21+** (available)
3. **Gradle 8.14.3+** (will auto-download)

## Prerequisites

```bash
# Install Android SDK (if not already installed)
# On macOS: brew install android-sdk
# On Linux: Follow https://developer.android.com/studio/install
# On Windows: Download Android Studio or SDK tools

# Set ANDROID_HOME environment variable
export ANDROID_HOME=$HOME/Android/Sdk
export PATH=$PATH:$ANDROID_HOME/cmdline-tools/bin:$ANDROID_HOME/platform-tools
```

## Build APK

### Debug APK (for testing)
```bash
cd ~/code/samui-android-app/android
./gradlew assembleDebug
# Output: android/app/build/outputs/apk/debug/app-debug.apk
```

### Release APK (for distribution via hands.build)
```bash
cd ~/code/samui-android-app/android
./gradlew assembleRelease
# Output: android/app/build/outputs/apk/release/app-release.apk
```

## App Details
- **Name**: 711 Samui Map
- **Package ID**: com.girardavila.samui711map
- **Version**: 1.0.0
- **Offline Capable**: Yes (map tiles require internet, but data is cached)

## Notes
- The app bundles an interactive Leaflet map with 65 7-Eleven store locations on Koh Samui
- Geolocation & routing (OSRM) work with internet
- Map tiles are fetched from OpenStreetMap CDN
- To sign release APK for Google Play: add keystore config to android/app/build.gradle
