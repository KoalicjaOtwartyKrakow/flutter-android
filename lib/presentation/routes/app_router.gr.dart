// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************
//
// ignore_for_file: type=lint

part of 'app_router.dart';

class _$AppRouter extends RootStackRouter {
  _$AppRouter([GlobalKey<NavigatorState>? navigatorKey]) : super(navigatorKey);

  @override
  final Map<String, PageFactory> pagesMap = {
    HomeRoute.name: (routeData) {
      return MaterialPageX<dynamic>(
          routeData: routeData, child: const HomePage());
    },
    HostRoute.name: (routeData) {
      return MaterialPageX<dynamic>(
          routeData: routeData, child: const HostPage());
    },
    GuestRoute.name: (routeData) {
      return MaterialPageX<dynamic>(
          routeData: routeData, child: const GuestPage());
    },
    ApartmentFormRoute.name: (routeData) {
      return MaterialPageX<dynamic>(
          routeData: routeData, child: const ApartmentFormPage());
    },
    GuestFormRoute.name: (routeData) {
      return MaterialPageX<dynamic>(
          routeData: routeData, child: const GuestFormPage());
    },
    ApartmentAddedSuccessRoute.name: (routeData) {
      return MaterialPageX<dynamic>(
          routeData: routeData, child: const ApartmentAddedSuccessPage());
    },
    GuestFormSuccessRoute.name: (routeData) {
      return MaterialPageX<dynamic>(
          routeData: routeData, child: const GuestFormSuccessPage());
    },
    GuestFormFailureRoute.name: (routeData) {
      return MaterialPageX<dynamic>(
          routeData: routeData, child: const GuestFormFailurePage());
    }
  };

  @override
  List<RouteConfig> get routes => [
        RouteConfig(HomeRoute.name, path: '/'),
        RouteConfig(HostRoute.name, path: '/host-page'),
        RouteConfig(GuestRoute.name, path: '/guest-page'),
        RouteConfig(ApartmentFormRoute.name, path: '/apartment-form-page'),
        RouteConfig(GuestFormRoute.name, path: '/guest-form-page'),
        RouteConfig(ApartmentAddedSuccessRoute.name,
            path: '/apartment-added-success-page'),
        RouteConfig(GuestFormSuccessRoute.name,
            path: '/guest-form-success-page'),
        RouteConfig(GuestFormFailureRoute.name,
            path: '/guest-form-failure-page')
      ];
}

/// generated route for
/// [HomePage]
class HomeRoute extends PageRouteInfo<void> {
  const HomeRoute() : super(HomeRoute.name, path: '/');

  static const String name = 'HomeRoute';
}

/// generated route for
/// [HostPage]
class HostRoute extends PageRouteInfo<void> {
  const HostRoute() : super(HostRoute.name, path: '/host-page');

  static const String name = 'HostRoute';
}

/// generated route for
/// [GuestPage]
class GuestRoute extends PageRouteInfo<void> {
  const GuestRoute() : super(GuestRoute.name, path: '/guest-page');

  static const String name = 'GuestRoute';
}

/// generated route for
/// [ApartmentFormPage]
class ApartmentFormRoute extends PageRouteInfo<void> {
  const ApartmentFormRoute()
      : super(ApartmentFormRoute.name, path: '/apartment-form-page');

  static const String name = 'ApartmentFormRoute';
}

/// generated route for
/// [GuestFormPage]
class GuestFormRoute extends PageRouteInfo<void> {
  const GuestFormRoute() : super(GuestFormRoute.name, path: '/guest-form-page');

  static const String name = 'GuestFormRoute';
}

/// generated route for
/// [ApartmentAddedSuccessPage]
class ApartmentAddedSuccessRoute extends PageRouteInfo<void> {
  const ApartmentAddedSuccessRoute()
      : super(ApartmentAddedSuccessRoute.name,
            path: '/apartment-added-success-page');

  static const String name = 'ApartmentAddedSuccessRoute';
}

/// generated route for
/// [GuestFormSuccessPage]
class GuestFormSuccessRoute extends PageRouteInfo<void> {
  const GuestFormSuccessRoute()
      : super(GuestFormSuccessRoute.name, path: '/guest-form-success-page');

  static const String name = 'GuestFormSuccessRoute';
}

/// generated route for
/// [GuestFormFailurePage]
class GuestFormFailureRoute extends PageRouteInfo<void> {
  const GuestFormFailureRoute()
      : super(GuestFormFailureRoute.name, path: '/guest-form-failure-page');

  static const String name = 'GuestFormFailureRoute';
}
