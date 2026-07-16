# F-Droid Submission Guide

This document outlines the process for submitting the 711 Samui Map to the F-Droid registry.

## Overview

F-Droid is an open-source app repository for Android. Once approved, your app will be automatically built from source and hosted on their platform with automatic updates on every release.

## Submission Steps

### 1. Fork F-Droid Repository

```bash
# Go to https://github.com/f-droid/fdroiddata and fork it
# Clone your fork
git clone https://github.com/YOUR_USERNAME/fdroiddata.git
cd fdroiddata
```

### 2. Add App Metadata

Create metadata file: `metadata/com.girardavila.samui711map.yml`

```yaml
Categories:
  - Maps
License: MIT
WebSite: https://711-samui-map.girard-davila.net
SourceCode: https://github.com/alx/711-samui-map
IssueTracker: https://github.com/alx/711-samui-map/issues
Changelog: https://github.com/alx/711-samui-map/releases

AutoName: 711 Samui Map

Description: |
  Interactive Android app for finding all 7-Eleven convenience stores on Koh Samui, Thailand.
  
  Features:
  • Interactive map with 98 verified store locations
  • Browse by area (Bophut, Lamai, Maenam, Nathon, and more)
  • Search stores by name or location
  • Direct navigation to OsmAnd or Google Maps
  • Lightweight (~14 MB)
  • Offline-ready with map caching
  • No tracking, analytics, or ads
  • Fully open source (MIT License)

Builds:
  - versionName: '1.0.1'
    versionCode: 101
    commit: v1.0.1
    subdir: android
    gradle:
      - yes
```

### 3. Test Build Locally (Optional)

```bash
# Install fdroidserver: https://f-droid.org/docs/Installing_the_Server/
# Run a test build in your clone
cd /path/to/711-samui-map
fdroid build -v com.girardavila.samui711map
```

### 4. Submit Pull Request

1. Commit your changes to your fork
2. Create a pull request to https://github.com/f-droid/fdroiddata
3. Fill in the PR description with:
   - App name: 711 Samui Map
   - Package: com.girardavila.samui711map
   - License: MIT
   - Brief description of the app

### 5. Review & Approval

F-Droid maintainers will review your submission:
- Check metadata for accuracy
- Verify source code is available
- Test building from source
- Approve and merge (typically 1-2 weeks)

### 6. First Release

Once approved, F-Droid will:
1. Build the app from your source code
2. Sign with F-Droid's signing key
3. Host the APK on their repository
4. Make available to all F-Droid users

## Automatic Updates

After initial approval, your app will **automatically update** on F-Droid whenever you:
1. Push a git tag: `git tag v1.0.2`
2. Push to main: `git push origin main && git push origin v1.0.2`
3. F-Droid syncs your repository and builds automatically

No manual uploads or re-submissions needed!

## Key Points

- **Build Process**: F-Droid builds from your public source code, not pre-built APKs
- **Signing**: F-Droid signs the app with their key (not yours)
- **Distribution**: Your app available to millions of F-Droid users
- **Maintenance**: Updates happen automatically on git tags
- **Timeline**: Initial submission 1-2 weeks, subsequent updates same day

## Metadata Fields Explained

- **Categories**: Maps (for categorization on F-Droid)
- **License**: MIT (your open-source license)
- **WebSite**: https://711-samui-map.girard-davila.net (your documentation site)
- **SourceCode**: https://github.com/alx/711-samui-map (public repo)
- **IssueTracker**: GitHub Issues for bug reports
- **Changelog**: GitHub Releases page
- **AutoName**: App display name
- **Description**: Full description with features (max ~500 chars)
- **Builds**: Build configuration for this version

## Build Configuration

```yaml
Builds:
  - versionName: '1.0.1'      # Display version (v1.0.1)
    versionCode: 101          # Internal version code (auto-incremented)
    commit: v1.0.1            # Git tag or commit to build from
    subdir: android           # Where Gradle is located
    gradle:
      - yes                   # Use default build flavor
```

## GitHub Actions Integration

Your repository already has GitHub Actions configured for F-Droid builds. Once approved:
1. Tag commits: `git tag v1.0.2`
2. Push tag: `git push origin v1.0.2`
3. GitHub Actions automatically builds the APK
4. APK available on GitHub Releases
5. F-Droid syncs your repo and builds automatically

## Current App Status

| Property | Value |
|----------|-------|
| Name | 711 Samui Map |
| Package | com.girardavila.samui711map |
| Version | 1.0.1 |
| License | MIT |
| Source | https://github.com/alx/711-samui-map |
| Min API | 24 (Android 7.0) |
| Target API | 34 (Android 14) |
| Size | ~14 MB |

## Resources

- F-Droid Submission Guidelines: https://f-droid.org/docs/Submitting_an_Application/
- F-Droid Metadata Format: https://f-droid.org/docs/App_Metadata_Specification/
- F-Droid Build System: https://f-droid.org/docs/Build_Server/
- Example Metadata: https://github.com/f-droid/fdroiddata/blob/master/metadata/

## Questions?

- F-Droid Docs: https://f-droid.org/docs/
- F-Droid Forum: https://forum.f-droid.org/
- GitHub Issues: https://github.com/alx/711-samui-map/issues
