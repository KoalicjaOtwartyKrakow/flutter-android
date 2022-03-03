import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import '../apartment/apartment_added_success_page.dart';
import '../apartment/apartment_form_page.dart';
import '../apartment/apartment_page.dart';
import '../core/home_page.dart';

part 'app_router.gr.dart';

@MaterialAutoRouter(
  replaceInRouteName: 'Page,Route',
  routes: <AutoRoute>[
    MaterialRoute(page: HomePage, initial: true),
    MaterialRoute(page: ApartmentPage),
    MaterialRoute(page: ApartmentFormPage),
    MaterialRoute(page: ApartmentAddedSuccessPage),
  ],
)
class AppRouter extends _$AppRouter {}
