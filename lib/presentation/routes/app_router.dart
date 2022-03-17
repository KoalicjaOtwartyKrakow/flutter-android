import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_android/presentation/volunteer/accomodation/accomodation_list_page.dart';
import 'package:flutter_android/presentation/volunteer/volunteer_page.dart';

import '../core/home_page.dart';
import '../host/apartment_added_success_page.dart';
import '../host/apartment_form_page.dart';
import '../host/host_page.dart';

part 'app_router.gr.dart';

@MaterialAutoRouter(
  replaceInRouteName: 'Page,Route',
  routes: <AutoRoute>[
    MaterialRoute(page: HomePage, initial: true),
    MaterialRoute(page: HostPage),
    MaterialRoute(page: ApartmentFormPage),
    MaterialRoute(page: ApartmentAddedSuccessPage),
    MaterialRoute(page: VolunteerPage),
    MaterialRoute(page: AccommodationListPage),
  ],
)
class AppRouter extends _$AppRouter {}
