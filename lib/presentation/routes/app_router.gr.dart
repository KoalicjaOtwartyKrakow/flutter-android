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
    ApartmentFormRoute.name: (routeData) {
      return MaterialPageX<dynamic>(
          routeData: routeData, child: const ApartmentFormPage());
    },
    ApartmentAddedSuccessRoute.name: (routeData) {
      return MaterialPageX<dynamic>(
          routeData: routeData, child: const ApartmentAddedSuccessPage());
    },
    VolunteerRoute.name: (routeData) {
      return MaterialPageX<dynamic>(
          routeData: routeData, child: const VolunteerPage());
    },
    AccommodationListRoute.name: (routeData) {
      return MaterialPageX<dynamic>(
          routeData: routeData, child: const AccommodationListPage());
    }
  };

  @override
  List<RouteConfig> get routes => [
        RouteConfig(HomeRoute.name, path: '/'),
        RouteConfig(HostRoute.name, path: '/host-page'),
        RouteConfig(ApartmentFormRoute.name, path: '/apartment-form-page'),
        RouteConfig(ApartmentAddedSuccessRoute.name,
            path: '/apartment-added-success-page'),
        RouteConfig(VolunteerRoute.name, path: '/volunteer-page'),
        RouteConfig(AccommodationListRoute.name,
            path: '/accommodation-list-page')
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
/// [ApartmentFormPage]
class ApartmentFormRoute extends PageRouteInfo<void> {
  const ApartmentFormRoute()
      : super(ApartmentFormRoute.name, path: '/apartment-form-page');

  static const String name = 'ApartmentFormRoute';
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
/// [VolunteerPage]
class VolunteerRoute extends PageRouteInfo<void> {
  const VolunteerRoute() : super(VolunteerRoute.name, path: '/volunteer-page');

  static const String name = 'VolunteerRoute';
}

/// generated route for
/// [AccommodationListPage]
class AccommodationListRoute extends PageRouteInfo<void> {
  const AccommodationListRoute()
      : super(AccommodationListRoute.name, path: '/accommodation-list-page');

  static const String name = 'AccommodationListRoute';
}
