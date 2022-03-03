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
    ApartmentRoute.name: (routeData) {
      return MaterialPageX<dynamic>(
          routeData: routeData, child: const ApartmentPage());
    },
    ApartmentFormRoute.name: (routeData) {
      return MaterialPageX<dynamic>(
          routeData: routeData, child: const ApartmentFormPage());
    },
    ApartmentAddedSuccessRoute.name: (routeData) {
      return MaterialPageX<dynamic>(
          routeData: routeData, child: const ApartmentAddedSuccessPage());
    }
  };

  @override
  List<RouteConfig> get routes => [
        RouteConfig(HomeRoute.name, path: '/'),
        RouteConfig(ApartmentRoute.name, path: '/apartment-page'),
        RouteConfig(ApartmentFormRoute.name, path: '/apartment-form-page'),
        RouteConfig(ApartmentAddedSuccessRoute.name,
            path: '/apartment-added-success-page')
      ];
}

/// generated route for
/// [HomePage]
class HomeRoute extends PageRouteInfo<void> {
  const HomeRoute() : super(HomeRoute.name, path: '/');

  static const String name = 'HomeRoute';
}

/// generated route for
/// [ApartmentPage]
class ApartmentRoute extends PageRouteInfo<void> {
  const ApartmentRoute() : super(ApartmentRoute.name, path: '/apartment-page');

  static const String name = 'ApartmentRoute';
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
