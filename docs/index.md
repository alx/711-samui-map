# 711 Samui Map

**An offline-first map application showcasing all 7-Eleven stores on Koh Samui, Thailand.**

## Features
- 📍 98 7-Eleven locations with precise coordinates
- 🗺️ Offline-capable map interface
- 🔍 Search and filter stores
- 📱 Works on Android 11+
- ⚡ Fast, lightweight (~14MB)

## Installation

### From hands.build
Download the app from our release channels:
- **Main Channel:** Stable production releases
- **Preview Channel:** Testing new features before main release
- **Nightly Channel:** Latest development builds

### From Source
See [BUILDING.md](./BUILDING.md) for detailed build instructions.

## Development

This is a Capacitor-based wrapper around a Hugo-generated offline map interface. The app bundles:
- Hugo static site (offline map UI)
- GeoJSON store location data (98 locations)
- Capacitor runtime for Android

### Requirements
- Node.js 18+
- Android SDK
- Gradle

### Quick Start
```bash
npm install
npm run android:build
```

See [BUILDING.md](./BUILDING.md) for complete build instructions.

## License
MIT License - See [LICENSE](../LICENSE) file

## Architecture
- **Frontend:** Hugo + Leaflet.js (offline map)
- **Wrapper:** Capacitor (Android bridge)
- **Data:** GeoJSON (store locations)
- **CI/CD:** GitHub Actions (automated F-Droid builds)

## Contributing
Contributions are welcome! Please feel free to submit issues or pull requests.

## About
**Project:** 711 Samui Map  
**Version:** 1.0.0  
**Package:** com.girardavila.samui711map  
**Repository:** https://github.com/alx/711-samui-map

---
*For app updates and issue tracking, visit the [GitHub repository](https://github.com/alx/711-samui-map)*
