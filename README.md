# flutter_android

A new Flutter project.

## Getting Started

This project is a starting point for a Flutter application.

A few resources to get you started if this is your first Flutter project:

- [Lab: Write your first Flutter app](https://flutter.dev/docs/get-started/codelab)
- [Cookbook: Useful Flutter samples](https://flutter.dev/docs/cookbook)

For help getting started with Flutter, view our
[online documentation](https://flutter.dev/docs), which offers tutorials,
samples, guidance on mobile development, and a full API reference.


## Setup

### Install dependencies:

`flutter pub get`

---

### Run code generation:

`flutter pub run build_runner build --delete-conflicting-outputs`

...or have it on while you code:

`flutter pub run build_runner watch --delete-conflicting-outputs`

This will generate files with `*.g.dart` or `*.gr.dart` extensions

---

### Run:
`flutter run`


If something is not updating after restart:

`flutter clean && flutter pub get && flutter run`

## Tutorial/FAQ
Update this section with any encountered issues and solutions



### 'RouteInformationBlablabla' error during build
`flutter upgrade` and check if `flutter --version` is at least `2.8.1`



### Navigation
Navigating from `MyPage` to `AnotherPage` (auto_router replaces Page with Route in names, see presentation/routes/app_router.dart):

`AutoRouter.of(context).replace(AnotherRoute)`