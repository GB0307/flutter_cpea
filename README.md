# cpea

A Template to start coding Clean Code Flutter projects.

## Getting Started

Clone the project and setup firebase with the flutterfire-cli!

## Packages

- **get:** 
    - Used for dependency injection.
- **go_router:**
    - Used for navigation, you can replace it with auto_route for a code generated strongly typed solution.
- **equatable:**
    - Used for type equality in models, failures, parameters and any other data classes.
- **flutter_bloc:**
    - State Management.
- **freezed:**
    - Used to generate serializable models.
- **dartz:** 
    - Functional helpers (mainly the Either class).
- **cloud_firestore:**
    - Firestore integration (can be removed).
- **firebase_auth:**
    - Firestore integration (can be removed).
- **flutterfire_ui:**
    - Firestore Interface (can be removed).

## Assets

The `assets` directory houses images, fonts, and any other files you want to
include with your application.

The `assets/images` directory contains [resolution-aware
images](https://flutter.dev/docs/development/ui/assets-and-images#resolution-aware).

## Localization

This project generates localized messages based on arb files found in
the `lib/src/localization` directory.

To support additional languages, please visit the tutorial on
[Internationalizing Flutter
apps](https://flutter.dev/docs/development/accessibility-and-localization/internationalization)
