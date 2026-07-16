# Building 711 Samui Map

## Prerequisites
- **Node.js** 18 or higher
- **Android SDK** (API level 30+)
- **Gradle** (included with Android SDK)
- **Java SDK** 11 or higher

## Build Steps

### 1. Install Dependencies
```bash
npm install
```

### 2. Sync Android Project
```bash
npm run android:sync
```

### 3. Build APK
```bash
npm run android:build
```

The compiled APK will be located at:
```
android/app/build/outputs/apk/release/app-release-unsigned.apk
```

### 4. Sign APK (for deployment)
```bash
./scripts/sign-apk.sh app-release-unsigned.apk
```

## Release Channels

The app is distributed through multiple channels:

- **Main Channel:** Stable releases for end users
- **Preview Channel:** Testing builds for beta testers
- **Nightly Channel:** Latest development builds (automated)

Release management is automated via GitHub Actions and hands.build integration.

## Development Build
For testing on a connected Android device:
```bash
npm run android:dev
```

## Troubleshooting

**APK not found:** Ensure you ran `npm run android:sync` first
**Gradle errors:** Check Android SDK path in `local.properties`
**Java version:** Verify `java -version` returns 11+

See the main [README.md](./index.md) for more information.
