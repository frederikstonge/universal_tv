# Universal TV

A cross-platform IPTV player built with Flutter. Watch live TV, movies, and series from your IPTV providers on any device.

---

## Supported Platforms

| Platform | Status |
|----------|--------|
| Android Phone | :white_check_mark: |
| Android TV | :white_check_mark: |
| iPhone | :white_check_mark: |
| iPad | :white_check_mark: |
| macOS | :white_check_mark: |
| Windows | :white_check_mark: |
| Linux | :white_check_mark: |

The UI adapts automatically — touch-friendly on mobile, keyboard and remote-friendly on desktop and TV.

---

## Protocols

<details>
<summary><strong>Xtream Codes</strong></summary>

Connect using your server URL, username, and password. Supports:

- Live channels with categories
- Video on demand (movies)
- TV series with seasons and episodes
- Electronic Program Guide (EPG)
- Server info and authentication
</details>

<details>
<summary><strong>M3U / M3U8 Playlists</strong></summary>

Load remote or local `.m3u` / `.m3u8` playlists. The parser handles:

- `#EXTINF` metadata (name, group, logo, tvg-id)
- `#EXT-X-*` extended attributes
- Paginated playlist URLs using `{page}` tokens
- Multiple playlist URLs per provider
</details>

<details>
<summary><strong>XMLTV EPG</strong></summary>

Add standalone XMLTV sources to get program guide data for your channels, independent of your stream provider.
</details>

---

## Features

<details>
<summary><strong>Live TV</strong></summary>

Browse channels by category, view the program guide, and stream live broadcasts.
</details>

<details>
<summary><strong>Movies</strong></summary>

Browse your provider's movie catalog with cover art, metadata from TMDB, and direct playback.
</details>

<details>
<summary><strong>TV Shows</strong></summary>

Browse series, pick a season and episode, and play. Metadata is enriched via TMDB when available.
</details>

<details>
<summary><strong>Casting</strong></summary>

Cast streams to Chromecast, AirPlay, and DLNA devices on your network.
</details>

<details>
<summary><strong>Multi-Provider</strong></summary>

Add multiple IPTV providers (Xtream, M3U, or XMLTV) and switch between them. Configurations persist across sessions.
</details>

---

## Getting Started

### Prerequisites

- [Flutter SDK](https://flutter.dev/docs/get-started/install) (stable channel)
- Platform-specific toolchains (Xcode for iOS/macOS, Android Studio for Android, etc.)

### Setup

```bash
# Clone the repo
git clone https://github.com/your-username/universal_tv.git
cd universal_tv

# Install dependencies
flutter pub get

# Generate serialization code
dart run build_runner build --delete-conflicting-outputs

# Run on your target platform
flutter run
```

### Adding a Provider

1. Open the app and go to **Settings**
2. Add a new provider:
   - **Xtream Codes** — enter server URL, username, and password
   - **M3U** — enter one or more playlist URLs
   - **XMLTV** — enter an EPG URL
3. Save and start browsing

---

## Tech Stack

| Layer | Library |
|-------|---------|
| UI components | [Forui](https://pub.dev/packages/forui) |
| State management | [flutter_bloc](https://pub.dev/packages/flutter_bloc) + [hydrated_bloc](https://pub.dev/packages/hydrated_bloc) |
| Navigation | [go_router](https://pub.dev/packages/go_router) |
| Video playback | [media_kit](https://pub.dev/packages/media_kit) |
| Casting | [dart_cast](https://pub.dev/packages/dart_cast) |
| Xtream Codes | [xtream_code_client](https://pub.dev/packages/xtream_code_client) |
| HTTP | [Dio](https://pub.dev/packages/dio) |
| Serialization | [dart_mappable](https://pub.dev/packages/dart_mappable) |

---

## Project Structure

```
lib/
├── main.dart                # Entry point
├── bootstrapper.dart        # Dependency initialization
├── app.dart                 # Root widget
├── blocs/                   # State management (cubits)
│   ├── iptv_service/        # Central IPTV service
│   ├── settings/            # Provider config (persisted)
│   ├── live/                # Live channels state
│   ├── movies/              # Movies state
│   ├── tv_shows/            # TV shows state
│   ├── cast/                # Casting state
│   └── ...
├── models/                  # Data models
│   ├── m3u/                 # M3U-specific models
│   └── tmdb/                # TMDB metadata models
├── parsers/                 # M3U playlist parser
├── repositories/            # Data sources (Xtream, M3U, XMLTV, TMDB)
├── presentation/            # UI layer
│   ├── pages/               # Screens (live, movies, tv_shows, players, settings)
│   ├── shells/              # Navigation shells
│   └── components/          # Shared widgets
├── router/                  # GoRouter config
└── theme/                   # Theming and platform detection
```

---

## License

This project is for personal use.
