# flutter_cine
TO-DO:
[build badge]  [coverage badge]

A Flutter app that browses popular movies, searches the catalog,
and saves favorites locally. Built to showcase clean architecture,
state management, testing, and CI/CD.

## Features
- Browse popular movies with infinite scroll
- Search with debounced input
- Movie detail screen with cached images
- Save and remove favorites (local persistence)
- Graceful loading, empty, and error states

## Tech stack
- Flutter & Dart
- State management: BLoC
- Architecture: Clean Architecture (data / domain / presentation)
- Networking: Dio
- Local storage: Hive
- Testing: unit & widget tests, mocktail
- CI: GitHub Actions (analyze, test, coverage)

## Architecture
The app follows Clean Architecture. The domain layer holds pure
business rules and depends on nothing; data and presentation depend
on domain, never the other way around. This keeps the core testable
and framework-independent.

## Getting started
    flutter pub get
    # add your TMDB API key to .env
    flutter run

## Running tests
    flutter test --coverage

## Screenshots
TO-DO:
(add screenshots or a gif of the app here)
