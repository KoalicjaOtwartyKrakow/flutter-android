import 'package:flutter/material.dart';

import '../routes/app_router.dart';

class MyApp extends StatelessWidget {
  MyApp({Key? key}) : super(key: key);
  final AppRouter _appRouter = AppRouter();

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routeInformationProvider: _appRouter.routeInfoProvider(),
      routerDelegate: _appRouter.delegate(),
      routeInformationParser: _appRouter.defaultRouteParser(),
      debugShowCheckedModeBanner: false,
      title: 'Koalicja Otwarty Kraków',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        inputDecorationTheme: const InputDecorationTheme(
          hintStyle: TextStyle(
            fontSize: 12,
          ),
          contentPadding: EdgeInsets.fromLTRB(
            2,
            0,
            2,
            0,
          ),
          border: UnderlineInputBorder(),
        ),
      ),
    );
  }
}
