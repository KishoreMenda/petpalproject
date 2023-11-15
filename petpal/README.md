# petpal

A new Flutter project.

## Getting Started

This project is a starting point for a Flutter application.

A few resources to get you started if this is your first Flutter project:

- [Lab: Write your first Flutter app](https://docs.flutter.dev/get-started/codelab)
- [Cookbook: Useful Flutter samples](https://docs.flutter.dev/cookbook)

For help getting started with Flutter development, view the
[online documentation](https://docs.flutter.dev/), which offers tutorials,
samples, guidance on mobile development, and a full API reference.


## add firebase authentication to your flutter project
 - From the root of your Flutter project, run the following command to install the plugin:
   - $ dart pub global activate flutterfire_cli
- Configure firebase project to the flutter app
    - flutterfire configure --project= Project ID 
- Firebase Authentication on Flutter
  - $flutter pub add firebase_core
  - $flutter pub add firebase_auth
  - import 'package:firebase_auth/firebase_auth.dart';

## google sign in authentication
 - $ flutter pub add google_sign_in

dependencies:
  google_sign_in: ^6.1.5