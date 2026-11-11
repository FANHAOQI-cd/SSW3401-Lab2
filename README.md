# SSW3401 Lab 2: Flutter GUI Basics

A Flutter interface exercise based on dbestech's
[Flutter Course for Absolute Beginners](https://www.youtube.com/watch?v=DsTMhjaRQws),
covering the tutorial through the image display stage at approximately 03:03:00.

## Features

- Home screen with a greeting, Book Tickets heading, and a local image.
- Search icon / Empty space placeholder row.
- Home, Search, Tickets, and Profile bottom navigation.
- Selected-tab state managed with StatefulWidget and setState.
- Shared text styles and bundled Fluent icons.

## Run

Tested with Flutter 3.47.8 and Dart 3.13.7.

```sh
flutter pub get
flutter run
```

Android and web platform files are included. For a browser:

```sh
flutter run -d chrome
```

## Check and build

```sh
flutter analyze
flutter test
flutter build apk --debug
```

## Project structure

- `lib/main.dart`: application entry point.
- `lib/screens/`: Home and bottom navigation.
- `lib/utils/`: shared styles.
- `assets/images/`: bundled image.
- `test/`: widget and navigation tests.
- `third_party/fluentui_icons/`: tutorial icon compatibility subset.

The local icon package preserves the original font files and icon code points,
using direct IconData constants for compatibility with current Flutter.

See [THIRD_PARTY_NOTICES.md](THIRD_PARTY_NOTICES.md) for tutorial and asset credits.
