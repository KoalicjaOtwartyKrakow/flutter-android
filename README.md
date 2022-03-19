# flutter_android


## Getting Started

### Do this:

This project is a starting point for a Flutter application.

A few resources to get you started if this is your first Flutter project:

- [Lab: Write your first Flutter app](https://flutter.dev/docs/get-started/codelab)
- [Cookbook: Useful Flutter samples](https://flutter.dev/docs/cookbook)

For help getting started with Flutter, view our
[online documentation](https://flutter.dev/docs), which offers tutorials,
samples, guidance on mobile development, and a full API reference.


### ...then consult with Jesus
He has a Youtube channel:
https://www.youtube.com/c/ResoCoder


## Workflow

Add new features on `feature/<feature_name>` branches, fix bugs on `bugfix/`, refactor on `refactor/`

Make Pull Requests to `develop` and assign somebody to Code Review

Don't push to `main`


## Setup

### Install dependencies:

`flutter pub get`

---

### Run code generation (always do it before running the app):

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


### Building views
Build views inside `presentation/<view_name>/<view_name>.dart`, keep `Widget build()` functions short by splitting it into separate widgets and keeping those inside `presentation/<view_name>/widgets/<widget_name>`


### Managing state
Avoid using `StatefulWidget` where possible, you should use the `bloc` package with `freezed` unions. Use existing blocs at `lib/application/<bloc_name>` for reference on how to create a bloc.


### Navigation
Navigating from `MyPage` to `AnotherPage` (auto_router replaces Page with Route in names, see presentation/routes/app_router.dart):

`AutoRouter.of(context).replace(AnotherRoute())`


### 'RouteInformationBlablabla' error during build
`flutter upgrade` and check if `flutter --version` is at least `2.8.1`
